/* Machine-generated using LiteX gen */
module top(
	input serial_rx,
	output reg serial_tx,
	input jtag_tck,
	input jtag_tdi,
	input jtag_tms,
	output jtag_tdo,
	input clk100,
	input rst_n,
	output [12:0] ddram_a,
	output [2:0] ddram_ba,
	output ddram_ras_n,
	output ddram_cas_n,
	output ddram_we_n,
	output ddram_cs_n,
	output [1:0] ddram_dm,
	input [15:0] ddram_dq,
	input [1:0] ddram_dqs_p,
	output ddram_clk_p,
	output ddram_cke,
	output ddram_odt,
	output ddram_reset_n,
	output user_led0,
	output eth_clocks0_tx,
	input eth_clocks0_rx,
	output eth0_rst_n,
	input eth0_mdio,
	output eth0_mdc,
	input eth0_rx_ctl,
	input [3:0] eth0_rx_data,
	output eth0_tx_ctl,
	output [3:0] eth0_tx_data,
	output ice_creset,
	output ice_csn,
	output ice_sck,
	output ice_mosi,
	output ice_user_clk,
	output maxusb_csn,
	output maxusb_sck,
	output maxusb_mosi,
	input maxusb_miso,
	input maxusb_irq
);

wire ethernetsoc_ctrl_reset_reset_re;
wire ethernetsoc_ctrl_reset_reset_r;
reg ethernetsoc_ctrl_reset_reset_w = 1'd0;
reg [31:0] ethernetsoc_ctrl_storage_full = 32'd305419896;
wire [31:0] ethernetsoc_ctrl_storage;
reg ethernetsoc_ctrl_re = 1'd0;
wire [31:0] ethernetsoc_ctrl_bus_errors_status;
wire ethernetsoc_ctrl_reset;
wire ethernetsoc_ctrl_bus_error;
reg [31:0] ethernetsoc_ctrl_bus_errors = 32'd0;
wire ethernetsoc_vexriscv_reset;
wire [29:0] ethernetsoc_vexriscv_ibus_adr;
wire [31:0] ethernetsoc_vexriscv_ibus_dat_w;
wire [31:0] ethernetsoc_vexriscv_ibus_dat_r;
wire [3:0] ethernetsoc_vexriscv_ibus_sel;
wire ethernetsoc_vexriscv_ibus_cyc;
wire ethernetsoc_vexriscv_ibus_stb;
wire ethernetsoc_vexriscv_ibus_ack;
wire ethernetsoc_vexriscv_ibus_we;
wire [2:0] ethernetsoc_vexriscv_ibus_cti;
wire [1:0] ethernetsoc_vexriscv_ibus_bte;
reg ethernetsoc_vexriscv_ibus_err = 1'd0;
wire [29:0] ethernetsoc_vexriscv_dbus_adr;
wire [31:0] ethernetsoc_vexriscv_dbus_dat_w;
wire [31:0] ethernetsoc_vexriscv_dbus_dat_r;
wire [3:0] ethernetsoc_vexriscv_dbus_sel;
wire ethernetsoc_vexriscv_dbus_cyc;
wire ethernetsoc_vexriscv_dbus_stb;
wire ethernetsoc_vexriscv_dbus_ack;
wire ethernetsoc_vexriscv_dbus_we;
wire [2:0] ethernetsoc_vexriscv_dbus_cti;
wire [1:0] ethernetsoc_vexriscv_dbus_bte;
reg ethernetsoc_vexriscv_dbus_err = 1'd0;
reg ethernetsoc_vexriscv_i_err = 1'd0;
reg ethernetsoc_vexriscv_d_err = 1'd0;
reg [31:0] ethernetsoc_vexriscv_interrupt = 32'd0;
wire ethernetsoc_vexriscv_jtag_tdo;
wire ethernetsoc_vexriscv_jtag_tdi;
wire ethernetsoc_vexriscv_jtag_tms;
wire ethernetsoc_vexriscv_jtag_tck;
wire [29:0] ethernetsoc_rom_bus_adr;
wire [31:0] ethernetsoc_rom_bus_dat_w;
wire [31:0] ethernetsoc_rom_bus_dat_r;
wire [3:0] ethernetsoc_rom_bus_sel;
wire ethernetsoc_rom_bus_cyc;
wire ethernetsoc_rom_bus_stb;
reg ethernetsoc_rom_bus_ack = 1'd0;
wire ethernetsoc_rom_bus_we;
wire [2:0] ethernetsoc_rom_bus_cti;
wire [1:0] ethernetsoc_rom_bus_bte;
reg ethernetsoc_rom_bus_err = 1'd0;
wire [12:0] ethernetsoc_rom_adr;
wire [31:0] ethernetsoc_rom_dat_r;
wire [29:0] ethernetsoc_sram_bus_adr;
wire [31:0] ethernetsoc_sram_bus_dat_w;
wire [31:0] ethernetsoc_sram_bus_dat_r;
wire [3:0] ethernetsoc_sram_bus_sel;
wire ethernetsoc_sram_bus_cyc;
wire ethernetsoc_sram_bus_stb;
reg ethernetsoc_sram_bus_ack = 1'd0;
wire ethernetsoc_sram_bus_we;
wire [2:0] ethernetsoc_sram_bus_cti;
wire [1:0] ethernetsoc_sram_bus_bte;
reg ethernetsoc_sram_bus_err = 1'd0;
wire [11:0] ethernetsoc_sram_adr;
wire [31:0] ethernetsoc_sram_dat_r;
reg [3:0] ethernetsoc_sram_we = 4'd0;
wire [31:0] ethernetsoc_sram_dat_w;
reg [13:0] ethernetsoc_interface_adr = 14'd0;
reg ethernetsoc_interface_we = 1'd0;
reg [7:0] ethernetsoc_interface_dat_w = 8'd0;
wire [7:0] ethernetsoc_interface_dat_r;
wire [29:0] ethernetsoc_bus_wishbone_adr;
wire [31:0] ethernetsoc_bus_wishbone_dat_w;
reg [31:0] ethernetsoc_bus_wishbone_dat_r = 32'd0;
wire [3:0] ethernetsoc_bus_wishbone_sel;
wire ethernetsoc_bus_wishbone_cyc;
wire ethernetsoc_bus_wishbone_stb;
reg ethernetsoc_bus_wishbone_ack = 1'd0;
wire ethernetsoc_bus_wishbone_we;
wire [2:0] ethernetsoc_bus_wishbone_cti;
wire [1:0] ethernetsoc_bus_wishbone_bte;
reg ethernetsoc_bus_wishbone_err = 1'd0;
reg [1:0] ethernetsoc_counter = 2'd0;
reg [31:0] ethernetsoc_uart_phy_storage_full = 32'd6597069;
wire [31:0] ethernetsoc_uart_phy_storage;
reg ethernetsoc_uart_phy_re = 1'd0;
wire ethernetsoc_uart_phy_sink_valid;
reg ethernetsoc_uart_phy_sink_ready = 1'd0;
wire ethernetsoc_uart_phy_sink_first;
wire ethernetsoc_uart_phy_sink_last;
wire [7:0] ethernetsoc_uart_phy_sink_payload_data;
reg ethernetsoc_uart_phy_uart_clk_txen = 1'd0;
reg [31:0] ethernetsoc_uart_phy_phase_accumulator_tx = 32'd0;
reg [7:0] ethernetsoc_uart_phy_tx_reg = 8'd0;
reg [3:0] ethernetsoc_uart_phy_tx_bitcount = 4'd0;
reg ethernetsoc_uart_phy_tx_busy = 1'd0;
reg ethernetsoc_uart_phy_source_valid = 1'd0;
wire ethernetsoc_uart_phy_source_ready;
reg ethernetsoc_uart_phy_source_first = 1'd0;
reg ethernetsoc_uart_phy_source_last = 1'd0;
reg [7:0] ethernetsoc_uart_phy_source_payload_data = 8'd0;
reg ethernetsoc_uart_phy_uart_clk_rxen = 1'd0;
reg [31:0] ethernetsoc_uart_phy_phase_accumulator_rx = 32'd0;
wire ethernetsoc_uart_phy_rx;
reg ethernetsoc_uart_phy_rx_r = 1'd0;
reg [7:0] ethernetsoc_uart_phy_rx_reg = 8'd0;
reg [3:0] ethernetsoc_uart_phy_rx_bitcount = 4'd0;
reg ethernetsoc_uart_phy_rx_busy = 1'd0;
wire ethernetsoc_uart_rxtx_re;
wire [7:0] ethernetsoc_uart_rxtx_r;
wire [7:0] ethernetsoc_uart_rxtx_w;
wire ethernetsoc_uart_txfull_status;
wire ethernetsoc_uart_rxempty_status;
wire ethernetsoc_uart_irq;
wire ethernetsoc_uart_tx_status;
reg ethernetsoc_uart_tx_pending = 1'd0;
wire ethernetsoc_uart_tx_trigger;
reg ethernetsoc_uart_tx_clear = 1'd0;
reg ethernetsoc_uart_tx_old_trigger = 1'd0;
wire ethernetsoc_uart_rx_status;
reg ethernetsoc_uart_rx_pending = 1'd0;
wire ethernetsoc_uart_rx_trigger;
reg ethernetsoc_uart_rx_clear = 1'd0;
reg ethernetsoc_uart_rx_old_trigger = 1'd0;
wire ethernetsoc_uart_eventmanager_status_re;
wire [1:0] ethernetsoc_uart_eventmanager_status_r;
reg [1:0] ethernetsoc_uart_eventmanager_status_w = 2'd0;
wire ethernetsoc_uart_eventmanager_pending_re;
wire [1:0] ethernetsoc_uart_eventmanager_pending_r;
reg [1:0] ethernetsoc_uart_eventmanager_pending_w = 2'd0;
reg [1:0] ethernetsoc_uart_eventmanager_storage_full = 2'd0;
wire [1:0] ethernetsoc_uart_eventmanager_storage;
reg ethernetsoc_uart_eventmanager_re = 1'd0;
wire ethernetsoc_uart_tx_fifo_sink_valid;
wire ethernetsoc_uart_tx_fifo_sink_ready;
reg ethernetsoc_uart_tx_fifo_sink_first = 1'd0;
reg ethernetsoc_uart_tx_fifo_sink_last = 1'd0;
wire [7:0] ethernetsoc_uart_tx_fifo_sink_payload_data;
wire ethernetsoc_uart_tx_fifo_source_valid;
wire ethernetsoc_uart_tx_fifo_source_ready;
wire ethernetsoc_uart_tx_fifo_source_first;
wire ethernetsoc_uart_tx_fifo_source_last;
wire [7:0] ethernetsoc_uart_tx_fifo_source_payload_data;
wire ethernetsoc_uart_tx_fifo_re;
reg ethernetsoc_uart_tx_fifo_readable = 1'd0;
wire ethernetsoc_uart_tx_fifo_syncfifo_we;
wire ethernetsoc_uart_tx_fifo_syncfifo_writable;
wire ethernetsoc_uart_tx_fifo_syncfifo_re;
wire ethernetsoc_uart_tx_fifo_syncfifo_readable;
wire [9:0] ethernetsoc_uart_tx_fifo_syncfifo_din;
wire [9:0] ethernetsoc_uart_tx_fifo_syncfifo_dout;
reg [4:0] ethernetsoc_uart_tx_fifo_level0 = 5'd0;
reg ethernetsoc_uart_tx_fifo_replace = 1'd0;
reg [3:0] ethernetsoc_uart_tx_fifo_produce = 4'd0;
reg [3:0] ethernetsoc_uart_tx_fifo_consume = 4'd0;
reg [3:0] ethernetsoc_uart_tx_fifo_wrport_adr = 4'd0;
wire [9:0] ethernetsoc_uart_tx_fifo_wrport_dat_r;
wire ethernetsoc_uart_tx_fifo_wrport_we;
wire [9:0] ethernetsoc_uart_tx_fifo_wrport_dat_w;
wire ethernetsoc_uart_tx_fifo_do_read;
wire [3:0] ethernetsoc_uart_tx_fifo_rdport_adr;
wire [9:0] ethernetsoc_uart_tx_fifo_rdport_dat_r;
wire ethernetsoc_uart_tx_fifo_rdport_re;
wire [4:0] ethernetsoc_uart_tx_fifo_level1;
wire [7:0] ethernetsoc_uart_tx_fifo_fifo_in_payload_data;
wire ethernetsoc_uart_tx_fifo_fifo_in_first;
wire ethernetsoc_uart_tx_fifo_fifo_in_last;
wire [7:0] ethernetsoc_uart_tx_fifo_fifo_out_payload_data;
wire ethernetsoc_uart_tx_fifo_fifo_out_first;
wire ethernetsoc_uart_tx_fifo_fifo_out_last;
wire ethernetsoc_uart_rx_fifo_sink_valid;
wire ethernetsoc_uart_rx_fifo_sink_ready;
wire ethernetsoc_uart_rx_fifo_sink_first;
wire ethernetsoc_uart_rx_fifo_sink_last;
wire [7:0] ethernetsoc_uart_rx_fifo_sink_payload_data;
wire ethernetsoc_uart_rx_fifo_source_valid;
wire ethernetsoc_uart_rx_fifo_source_ready;
wire ethernetsoc_uart_rx_fifo_source_first;
wire ethernetsoc_uart_rx_fifo_source_last;
wire [7:0] ethernetsoc_uart_rx_fifo_source_payload_data;
wire ethernetsoc_uart_rx_fifo_re;
reg ethernetsoc_uart_rx_fifo_readable = 1'd0;
wire ethernetsoc_uart_rx_fifo_syncfifo_we;
wire ethernetsoc_uart_rx_fifo_syncfifo_writable;
wire ethernetsoc_uart_rx_fifo_syncfifo_re;
wire ethernetsoc_uart_rx_fifo_syncfifo_readable;
wire [9:0] ethernetsoc_uart_rx_fifo_syncfifo_din;
wire [9:0] ethernetsoc_uart_rx_fifo_syncfifo_dout;
reg [4:0] ethernetsoc_uart_rx_fifo_level0 = 5'd0;
reg ethernetsoc_uart_rx_fifo_replace = 1'd0;
reg [3:0] ethernetsoc_uart_rx_fifo_produce = 4'd0;
reg [3:0] ethernetsoc_uart_rx_fifo_consume = 4'd0;
reg [3:0] ethernetsoc_uart_rx_fifo_wrport_adr = 4'd0;
wire [9:0] ethernetsoc_uart_rx_fifo_wrport_dat_r;
wire ethernetsoc_uart_rx_fifo_wrport_we;
wire [9:0] ethernetsoc_uart_rx_fifo_wrport_dat_w;
wire ethernetsoc_uart_rx_fifo_do_read;
wire [3:0] ethernetsoc_uart_rx_fifo_rdport_adr;
wire [9:0] ethernetsoc_uart_rx_fifo_rdport_dat_r;
wire ethernetsoc_uart_rx_fifo_rdport_re;
wire [4:0] ethernetsoc_uart_rx_fifo_level1;
wire [7:0] ethernetsoc_uart_rx_fifo_fifo_in_payload_data;
wire ethernetsoc_uart_rx_fifo_fifo_in_first;
wire ethernetsoc_uart_rx_fifo_fifo_in_last;
wire [7:0] ethernetsoc_uart_rx_fifo_fifo_out_payload_data;
wire ethernetsoc_uart_rx_fifo_fifo_out_first;
wire ethernetsoc_uart_rx_fifo_fifo_out_last;
reg ethernetsoc_uart_reset = 1'd0;
reg [31:0] ethernetsoc_timer0_load_storage_full = 32'd0;
wire [31:0] ethernetsoc_timer0_load_storage;
reg ethernetsoc_timer0_load_re = 1'd0;
reg [31:0] ethernetsoc_timer0_reload_storage_full = 32'd0;
wire [31:0] ethernetsoc_timer0_reload_storage;
reg ethernetsoc_timer0_reload_re = 1'd0;
reg ethernetsoc_timer0_en_storage_full = 1'd0;
wire ethernetsoc_timer0_en_storage;
reg ethernetsoc_timer0_en_re = 1'd0;
wire ethernetsoc_timer0_update_value_re;
wire ethernetsoc_timer0_update_value_r;
reg ethernetsoc_timer0_update_value_w = 1'd0;
reg [31:0] ethernetsoc_timer0_value_status = 32'd0;
wire ethernetsoc_timer0_irq;
wire ethernetsoc_timer0_zero_status;
reg ethernetsoc_timer0_zero_pending = 1'd0;
wire ethernetsoc_timer0_zero_trigger;
reg ethernetsoc_timer0_zero_clear = 1'd0;
reg ethernetsoc_timer0_zero_old_trigger = 1'd0;
wire ethernetsoc_timer0_eventmanager_status_re;
wire ethernetsoc_timer0_eventmanager_status_r;
wire ethernetsoc_timer0_eventmanager_status_w;
wire ethernetsoc_timer0_eventmanager_pending_re;
wire ethernetsoc_timer0_eventmanager_pending_r;
wire ethernetsoc_timer0_eventmanager_pending_w;
reg ethernetsoc_timer0_eventmanager_storage_full = 1'd0;
wire ethernetsoc_timer0_eventmanager_storage;
reg ethernetsoc_timer0_eventmanager_re = 1'd0;
reg [31:0] ethernetsoc_timer0_value = 32'd0;
wire [29:0] ethernetsoc_interface0_wb_sdram_adr;
wire [31:0] ethernetsoc_interface0_wb_sdram_dat_w;
reg [31:0] ethernetsoc_interface0_wb_sdram_dat_r = 32'd0;
wire [3:0] ethernetsoc_interface0_wb_sdram_sel;
wire ethernetsoc_interface0_wb_sdram_cyc;
wire ethernetsoc_interface0_wb_sdram_stb;
reg ethernetsoc_interface0_wb_sdram_ack = 1'd0;
wire ethernetsoc_interface0_wb_sdram_we;
wire [2:0] ethernetsoc_interface0_wb_sdram_cti;
wire [1:0] ethernetsoc_interface0_wb_sdram_bte;
reg ethernetsoc_interface0_wb_sdram_err = 1'd0;
wire init_clk;
wire init_rst;
wire por_clk;
wire sys_clk;
wire sys_rst;
wire sys2x_clk;
wire sys2x_rst;
wire sys2x_i_clk;
wire ethernetsoc_stop;
reg [15:0] ethernetsoc_por_count = 16'd65535;
wire ethernetsoc_por_done;
reg ethernetsoc_reset = 1'd0;
wire ethernetsoc_locked;
wire ethernetsoc_clkin;
wire ethernetsoc_clkout0;
wire ethernetsoc_clkout1;
wire ethernetsoc_ecp5ddrphy_pause0;
wire ethernetsoc_ecp5ddrphy_stop0;
wire ethernetsoc_ecp5ddrphy_delay0;
wire ethernetsoc_ecp5ddrphy_new_lock;
reg ethernetsoc_ecp5ddrphy_update = 1'd0;
reg ethernetsoc_ecp5ddrphy_stop1 = 1'd0;
reg ethernetsoc_ecp5ddrphy_freeze = 1'd0;
reg ethernetsoc_ecp5ddrphy_pause1 = 1'd0;
reg ethernetsoc_ecp5ddrphy_reset = 1'd0;
wire ethernetsoc_ecp5ddrphy_lock0;
wire ethernetsoc_ecp5ddrphy_delay1;
wire ethernetsoc_ecp5ddrphy_lock1;
reg ethernetsoc_ecp5ddrphy_lock_d = 1'd0;
reg [6:0] ethernetsoc_ecp5ddrphy_counter = 7'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_storage_full = 2'd0;
wire [1:0] ethernetsoc_ecp5ddrphy_storage;
reg ethernetsoc_ecp5ddrphy_re = 1'd0;
wire ethernetsoc_ecp5ddrphy_rdly_dq_rst_re;
wire ethernetsoc_ecp5ddrphy_rdly_dq_rst_r;
reg ethernetsoc_ecp5ddrphy_rdly_dq_rst_w = 1'd0;
wire ethernetsoc_ecp5ddrphy_rdly_dq_inc_re;
wire ethernetsoc_ecp5ddrphy_rdly_dq_inc_r;
reg ethernetsoc_ecp5ddrphy_rdly_dq_inc_w = 1'd0;
wire ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re;
wire ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_r;
reg ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_w = 1'd0;
wire ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re;
wire ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_r;
reg ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_w = 1'd0;
wire ethernetsoc_ecp5ddrphy_burstdet_clr_re;
wire ethernetsoc_ecp5ddrphy_burstdet_clr_r;
reg ethernetsoc_ecp5ddrphy_burstdet_clr_w = 1'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_status = 2'd0;
wire [1:0] ethernetsoc_ecp5ddrphy_datavalid;
wire [12:0] ethernetsoc_ecp5ddrphy_dfi_p0_address;
wire [2:0] ethernetsoc_ecp5ddrphy_dfi_p0_bank;
wire ethernetsoc_ecp5ddrphy_dfi_p0_cas_n;
wire ethernetsoc_ecp5ddrphy_dfi_p0_cs_n;
wire ethernetsoc_ecp5ddrphy_dfi_p0_ras_n;
wire ethernetsoc_ecp5ddrphy_dfi_p0_we_n;
wire ethernetsoc_ecp5ddrphy_dfi_p0_cke;
wire ethernetsoc_ecp5ddrphy_dfi_p0_odt;
wire ethernetsoc_ecp5ddrphy_dfi_p0_reset_n;
wire ethernetsoc_ecp5ddrphy_dfi_p0_act_n;
wire [63:0] ethernetsoc_ecp5ddrphy_dfi_p0_wrdata;
wire ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_en;
wire [7:0] ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_mask;
wire ethernetsoc_ecp5ddrphy_dfi_p0_rddata_en;
reg [63:0] ethernetsoc_ecp5ddrphy_dfi_p0_rddata = 64'd0;
reg ethernetsoc_ecp5ddrphy_dfi_p0_rddata_valid = 1'd0;
wire [12:0] ethernetsoc_ecp5ddrphy_dfi_p1_address;
wire [2:0] ethernetsoc_ecp5ddrphy_dfi_p1_bank;
wire ethernetsoc_ecp5ddrphy_dfi_p1_cas_n;
wire ethernetsoc_ecp5ddrphy_dfi_p1_cs_n;
wire ethernetsoc_ecp5ddrphy_dfi_p1_ras_n;
wire ethernetsoc_ecp5ddrphy_dfi_p1_we_n;
wire ethernetsoc_ecp5ddrphy_dfi_p1_cke;
wire ethernetsoc_ecp5ddrphy_dfi_p1_odt;
wire ethernetsoc_ecp5ddrphy_dfi_p1_reset_n;
wire ethernetsoc_ecp5ddrphy_dfi_p1_act_n;
wire [63:0] ethernetsoc_ecp5ddrphy_dfi_p1_wrdata;
wire ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_en;
wire [7:0] ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_mask;
wire ethernetsoc_ecp5ddrphy_dfi_p1_rddata_en;
reg [63:0] ethernetsoc_ecp5ddrphy_dfi_p1_rddata = 64'd0;
reg ethernetsoc_ecp5ddrphy_dfi_p1_rddata_valid = 1'd0;
reg ethernetsoc_ecp5ddrphy_dfi_p2_rddata_valid = 1'd0;
reg ethernetsoc_ecp5ddrphy_dfi_p3_rddata_valid = 1'd0;
reg ethernetsoc_ecp5ddrphy_bl8_sel = 1'd0;
reg ethernetsoc_ecp5ddrphy_oe_dq = 1'd0;
reg ethernetsoc_ecp5ddrphy_oe_dqs = 1'd0;
reg ethernetsoc_ecp5ddrphy_dqs_postamble = 1'd0;
reg ethernetsoc_ecp5ddrphy_dqs_preamble = 1'd0;
wire ethernetsoc_ecp5ddrphy_dqs_read;
wire ethernetsoc_ecp5ddrphy_dqs_i0;
wire ethernetsoc_ecp5ddrphy_dqsr900;
wire ethernetsoc_ecp5ddrphy_dqsw2700;
wire ethernetsoc_ecp5ddrphy_dqsw0;
wire [2:0] ethernetsoc_ecp5ddrphy_rdpntr0;
wire [2:0] ethernetsoc_ecp5ddrphy_wrpntr0;
reg [6:0] ethernetsoc_ecp5ddrphy_rdly0 = 7'd0;
wire ethernetsoc_ecp5ddrphy_burstdet0;
reg ethernetsoc_ecp5ddrphy_burstdet_d0 = 1'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_dqs_serdes_pattern0 = 8'd10;
wire [7:0] ethernetsoc_ecp5ddrphy_dm_o_data0;
reg [7:0] ethernetsoc_ecp5ddrphy_dm_o_data_d0 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dm_o_data_muxed0 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dqs0;
wire ethernetsoc_ecp5ddrphy_dqs_oe_n0;
wire ethernetsoc_ecp5ddrphy_dq_o0;
wire ethernetsoc_ecp5ddrphy_dq_i0;
wire ethernetsoc_ecp5ddrphy_dq_oe_n0;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed0;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data0;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data0;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d0 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed0 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip0_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip0_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip0_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip0_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d0 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o1;
wire ethernetsoc_ecp5ddrphy_dq_i1;
wire ethernetsoc_ecp5ddrphy_dq_oe_n1;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed1;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data1;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data1;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d1 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed1 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip1_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip1_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip1_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip1_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d1 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o2;
wire ethernetsoc_ecp5ddrphy_dq_i2;
wire ethernetsoc_ecp5ddrphy_dq_oe_n2;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed2;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data2;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data2;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d2 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed2 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip2_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip2_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip2_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip2_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d2 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o3;
wire ethernetsoc_ecp5ddrphy_dq_i3;
wire ethernetsoc_ecp5ddrphy_dq_oe_n3;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed3;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data3;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data3;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d3 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed3 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip3_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip3_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip3_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip3_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d3 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o4;
wire ethernetsoc_ecp5ddrphy_dq_i4;
wire ethernetsoc_ecp5ddrphy_dq_oe_n4;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed4;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data4;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data4;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d4 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed4 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip4_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip4_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip4_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip4_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d4 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o5;
wire ethernetsoc_ecp5ddrphy_dq_i5;
wire ethernetsoc_ecp5ddrphy_dq_oe_n5;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed5;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data5;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data5;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d5 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed5 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip5_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip5_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip5_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip5_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d5 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o6;
wire ethernetsoc_ecp5ddrphy_dq_i6;
wire ethernetsoc_ecp5ddrphy_dq_oe_n6;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed6;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data6;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data6;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d6 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed6 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip6_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip6_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip6_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip6_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d6 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o7;
wire ethernetsoc_ecp5ddrphy_dq_i7;
wire ethernetsoc_ecp5ddrphy_dq_oe_n7;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed7;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data7;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data7;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d7 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed7 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip7_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip7_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip7_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip7_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d7 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dqs_i1;
wire ethernetsoc_ecp5ddrphy_dqsr901;
wire ethernetsoc_ecp5ddrphy_dqsw2701;
wire ethernetsoc_ecp5ddrphy_dqsw1;
wire [2:0] ethernetsoc_ecp5ddrphy_rdpntr1;
wire [2:0] ethernetsoc_ecp5ddrphy_wrpntr1;
reg [6:0] ethernetsoc_ecp5ddrphy_rdly1 = 7'd0;
wire ethernetsoc_ecp5ddrphy_burstdet1;
reg ethernetsoc_ecp5ddrphy_burstdet_d1 = 1'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_dqs_serdes_pattern1 = 8'd10;
wire [7:0] ethernetsoc_ecp5ddrphy_dm_o_data1;
reg [7:0] ethernetsoc_ecp5ddrphy_dm_o_data_d1 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dm_o_data_muxed1 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dqs1;
wire ethernetsoc_ecp5ddrphy_dqs_oe_n1;
wire ethernetsoc_ecp5ddrphy_dq_o8;
wire ethernetsoc_ecp5ddrphy_dq_i8;
wire ethernetsoc_ecp5ddrphy_dq_oe_n8;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed8;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data8;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data8;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d8 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed8 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip8_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip8_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip8_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip8_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d8 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o9;
wire ethernetsoc_ecp5ddrphy_dq_i9;
wire ethernetsoc_ecp5ddrphy_dq_oe_n9;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed9;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data9;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data9;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d9 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed9 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip9_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip9_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip9_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip9_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d9 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o10;
wire ethernetsoc_ecp5ddrphy_dq_i10;
wire ethernetsoc_ecp5ddrphy_dq_oe_n10;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed10;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data10;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data10;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d10 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed10 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip10_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip10_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip10_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip10_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d10 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o11;
wire ethernetsoc_ecp5ddrphy_dq_i11;
wire ethernetsoc_ecp5ddrphy_dq_oe_n11;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed11;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data11;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data11;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d11 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed11 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip11_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip11_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip11_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip11_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d11 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o12;
wire ethernetsoc_ecp5ddrphy_dq_i12;
wire ethernetsoc_ecp5ddrphy_dq_oe_n12;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed12;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data12;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data12;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d12 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed12 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip12_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip12_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip12_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip12_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d12 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o13;
wire ethernetsoc_ecp5ddrphy_dq_i13;
wire ethernetsoc_ecp5ddrphy_dq_oe_n13;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed13;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data13;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data13;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d13 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed13 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip13_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip13_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip13_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip13_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d13 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o14;
wire ethernetsoc_ecp5ddrphy_dq_i14;
wire ethernetsoc_ecp5ddrphy_dq_oe_n14;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed14;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data14;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data14;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d14 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed14 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip14_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip14_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip14_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip14_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d14 = 4'd0;
wire ethernetsoc_ecp5ddrphy_dq_o15;
wire ethernetsoc_ecp5ddrphy_dq_i15;
wire ethernetsoc_ecp5ddrphy_dq_oe_n15;
wire ethernetsoc_ecp5ddrphy_dq_i_delayed15;
wire [3:0] ethernetsoc_ecp5ddrphy_dq_i_data15;
wire [7:0] ethernetsoc_ecp5ddrphy_dq_o_data15;
reg [7:0] ethernetsoc_ecp5ddrphy_dq_o_data_d15 = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_o_data_muxed15 = 4'd0;
wire [3:0] ethernetsoc_ecp5ddrphy_bitslip15_i;
reg [3:0] ethernetsoc_ecp5ddrphy_bitslip15_o = 4'd0;
reg [1:0] ethernetsoc_ecp5ddrphy_bitslip15_value = 2'd0;
reg [7:0] ethernetsoc_ecp5ddrphy_bitslip15_r = 8'd0;
reg [3:0] ethernetsoc_ecp5ddrphy_dq_bitslip_o_d15 = 4'd0;
wire ethernetsoc_ecp5ddrphy0;
wire ethernetsoc_ecp5ddrphy1;
wire ethernetsoc_ecp5ddrphy2;
wire ethernetsoc_ecp5ddrphy3;
wire ethernetsoc_ecp5ddrphy4;
wire ethernetsoc_ecp5ddrphy5;
wire ethernetsoc_ecp5ddrphy6;
wire ethernetsoc_ecp5ddrphy7;
wire ethernetsoc_ecp5ddrphy8;
wire ethernetsoc_ecp5ddrphy9;
wire ethernetsoc_ecp5ddrphy10;
wire ethernetsoc_ecp5ddrphy11;
wire ethernetsoc_ecp5ddrphy12;
reg ethernetsoc_ecp5ddrphy_n_rddata_en0 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en1 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en2 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en3 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en4 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en5 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en6 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en7 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en8 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en9 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en10 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en11 = 1'd0;
reg ethernetsoc_ecp5ddrphy_n_rddata_en12 = 1'd0;
wire ethernetsoc_ecp5ddrphy_oe;
reg [5:0] ethernetsoc_ecp5ddrphy_last_wrdata_en = 6'd0;
wire [12:0] ethernetsoc_sdram_inti_p0_address;
wire [2:0] ethernetsoc_sdram_inti_p0_bank;
reg ethernetsoc_sdram_inti_p0_cas_n = 1'd1;
reg ethernetsoc_sdram_inti_p0_cs_n = 1'd1;
reg ethernetsoc_sdram_inti_p0_ras_n = 1'd1;
reg ethernetsoc_sdram_inti_p0_we_n = 1'd1;
wire ethernetsoc_sdram_inti_p0_cke;
wire ethernetsoc_sdram_inti_p0_odt;
wire ethernetsoc_sdram_inti_p0_reset_n;
reg ethernetsoc_sdram_inti_p0_act_n = 1'd1;
wire [63:0] ethernetsoc_sdram_inti_p0_wrdata;
wire ethernetsoc_sdram_inti_p0_wrdata_en;
wire [7:0] ethernetsoc_sdram_inti_p0_wrdata_mask;
wire ethernetsoc_sdram_inti_p0_rddata_en;
reg [63:0] ethernetsoc_sdram_inti_p0_rddata = 64'd0;
reg ethernetsoc_sdram_inti_p0_rddata_valid = 1'd0;
wire [12:0] ethernetsoc_sdram_inti_p1_address;
wire [2:0] ethernetsoc_sdram_inti_p1_bank;
reg ethernetsoc_sdram_inti_p1_cas_n = 1'd1;
reg ethernetsoc_sdram_inti_p1_cs_n = 1'd1;
reg ethernetsoc_sdram_inti_p1_ras_n = 1'd1;
reg ethernetsoc_sdram_inti_p1_we_n = 1'd1;
wire ethernetsoc_sdram_inti_p1_cke;
wire ethernetsoc_sdram_inti_p1_odt;
wire ethernetsoc_sdram_inti_p1_reset_n;
reg ethernetsoc_sdram_inti_p1_act_n = 1'd1;
wire [63:0] ethernetsoc_sdram_inti_p1_wrdata;
wire ethernetsoc_sdram_inti_p1_wrdata_en;
wire [7:0] ethernetsoc_sdram_inti_p1_wrdata_mask;
wire ethernetsoc_sdram_inti_p1_rddata_en;
reg [63:0] ethernetsoc_sdram_inti_p1_rddata = 64'd0;
reg ethernetsoc_sdram_inti_p1_rddata_valid = 1'd0;
wire [12:0] ethernetsoc_sdram_slave_p0_address;
wire [2:0] ethernetsoc_sdram_slave_p0_bank;
wire ethernetsoc_sdram_slave_p0_cas_n;
wire ethernetsoc_sdram_slave_p0_cs_n;
wire ethernetsoc_sdram_slave_p0_ras_n;
wire ethernetsoc_sdram_slave_p0_we_n;
wire ethernetsoc_sdram_slave_p0_cke;
wire ethernetsoc_sdram_slave_p0_odt;
wire ethernetsoc_sdram_slave_p0_reset_n;
wire ethernetsoc_sdram_slave_p0_act_n;
wire [63:0] ethernetsoc_sdram_slave_p0_wrdata;
wire ethernetsoc_sdram_slave_p0_wrdata_en;
wire [7:0] ethernetsoc_sdram_slave_p0_wrdata_mask;
wire ethernetsoc_sdram_slave_p0_rddata_en;
reg [63:0] ethernetsoc_sdram_slave_p0_rddata = 64'd0;
reg ethernetsoc_sdram_slave_p0_rddata_valid = 1'd0;
wire [12:0] ethernetsoc_sdram_slave_p1_address;
wire [2:0] ethernetsoc_sdram_slave_p1_bank;
wire ethernetsoc_sdram_slave_p1_cas_n;
wire ethernetsoc_sdram_slave_p1_cs_n;
wire ethernetsoc_sdram_slave_p1_ras_n;
wire ethernetsoc_sdram_slave_p1_we_n;
wire ethernetsoc_sdram_slave_p1_cke;
wire ethernetsoc_sdram_slave_p1_odt;
wire ethernetsoc_sdram_slave_p1_reset_n;
wire ethernetsoc_sdram_slave_p1_act_n;
wire [63:0] ethernetsoc_sdram_slave_p1_wrdata;
wire ethernetsoc_sdram_slave_p1_wrdata_en;
wire [7:0] ethernetsoc_sdram_slave_p1_wrdata_mask;
wire ethernetsoc_sdram_slave_p1_rddata_en;
reg [63:0] ethernetsoc_sdram_slave_p1_rddata = 64'd0;
reg ethernetsoc_sdram_slave_p1_rddata_valid = 1'd0;
reg [12:0] ethernetsoc_sdram_master_p0_address = 13'd0;
reg [2:0] ethernetsoc_sdram_master_p0_bank = 3'd0;
reg ethernetsoc_sdram_master_p0_cas_n = 1'd1;
reg ethernetsoc_sdram_master_p0_cs_n = 1'd1;
reg ethernetsoc_sdram_master_p0_ras_n = 1'd1;
reg ethernetsoc_sdram_master_p0_we_n = 1'd1;
reg ethernetsoc_sdram_master_p0_cke = 1'd0;
reg ethernetsoc_sdram_master_p0_odt = 1'd0;
reg ethernetsoc_sdram_master_p0_reset_n = 1'd0;
reg ethernetsoc_sdram_master_p0_act_n = 1'd1;
reg [63:0] ethernetsoc_sdram_master_p0_wrdata = 64'd0;
reg ethernetsoc_sdram_master_p0_wrdata_en = 1'd0;
reg [7:0] ethernetsoc_sdram_master_p0_wrdata_mask = 8'd0;
reg ethernetsoc_sdram_master_p0_rddata_en = 1'd0;
wire [63:0] ethernetsoc_sdram_master_p0_rddata;
wire ethernetsoc_sdram_master_p0_rddata_valid;
reg [12:0] ethernetsoc_sdram_master_p1_address = 13'd0;
reg [2:0] ethernetsoc_sdram_master_p1_bank = 3'd0;
reg ethernetsoc_sdram_master_p1_cas_n = 1'd1;
reg ethernetsoc_sdram_master_p1_cs_n = 1'd1;
reg ethernetsoc_sdram_master_p1_ras_n = 1'd1;
reg ethernetsoc_sdram_master_p1_we_n = 1'd1;
reg ethernetsoc_sdram_master_p1_cke = 1'd0;
reg ethernetsoc_sdram_master_p1_odt = 1'd0;
reg ethernetsoc_sdram_master_p1_reset_n = 1'd0;
reg ethernetsoc_sdram_master_p1_act_n = 1'd1;
reg [63:0] ethernetsoc_sdram_master_p1_wrdata = 64'd0;
reg ethernetsoc_sdram_master_p1_wrdata_en = 1'd0;
reg [7:0] ethernetsoc_sdram_master_p1_wrdata_mask = 8'd0;
reg ethernetsoc_sdram_master_p1_rddata_en = 1'd0;
wire [63:0] ethernetsoc_sdram_master_p1_rddata;
wire ethernetsoc_sdram_master_p1_rddata_valid;
reg [3:0] ethernetsoc_sdram_storage_full = 4'd0;
wire [3:0] ethernetsoc_sdram_storage;
reg ethernetsoc_sdram_re = 1'd0;
reg [5:0] ethernetsoc_sdram_phaseinjector0_command_storage_full = 6'd0;
wire [5:0] ethernetsoc_sdram_phaseinjector0_command_storage;
reg ethernetsoc_sdram_phaseinjector0_command_re = 1'd0;
wire ethernetsoc_sdram_phaseinjector0_command_issue_re;
wire ethernetsoc_sdram_phaseinjector0_command_issue_r;
reg ethernetsoc_sdram_phaseinjector0_command_issue_w = 1'd0;
reg [12:0] ethernetsoc_sdram_phaseinjector0_address_storage_full = 13'd0;
wire [12:0] ethernetsoc_sdram_phaseinjector0_address_storage;
reg ethernetsoc_sdram_phaseinjector0_address_re = 1'd0;
reg [2:0] ethernetsoc_sdram_phaseinjector0_baddress_storage_full = 3'd0;
wire [2:0] ethernetsoc_sdram_phaseinjector0_baddress_storage;
reg ethernetsoc_sdram_phaseinjector0_baddress_re = 1'd0;
reg [63:0] ethernetsoc_sdram_phaseinjector0_wrdata_storage_full = 64'd0;
wire [63:0] ethernetsoc_sdram_phaseinjector0_wrdata_storage;
reg ethernetsoc_sdram_phaseinjector0_wrdata_re = 1'd0;
reg [63:0] ethernetsoc_sdram_phaseinjector0_status = 64'd0;
reg [5:0] ethernetsoc_sdram_phaseinjector1_command_storage_full = 6'd0;
wire [5:0] ethernetsoc_sdram_phaseinjector1_command_storage;
reg ethernetsoc_sdram_phaseinjector1_command_re = 1'd0;
wire ethernetsoc_sdram_phaseinjector1_command_issue_re;
wire ethernetsoc_sdram_phaseinjector1_command_issue_r;
reg ethernetsoc_sdram_phaseinjector1_command_issue_w = 1'd0;
reg [12:0] ethernetsoc_sdram_phaseinjector1_address_storage_full = 13'd0;
wire [12:0] ethernetsoc_sdram_phaseinjector1_address_storage;
reg ethernetsoc_sdram_phaseinjector1_address_re = 1'd0;
reg [2:0] ethernetsoc_sdram_phaseinjector1_baddress_storage_full = 3'd0;
wire [2:0] ethernetsoc_sdram_phaseinjector1_baddress_storage;
reg ethernetsoc_sdram_phaseinjector1_baddress_re = 1'd0;
reg [63:0] ethernetsoc_sdram_phaseinjector1_wrdata_storage_full = 64'd0;
wire [63:0] ethernetsoc_sdram_phaseinjector1_wrdata_storage;
reg ethernetsoc_sdram_phaseinjector1_wrdata_re = 1'd0;
reg [63:0] ethernetsoc_sdram_phaseinjector1_status = 64'd0;
reg [12:0] ethernetsoc_sdram_dfi_p0_address = 13'd0;
reg [2:0] ethernetsoc_sdram_dfi_p0_bank = 3'd0;
reg ethernetsoc_sdram_dfi_p0_cas_n = 1'd1;
reg ethernetsoc_sdram_dfi_p0_cs_n = 1'd1;
reg ethernetsoc_sdram_dfi_p0_ras_n = 1'd1;
reg ethernetsoc_sdram_dfi_p0_we_n = 1'd1;
wire ethernetsoc_sdram_dfi_p0_cke;
wire ethernetsoc_sdram_dfi_p0_odt;
wire ethernetsoc_sdram_dfi_p0_reset_n;
reg ethernetsoc_sdram_dfi_p0_act_n = 1'd1;
wire [63:0] ethernetsoc_sdram_dfi_p0_wrdata;
reg ethernetsoc_sdram_dfi_p0_wrdata_en = 1'd0;
wire [7:0] ethernetsoc_sdram_dfi_p0_wrdata_mask;
reg ethernetsoc_sdram_dfi_p0_rddata_en = 1'd0;
wire [63:0] ethernetsoc_sdram_dfi_p0_rddata;
wire ethernetsoc_sdram_dfi_p0_rddata_valid;
reg [12:0] ethernetsoc_sdram_dfi_p1_address = 13'd0;
reg [2:0] ethernetsoc_sdram_dfi_p1_bank = 3'd0;
reg ethernetsoc_sdram_dfi_p1_cas_n = 1'd1;
reg ethernetsoc_sdram_dfi_p1_cs_n = 1'd1;
reg ethernetsoc_sdram_dfi_p1_ras_n = 1'd1;
reg ethernetsoc_sdram_dfi_p1_we_n = 1'd1;
wire ethernetsoc_sdram_dfi_p1_cke;
wire ethernetsoc_sdram_dfi_p1_odt;
wire ethernetsoc_sdram_dfi_p1_reset_n;
reg ethernetsoc_sdram_dfi_p1_act_n = 1'd1;
wire [63:0] ethernetsoc_sdram_dfi_p1_wrdata;
reg ethernetsoc_sdram_dfi_p1_wrdata_en = 1'd0;
wire [7:0] ethernetsoc_sdram_dfi_p1_wrdata_mask;
reg ethernetsoc_sdram_dfi_p1_rddata_en = 1'd0;
wire [63:0] ethernetsoc_sdram_dfi_p1_rddata;
wire ethernetsoc_sdram_dfi_p1_rddata_valid;
wire ethernetsoc_sdram_interface_bank0_valid;
wire ethernetsoc_sdram_interface_bank0_ready;
wire ethernetsoc_sdram_interface_bank0_we;
wire [19:0] ethernetsoc_sdram_interface_bank0_addr;
wire ethernetsoc_sdram_interface_bank0_lock;
wire ethernetsoc_sdram_interface_bank0_wdata_ready;
wire ethernetsoc_sdram_interface_bank0_rdata_valid;
wire ethernetsoc_sdram_interface_bank1_valid;
wire ethernetsoc_sdram_interface_bank1_ready;
wire ethernetsoc_sdram_interface_bank1_we;
wire [19:0] ethernetsoc_sdram_interface_bank1_addr;
wire ethernetsoc_sdram_interface_bank1_lock;
wire ethernetsoc_sdram_interface_bank1_wdata_ready;
wire ethernetsoc_sdram_interface_bank1_rdata_valid;
wire ethernetsoc_sdram_interface_bank2_valid;
wire ethernetsoc_sdram_interface_bank2_ready;
wire ethernetsoc_sdram_interface_bank2_we;
wire [19:0] ethernetsoc_sdram_interface_bank2_addr;
wire ethernetsoc_sdram_interface_bank2_lock;
wire ethernetsoc_sdram_interface_bank2_wdata_ready;
wire ethernetsoc_sdram_interface_bank2_rdata_valid;
wire ethernetsoc_sdram_interface_bank3_valid;
wire ethernetsoc_sdram_interface_bank3_ready;
wire ethernetsoc_sdram_interface_bank3_we;
wire [19:0] ethernetsoc_sdram_interface_bank3_addr;
wire ethernetsoc_sdram_interface_bank3_lock;
wire ethernetsoc_sdram_interface_bank3_wdata_ready;
wire ethernetsoc_sdram_interface_bank3_rdata_valid;
wire ethernetsoc_sdram_interface_bank4_valid;
wire ethernetsoc_sdram_interface_bank4_ready;
wire ethernetsoc_sdram_interface_bank4_we;
wire [19:0] ethernetsoc_sdram_interface_bank4_addr;
wire ethernetsoc_sdram_interface_bank4_lock;
wire ethernetsoc_sdram_interface_bank4_wdata_ready;
wire ethernetsoc_sdram_interface_bank4_rdata_valid;
wire ethernetsoc_sdram_interface_bank5_valid;
wire ethernetsoc_sdram_interface_bank5_ready;
wire ethernetsoc_sdram_interface_bank5_we;
wire [19:0] ethernetsoc_sdram_interface_bank5_addr;
wire ethernetsoc_sdram_interface_bank5_lock;
wire ethernetsoc_sdram_interface_bank5_wdata_ready;
wire ethernetsoc_sdram_interface_bank5_rdata_valid;
wire ethernetsoc_sdram_interface_bank6_valid;
wire ethernetsoc_sdram_interface_bank6_ready;
wire ethernetsoc_sdram_interface_bank6_we;
wire [19:0] ethernetsoc_sdram_interface_bank6_addr;
wire ethernetsoc_sdram_interface_bank6_lock;
wire ethernetsoc_sdram_interface_bank6_wdata_ready;
wire ethernetsoc_sdram_interface_bank6_rdata_valid;
wire ethernetsoc_sdram_interface_bank7_valid;
wire ethernetsoc_sdram_interface_bank7_ready;
wire ethernetsoc_sdram_interface_bank7_we;
wire [19:0] ethernetsoc_sdram_interface_bank7_addr;
wire ethernetsoc_sdram_interface_bank7_lock;
wire ethernetsoc_sdram_interface_bank7_wdata_ready;
wire ethernetsoc_sdram_interface_bank7_rdata_valid;
reg [127:0] ethernetsoc_sdram_interface_wdata = 128'd0;
reg [15:0] ethernetsoc_sdram_interface_wdata_we = 16'd0;
wire [127:0] ethernetsoc_sdram_interface_rdata;
reg ethernetsoc_sdram_cmd_valid = 1'd0;
reg ethernetsoc_sdram_cmd_ready = 1'd0;
reg ethernetsoc_sdram_cmd_last = 1'd0;
reg [12:0] ethernetsoc_sdram_cmd_payload_a = 13'd0;
reg [2:0] ethernetsoc_sdram_cmd_payload_ba = 3'd0;
reg ethernetsoc_sdram_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_cmd_payload_we = 1'd0;
reg ethernetsoc_sdram_cmd_payload_is_read = 1'd0;
reg ethernetsoc_sdram_cmd_payload_is_write = 1'd0;
wire ethernetsoc_sdram_timer_wait;
wire ethernetsoc_sdram_timer_done;
reg [9:0] ethernetsoc_sdram_timer_count = 10'd586;
reg ethernetsoc_sdram_timer_load = 1'd0;
reg [9:0] ethernetsoc_sdram_timer_load_count = 10'd0;
wire ethernetsoc_sdram_timer_reset;
reg ethernetsoc_sdram_generator_start = 1'd0;
reg ethernetsoc_sdram_generator_done = 1'd0;
reg [3:0] ethernetsoc_sdram_generator_counter = 4'd0;
wire ethernetsoc_sdram_bankmachine0_req_valid;
wire ethernetsoc_sdram_bankmachine0_req_ready;
wire ethernetsoc_sdram_bankmachine0_req_we;
wire [19:0] ethernetsoc_sdram_bankmachine0_req_addr;
wire ethernetsoc_sdram_bankmachine0_req_lock;
reg ethernetsoc_sdram_bankmachine0_req_wdata_ready = 1'd0;
reg ethernetsoc_sdram_bankmachine0_req_rdata_valid = 1'd0;
wire ethernetsoc_sdram_bankmachine0_refresh_req;
reg ethernetsoc_sdram_bankmachine0_refresh_gnt = 1'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_valid = 1'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_ready = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine0_cmd_payload_a = 13'd0;
wire [2:0] ethernetsoc_sdram_bankmachine0_cmd_payload_ba;
reg ethernetsoc_sdram_bankmachine0_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_payload_we = 1'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_payload_is_cmd = 1'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_payload_is_read = 1'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_payload_is_write = 1'd0;
reg ethernetsoc_sdram_bankmachine0_auto_precharge = 1'd0;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
reg ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_first = 1'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_last = 1'd0;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [22:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [22:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [22:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [22:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [22:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_valid;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_ready;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_first;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_last;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_source_valid;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_source_ready;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_source_first;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_source_last;
reg ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [19:0] ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr = 20'd0;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_pipe_ce;
wire ethernetsoc_sdram_bankmachine0_cmd_buffer_busy;
reg ethernetsoc_sdram_bankmachine0_cmd_buffer_valid_n = 1'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_buffer_first_n = 1'd0;
reg ethernetsoc_sdram_bankmachine0_cmd_buffer_last_n = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine0_row = 13'd0;
reg ethernetsoc_sdram_bankmachine0_row_opened = 1'd0;
wire ethernetsoc_sdram_bankmachine0_row_hit;
reg ethernetsoc_sdram_bankmachine0_row_open = 1'd0;
reg ethernetsoc_sdram_bankmachine0_row_close = 1'd0;
reg ethernetsoc_sdram_bankmachine0_row_col_n_addr_sel = 1'd0;
wire ethernetsoc_sdram_bankmachine0_twtpcon_valid;
reg ethernetsoc_sdram_bankmachine0_twtpcon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine0_twtpcon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine0_twtpcon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine0_trccon_valid;
reg ethernetsoc_sdram_bankmachine0_trccon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine0_trccon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine0_trccon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine0_trascon_valid;
reg ethernetsoc_sdram_bankmachine0_trascon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine0_trascon_ready1 = 1'd0;
reg [1:0] ethernetsoc_sdram_bankmachine0_trascon_count = 2'd0;
wire ethernetsoc_sdram_bankmachine1_req_valid;
wire ethernetsoc_sdram_bankmachine1_req_ready;
wire ethernetsoc_sdram_bankmachine1_req_we;
wire [19:0] ethernetsoc_sdram_bankmachine1_req_addr;
wire ethernetsoc_sdram_bankmachine1_req_lock;
reg ethernetsoc_sdram_bankmachine1_req_wdata_ready = 1'd0;
reg ethernetsoc_sdram_bankmachine1_req_rdata_valid = 1'd0;
wire ethernetsoc_sdram_bankmachine1_refresh_req;
reg ethernetsoc_sdram_bankmachine1_refresh_gnt = 1'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_valid = 1'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_ready = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine1_cmd_payload_a = 13'd0;
wire [2:0] ethernetsoc_sdram_bankmachine1_cmd_payload_ba;
reg ethernetsoc_sdram_bankmachine1_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_payload_we = 1'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_payload_is_cmd = 1'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_payload_is_read = 1'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_payload_is_write = 1'd0;
reg ethernetsoc_sdram_bankmachine1_auto_precharge = 1'd0;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
reg ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_first = 1'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_last = 1'd0;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [22:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [22:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [22:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [22:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [22:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_valid;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_ready;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_first;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_last;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_source_valid;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_source_ready;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_source_first;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_source_last;
reg ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [19:0] ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr = 20'd0;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_pipe_ce;
wire ethernetsoc_sdram_bankmachine1_cmd_buffer_busy;
reg ethernetsoc_sdram_bankmachine1_cmd_buffer_valid_n = 1'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_buffer_first_n = 1'd0;
reg ethernetsoc_sdram_bankmachine1_cmd_buffer_last_n = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine1_row = 13'd0;
reg ethernetsoc_sdram_bankmachine1_row_opened = 1'd0;
wire ethernetsoc_sdram_bankmachine1_row_hit;
reg ethernetsoc_sdram_bankmachine1_row_open = 1'd0;
reg ethernetsoc_sdram_bankmachine1_row_close = 1'd0;
reg ethernetsoc_sdram_bankmachine1_row_col_n_addr_sel = 1'd0;
wire ethernetsoc_sdram_bankmachine1_twtpcon_valid;
reg ethernetsoc_sdram_bankmachine1_twtpcon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine1_twtpcon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine1_twtpcon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine1_trccon_valid;
reg ethernetsoc_sdram_bankmachine1_trccon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine1_trccon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine1_trccon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine1_trascon_valid;
reg ethernetsoc_sdram_bankmachine1_trascon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine1_trascon_ready1 = 1'd0;
reg [1:0] ethernetsoc_sdram_bankmachine1_trascon_count = 2'd0;
wire ethernetsoc_sdram_bankmachine2_req_valid;
wire ethernetsoc_sdram_bankmachine2_req_ready;
wire ethernetsoc_sdram_bankmachine2_req_we;
wire [19:0] ethernetsoc_sdram_bankmachine2_req_addr;
wire ethernetsoc_sdram_bankmachine2_req_lock;
reg ethernetsoc_sdram_bankmachine2_req_wdata_ready = 1'd0;
reg ethernetsoc_sdram_bankmachine2_req_rdata_valid = 1'd0;
wire ethernetsoc_sdram_bankmachine2_refresh_req;
reg ethernetsoc_sdram_bankmachine2_refresh_gnt = 1'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_valid = 1'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_ready = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine2_cmd_payload_a = 13'd0;
wire [2:0] ethernetsoc_sdram_bankmachine2_cmd_payload_ba;
reg ethernetsoc_sdram_bankmachine2_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_payload_we = 1'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_payload_is_cmd = 1'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_payload_is_read = 1'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_payload_is_write = 1'd0;
reg ethernetsoc_sdram_bankmachine2_auto_precharge = 1'd0;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
reg ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_first = 1'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_last = 1'd0;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [22:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [22:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [22:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [22:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [22:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_valid;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_ready;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_first;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_last;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_source_valid;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_source_ready;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_source_first;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_source_last;
reg ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [19:0] ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr = 20'd0;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_pipe_ce;
wire ethernetsoc_sdram_bankmachine2_cmd_buffer_busy;
reg ethernetsoc_sdram_bankmachine2_cmd_buffer_valid_n = 1'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_buffer_first_n = 1'd0;
reg ethernetsoc_sdram_bankmachine2_cmd_buffer_last_n = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine2_row = 13'd0;
reg ethernetsoc_sdram_bankmachine2_row_opened = 1'd0;
wire ethernetsoc_sdram_bankmachine2_row_hit;
reg ethernetsoc_sdram_bankmachine2_row_open = 1'd0;
reg ethernetsoc_sdram_bankmachine2_row_close = 1'd0;
reg ethernetsoc_sdram_bankmachine2_row_col_n_addr_sel = 1'd0;
wire ethernetsoc_sdram_bankmachine2_twtpcon_valid;
reg ethernetsoc_sdram_bankmachine2_twtpcon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine2_twtpcon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine2_twtpcon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine2_trccon_valid;
reg ethernetsoc_sdram_bankmachine2_trccon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine2_trccon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine2_trccon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine2_trascon_valid;
reg ethernetsoc_sdram_bankmachine2_trascon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine2_trascon_ready1 = 1'd0;
reg [1:0] ethernetsoc_sdram_bankmachine2_trascon_count = 2'd0;
wire ethernetsoc_sdram_bankmachine3_req_valid;
wire ethernetsoc_sdram_bankmachine3_req_ready;
wire ethernetsoc_sdram_bankmachine3_req_we;
wire [19:0] ethernetsoc_sdram_bankmachine3_req_addr;
wire ethernetsoc_sdram_bankmachine3_req_lock;
reg ethernetsoc_sdram_bankmachine3_req_wdata_ready = 1'd0;
reg ethernetsoc_sdram_bankmachine3_req_rdata_valid = 1'd0;
wire ethernetsoc_sdram_bankmachine3_refresh_req;
reg ethernetsoc_sdram_bankmachine3_refresh_gnt = 1'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_valid = 1'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_ready = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine3_cmd_payload_a = 13'd0;
wire [2:0] ethernetsoc_sdram_bankmachine3_cmd_payload_ba;
reg ethernetsoc_sdram_bankmachine3_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_payload_we = 1'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_payload_is_cmd = 1'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_payload_is_read = 1'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_payload_is_write = 1'd0;
reg ethernetsoc_sdram_bankmachine3_auto_precharge = 1'd0;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
reg ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_first = 1'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_last = 1'd0;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [22:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [22:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [22:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [22:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [22:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_valid;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_ready;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_first;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_last;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_source_valid;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_source_ready;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_source_first;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_source_last;
reg ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [19:0] ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr = 20'd0;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_pipe_ce;
wire ethernetsoc_sdram_bankmachine3_cmd_buffer_busy;
reg ethernetsoc_sdram_bankmachine3_cmd_buffer_valid_n = 1'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_buffer_first_n = 1'd0;
reg ethernetsoc_sdram_bankmachine3_cmd_buffer_last_n = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine3_row = 13'd0;
reg ethernetsoc_sdram_bankmachine3_row_opened = 1'd0;
wire ethernetsoc_sdram_bankmachine3_row_hit;
reg ethernetsoc_sdram_bankmachine3_row_open = 1'd0;
reg ethernetsoc_sdram_bankmachine3_row_close = 1'd0;
reg ethernetsoc_sdram_bankmachine3_row_col_n_addr_sel = 1'd0;
wire ethernetsoc_sdram_bankmachine3_twtpcon_valid;
reg ethernetsoc_sdram_bankmachine3_twtpcon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine3_twtpcon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine3_twtpcon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine3_trccon_valid;
reg ethernetsoc_sdram_bankmachine3_trccon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine3_trccon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine3_trccon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine3_trascon_valid;
reg ethernetsoc_sdram_bankmachine3_trascon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine3_trascon_ready1 = 1'd0;
reg [1:0] ethernetsoc_sdram_bankmachine3_trascon_count = 2'd0;
wire ethernetsoc_sdram_bankmachine4_req_valid;
wire ethernetsoc_sdram_bankmachine4_req_ready;
wire ethernetsoc_sdram_bankmachine4_req_we;
wire [19:0] ethernetsoc_sdram_bankmachine4_req_addr;
wire ethernetsoc_sdram_bankmachine4_req_lock;
reg ethernetsoc_sdram_bankmachine4_req_wdata_ready = 1'd0;
reg ethernetsoc_sdram_bankmachine4_req_rdata_valid = 1'd0;
wire ethernetsoc_sdram_bankmachine4_refresh_req;
reg ethernetsoc_sdram_bankmachine4_refresh_gnt = 1'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_valid = 1'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_ready = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine4_cmd_payload_a = 13'd0;
wire [2:0] ethernetsoc_sdram_bankmachine4_cmd_payload_ba;
reg ethernetsoc_sdram_bankmachine4_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_payload_we = 1'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_payload_is_cmd = 1'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_payload_is_read = 1'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_payload_is_write = 1'd0;
reg ethernetsoc_sdram_bankmachine4_auto_precharge = 1'd0;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready;
reg ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_first = 1'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_last = 1'd0;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
wire [22:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
wire [22:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
reg [3:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_level = 4'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [22:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_r;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we;
wire [22:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read;
wire [2:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr;
wire [22:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_valid;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_ready;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_first;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_last;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_source_valid;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_source_ready;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_source_first;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_source_last;
reg ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_we = 1'd0;
reg [19:0] ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr = 20'd0;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_pipe_ce;
wire ethernetsoc_sdram_bankmachine4_cmd_buffer_busy;
reg ethernetsoc_sdram_bankmachine4_cmd_buffer_valid_n = 1'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_buffer_first_n = 1'd0;
reg ethernetsoc_sdram_bankmachine4_cmd_buffer_last_n = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine4_row = 13'd0;
reg ethernetsoc_sdram_bankmachine4_row_opened = 1'd0;
wire ethernetsoc_sdram_bankmachine4_row_hit;
reg ethernetsoc_sdram_bankmachine4_row_open = 1'd0;
reg ethernetsoc_sdram_bankmachine4_row_close = 1'd0;
reg ethernetsoc_sdram_bankmachine4_row_col_n_addr_sel = 1'd0;
wire ethernetsoc_sdram_bankmachine4_twtpcon_valid;
reg ethernetsoc_sdram_bankmachine4_twtpcon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine4_twtpcon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine4_twtpcon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine4_trccon_valid;
reg ethernetsoc_sdram_bankmachine4_trccon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine4_trccon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine4_trccon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine4_trascon_valid;
reg ethernetsoc_sdram_bankmachine4_trascon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine4_trascon_ready1 = 1'd0;
reg [1:0] ethernetsoc_sdram_bankmachine4_trascon_count = 2'd0;
wire ethernetsoc_sdram_bankmachine5_req_valid;
wire ethernetsoc_sdram_bankmachine5_req_ready;
wire ethernetsoc_sdram_bankmachine5_req_we;
wire [19:0] ethernetsoc_sdram_bankmachine5_req_addr;
wire ethernetsoc_sdram_bankmachine5_req_lock;
reg ethernetsoc_sdram_bankmachine5_req_wdata_ready = 1'd0;
reg ethernetsoc_sdram_bankmachine5_req_rdata_valid = 1'd0;
wire ethernetsoc_sdram_bankmachine5_refresh_req;
reg ethernetsoc_sdram_bankmachine5_refresh_gnt = 1'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_valid = 1'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_ready = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine5_cmd_payload_a = 13'd0;
wire [2:0] ethernetsoc_sdram_bankmachine5_cmd_payload_ba;
reg ethernetsoc_sdram_bankmachine5_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_payload_we = 1'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_payload_is_cmd = 1'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_payload_is_read = 1'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_payload_is_write = 1'd0;
reg ethernetsoc_sdram_bankmachine5_auto_precharge = 1'd0;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready;
reg ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_first = 1'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_last = 1'd0;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
wire [22:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
wire [22:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
reg [3:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_level = 4'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [22:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_r;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we;
wire [22:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read;
wire [2:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr;
wire [22:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_valid;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_ready;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_first;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_last;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_source_valid;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_source_ready;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_source_first;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_source_last;
reg ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_we = 1'd0;
reg [19:0] ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr = 20'd0;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_pipe_ce;
wire ethernetsoc_sdram_bankmachine5_cmd_buffer_busy;
reg ethernetsoc_sdram_bankmachine5_cmd_buffer_valid_n = 1'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_buffer_first_n = 1'd0;
reg ethernetsoc_sdram_bankmachine5_cmd_buffer_last_n = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine5_row = 13'd0;
reg ethernetsoc_sdram_bankmachine5_row_opened = 1'd0;
wire ethernetsoc_sdram_bankmachine5_row_hit;
reg ethernetsoc_sdram_bankmachine5_row_open = 1'd0;
reg ethernetsoc_sdram_bankmachine5_row_close = 1'd0;
reg ethernetsoc_sdram_bankmachine5_row_col_n_addr_sel = 1'd0;
wire ethernetsoc_sdram_bankmachine5_twtpcon_valid;
reg ethernetsoc_sdram_bankmachine5_twtpcon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine5_twtpcon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine5_twtpcon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine5_trccon_valid;
reg ethernetsoc_sdram_bankmachine5_trccon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine5_trccon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine5_trccon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine5_trascon_valid;
reg ethernetsoc_sdram_bankmachine5_trascon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine5_trascon_ready1 = 1'd0;
reg [1:0] ethernetsoc_sdram_bankmachine5_trascon_count = 2'd0;
wire ethernetsoc_sdram_bankmachine6_req_valid;
wire ethernetsoc_sdram_bankmachine6_req_ready;
wire ethernetsoc_sdram_bankmachine6_req_we;
wire [19:0] ethernetsoc_sdram_bankmachine6_req_addr;
wire ethernetsoc_sdram_bankmachine6_req_lock;
reg ethernetsoc_sdram_bankmachine6_req_wdata_ready = 1'd0;
reg ethernetsoc_sdram_bankmachine6_req_rdata_valid = 1'd0;
wire ethernetsoc_sdram_bankmachine6_refresh_req;
reg ethernetsoc_sdram_bankmachine6_refresh_gnt = 1'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_valid = 1'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_ready = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine6_cmd_payload_a = 13'd0;
wire [2:0] ethernetsoc_sdram_bankmachine6_cmd_payload_ba;
reg ethernetsoc_sdram_bankmachine6_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_payload_we = 1'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_payload_is_cmd = 1'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_payload_is_read = 1'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_payload_is_write = 1'd0;
reg ethernetsoc_sdram_bankmachine6_auto_precharge = 1'd0;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready;
reg ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_first = 1'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_last = 1'd0;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
wire [22:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
wire [22:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
reg [3:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_level = 4'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [22:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_r;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we;
wire [22:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read;
wire [2:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr;
wire [22:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_valid;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_ready;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_first;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_last;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_source_valid;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_source_ready;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_source_first;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_source_last;
reg ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_we = 1'd0;
reg [19:0] ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr = 20'd0;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_pipe_ce;
wire ethernetsoc_sdram_bankmachine6_cmd_buffer_busy;
reg ethernetsoc_sdram_bankmachine6_cmd_buffer_valid_n = 1'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_buffer_first_n = 1'd0;
reg ethernetsoc_sdram_bankmachine6_cmd_buffer_last_n = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine6_row = 13'd0;
reg ethernetsoc_sdram_bankmachine6_row_opened = 1'd0;
wire ethernetsoc_sdram_bankmachine6_row_hit;
reg ethernetsoc_sdram_bankmachine6_row_open = 1'd0;
reg ethernetsoc_sdram_bankmachine6_row_close = 1'd0;
reg ethernetsoc_sdram_bankmachine6_row_col_n_addr_sel = 1'd0;
wire ethernetsoc_sdram_bankmachine6_twtpcon_valid;
reg ethernetsoc_sdram_bankmachine6_twtpcon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine6_twtpcon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine6_twtpcon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine6_trccon_valid;
reg ethernetsoc_sdram_bankmachine6_trccon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine6_trccon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine6_trccon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine6_trascon_valid;
reg ethernetsoc_sdram_bankmachine6_trascon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine6_trascon_ready1 = 1'd0;
reg [1:0] ethernetsoc_sdram_bankmachine6_trascon_count = 2'd0;
wire ethernetsoc_sdram_bankmachine7_req_valid;
wire ethernetsoc_sdram_bankmachine7_req_ready;
wire ethernetsoc_sdram_bankmachine7_req_we;
wire [19:0] ethernetsoc_sdram_bankmachine7_req_addr;
wire ethernetsoc_sdram_bankmachine7_req_lock;
reg ethernetsoc_sdram_bankmachine7_req_wdata_ready = 1'd0;
reg ethernetsoc_sdram_bankmachine7_req_rdata_valid = 1'd0;
wire ethernetsoc_sdram_bankmachine7_refresh_req;
reg ethernetsoc_sdram_bankmachine7_refresh_gnt = 1'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_valid = 1'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_ready = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine7_cmd_payload_a = 13'd0;
wire [2:0] ethernetsoc_sdram_bankmachine7_cmd_payload_ba;
reg ethernetsoc_sdram_bankmachine7_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_payload_we = 1'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_payload_is_cmd = 1'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_payload_is_read = 1'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_payload_is_write = 1'd0;
reg ethernetsoc_sdram_bankmachine7_auto_precharge = 1'd0;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready;
reg ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_first = 1'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_last = 1'd0;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
wire [22:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
wire [22:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
reg [3:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_level = 4'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr = 3'd0;
wire [22:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_r;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we;
wire [22:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read;
wire [2:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr;
wire [22:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_valid;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_ready;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_first;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_last;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_payload_we;
wire [19:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_payload_addr;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_source_valid;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_source_ready;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_source_first;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_source_last;
reg ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_we = 1'd0;
reg [19:0] ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr = 20'd0;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_pipe_ce;
wire ethernetsoc_sdram_bankmachine7_cmd_buffer_busy;
reg ethernetsoc_sdram_bankmachine7_cmd_buffer_valid_n = 1'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_buffer_first_n = 1'd0;
reg ethernetsoc_sdram_bankmachine7_cmd_buffer_last_n = 1'd0;
reg [12:0] ethernetsoc_sdram_bankmachine7_row = 13'd0;
reg ethernetsoc_sdram_bankmachine7_row_opened = 1'd0;
wire ethernetsoc_sdram_bankmachine7_row_hit;
reg ethernetsoc_sdram_bankmachine7_row_open = 1'd0;
reg ethernetsoc_sdram_bankmachine7_row_close = 1'd0;
reg ethernetsoc_sdram_bankmachine7_row_col_n_addr_sel = 1'd0;
wire ethernetsoc_sdram_bankmachine7_twtpcon_valid;
reg ethernetsoc_sdram_bankmachine7_twtpcon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine7_twtpcon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine7_twtpcon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine7_trccon_valid;
reg ethernetsoc_sdram_bankmachine7_trccon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine7_trccon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_bankmachine7_trccon_count = 3'd0;
wire ethernetsoc_sdram_bankmachine7_trascon_valid;
reg ethernetsoc_sdram_bankmachine7_trascon_ready0 = 1'd0;
reg ethernetsoc_sdram_bankmachine7_trascon_ready1 = 1'd0;
reg [1:0] ethernetsoc_sdram_bankmachine7_trascon_count = 2'd0;
wire ethernetsoc_sdram_ras_allowed;
wire ethernetsoc_sdram_cas_allowed;
reg ethernetsoc_sdram_choose_cmd_want_reads = 1'd0;
reg ethernetsoc_sdram_choose_cmd_want_writes = 1'd0;
reg ethernetsoc_sdram_choose_cmd_want_cmds = 1'd0;
reg ethernetsoc_sdram_choose_cmd_want_activates = 1'd0;
wire ethernetsoc_sdram_choose_cmd_cmd_valid;
reg ethernetsoc_sdram_choose_cmd_cmd_ready = 1'd0;
wire [12:0] ethernetsoc_sdram_choose_cmd_cmd_payload_a;
wire [2:0] ethernetsoc_sdram_choose_cmd_cmd_payload_ba;
reg ethernetsoc_sdram_choose_cmd_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_choose_cmd_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_choose_cmd_cmd_payload_we = 1'd0;
wire ethernetsoc_sdram_choose_cmd_cmd_payload_is_cmd;
wire ethernetsoc_sdram_choose_cmd_cmd_payload_is_read;
wire ethernetsoc_sdram_choose_cmd_cmd_payload_is_write;
reg [7:0] ethernetsoc_sdram_choose_cmd_valids = 8'd0;
wire [7:0] ethernetsoc_sdram_choose_cmd_request;
reg [2:0] ethernetsoc_sdram_choose_cmd_grant = 3'd0;
wire ethernetsoc_sdram_choose_cmd_ce;
reg ethernetsoc_sdram_choose_req_want_reads = 1'd0;
reg ethernetsoc_sdram_choose_req_want_writes = 1'd0;
reg ethernetsoc_sdram_choose_req_want_cmds = 1'd0;
reg ethernetsoc_sdram_choose_req_want_activates = 1'd0;
wire ethernetsoc_sdram_choose_req_cmd_valid;
reg ethernetsoc_sdram_choose_req_cmd_ready = 1'd0;
wire [12:0] ethernetsoc_sdram_choose_req_cmd_payload_a;
wire [2:0] ethernetsoc_sdram_choose_req_cmd_payload_ba;
reg ethernetsoc_sdram_choose_req_cmd_payload_cas = 1'd0;
reg ethernetsoc_sdram_choose_req_cmd_payload_ras = 1'd0;
reg ethernetsoc_sdram_choose_req_cmd_payload_we = 1'd0;
wire ethernetsoc_sdram_choose_req_cmd_payload_is_cmd;
wire ethernetsoc_sdram_choose_req_cmd_payload_is_read;
wire ethernetsoc_sdram_choose_req_cmd_payload_is_write;
reg [7:0] ethernetsoc_sdram_choose_req_valids = 8'd0;
wire [7:0] ethernetsoc_sdram_choose_req_request;
reg [2:0] ethernetsoc_sdram_choose_req_grant = 3'd0;
wire ethernetsoc_sdram_choose_req_ce;
reg [12:0] ethernetsoc_sdram_nop_a = 13'd0;
reg [2:0] ethernetsoc_sdram_nop_ba = 3'd0;
reg [1:0] ethernetsoc_sdram_steerer_sel0 = 2'd0;
reg [1:0] ethernetsoc_sdram_steerer_sel1 = 2'd0;
reg ethernetsoc_sdram_steerer0 = 1'd1;
reg ethernetsoc_sdram_steerer1 = 1'd1;
reg ethernetsoc_sdram_steerer2 = 1'd1;
reg ethernetsoc_sdram_steerer3 = 1'd1;
wire ethernetsoc_sdram_trrdcon_valid;
reg ethernetsoc_sdram_trrdcon_ready0 = 1'd0;
reg ethernetsoc_sdram_trrdcon_ready1 = 1'd0;
reg ethernetsoc_sdram_trrdcon_count = 1'd0;
wire ethernetsoc_sdram_tfawcon_valid;
reg ethernetsoc_sdram_tfawcon_ready = 1'd1;
wire [1:0] ethernetsoc_sdram_tfawcon_count;
reg [3:0] ethernetsoc_sdram_tfawcon_window = 4'd0;
wire ethernetsoc_sdram_tccdcon_valid;
reg ethernetsoc_sdram_tccdcon_ready0 = 1'd0;
reg ethernetsoc_sdram_tccdcon_ready1 = 1'd0;
reg ethernetsoc_sdram_tccdcon_count = 1'd0;
wire ethernetsoc_sdram_twtrcon_valid;
reg ethernetsoc_sdram_twtrcon_ready0 = 1'd0;
reg ethernetsoc_sdram_twtrcon_ready1 = 1'd0;
reg [2:0] ethernetsoc_sdram_twtrcon_count = 3'd0;
wire ethernetsoc_sdram_read_available;
wire ethernetsoc_sdram_write_available;
reg ethernetsoc_sdram_en0 = 1'd0;
wire ethernetsoc_sdram_max_time0;
reg [4:0] ethernetsoc_sdram_time0 = 5'd0;
reg ethernetsoc_sdram_en1 = 1'd0;
wire ethernetsoc_sdram_max_time1;
reg [3:0] ethernetsoc_sdram_time1 = 4'd0;
wire ethernetsoc_sdram_go_to_refresh;
wire [29:0] ethernetsoc_interface1_wb_sdram_adr;
wire [31:0] ethernetsoc_interface1_wb_sdram_dat_w;
wire [31:0] ethernetsoc_interface1_wb_sdram_dat_r;
wire [3:0] ethernetsoc_interface1_wb_sdram_sel;
wire ethernetsoc_interface1_wb_sdram_cyc;
wire ethernetsoc_interface1_wb_sdram_stb;
wire ethernetsoc_interface1_wb_sdram_ack;
wire ethernetsoc_interface1_wb_sdram_we;
wire [2:0] ethernetsoc_interface1_wb_sdram_cti;
wire [1:0] ethernetsoc_interface1_wb_sdram_bte;
wire ethernetsoc_interface1_wb_sdram_err;
reg ethernetsoc_port_cmd_valid = 1'd0;
wire ethernetsoc_port_cmd_ready;
reg ethernetsoc_port_cmd_payload_we = 1'd0;
reg [22:0] ethernetsoc_port_cmd_payload_addr = 23'd0;
reg ethernetsoc_port_wdata_valid = 1'd0;
wire ethernetsoc_port_wdata_ready;
reg [127:0] ethernetsoc_port_wdata_payload_data = 128'd0;
reg [15:0] ethernetsoc_port_wdata_payload_we = 16'd0;
wire ethernetsoc_port_rdata_valid;
reg ethernetsoc_port_rdata_ready = 1'd0;
wire [127:0] ethernetsoc_port_rdata_payload_data;
wire [29:0] ethernetsoc_adr;
wire [127:0] ethernetsoc_dat_w;
reg [127:0] ethernetsoc_dat_r = 128'd0;
wire [15:0] ethernetsoc_sel;
reg ethernetsoc_cyc = 1'd0;
reg ethernetsoc_stb = 1'd0;
reg ethernetsoc_ack = 1'd0;
reg ethernetsoc_we = 1'd0;
wire [8:0] ethernetsoc_data_port_adr;
wire [127:0] ethernetsoc_data_port_dat_r;
reg [15:0] ethernetsoc_data_port_we = 16'd0;
reg [127:0] ethernetsoc_data_port_dat_w = 128'd0;
reg ethernetsoc_write_from_slave = 1'd0;
reg [1:0] ethernetsoc_adr_offset_r = 2'd0;
wire [8:0] ethernetsoc_tag_port_adr;
wire [23:0] ethernetsoc_tag_port_dat_r;
reg ethernetsoc_tag_port_we = 1'd0;
wire [23:0] ethernetsoc_tag_port_dat_w;
wire [22:0] ethernetsoc_tag_do_tag;
wire ethernetsoc_tag_do_dirty;
wire [22:0] ethernetsoc_tag_di_tag;
reg ethernetsoc_tag_di_dirty = 1'd0;
reg ethernetsoc_word_clr = 1'd0;
reg ethernetsoc_word_inc = 1'd0;
reg [31:0] ethernetsoc_led_counter = 32'd0;
reg ethphy_reset_storage_full = 1'd0;
wire ethphy_reset_storage;
reg ethphy_reset_re = 1'd0;
(* keep = "true" *) wire eth_rx_clk;
wire eth_rx_rst;
(* keep = "true" *) wire eth_tx_clk;
wire eth_tx_rst;
wire ethphy_eth_tx_clk_o;
wire ethphy_reset0;
wire ethphy_reset1;
reg [8:0] ethphy_counter = 9'd0;
wire ethphy_counter_done;
wire ethphy_counter_ce;
wire ethphy_sink_valid;
wire ethphy_sink_ready;
wire ethphy_sink_first;
wire ethphy_sink_last;
wire [7:0] ethphy_sink_payload_data;
wire ethphy_sink_payload_last_be;
wire ethphy_sink_payload_error;
wire ethphy_tx_ctl_oddrx1f;
wire [3:0] ethphy_tx_data_oddrx1f;
reg ethphy_source_valid = 1'd0;
wire ethphy_source_ready;
reg ethphy_source_first = 1'd0;
wire ethphy_source_last;
reg [7:0] ethphy_source_payload_data = 8'd0;
reg ethphy_source_payload_last_be = 1'd0;
reg ethphy_source_payload_error = 1'd0;
wire ethphy_rx_ctl_delayf;
wire ethphy_rx_ctl;
reg ethphy_rx_ctl_reg = 1'd0;
wire [3:0] ethphy_rx_data_delayf;
wire [7:0] ethphy_rx_data;
reg [7:0] ethphy_rx_data_reg = 8'd0;
reg ethphy_rx_ctl_reg_d = 1'd0;
wire ethphy_last;
reg [2:0] ethphy_storage_full = 3'd0;
wire [2:0] ethphy_storage;
reg ethphy_re = 1'd0;
wire ethphy_status;
wire ethphy_data_w;
wire ethphy_data_oe;
wire ethphy_data_r;
wire ethmac_tx_gap_inserter_sink_valid;
reg ethmac_tx_gap_inserter_sink_ready = 1'd0;
wire ethmac_tx_gap_inserter_sink_first;
wire ethmac_tx_gap_inserter_sink_last;
wire [7:0] ethmac_tx_gap_inserter_sink_payload_data;
wire ethmac_tx_gap_inserter_sink_payload_last_be;
wire ethmac_tx_gap_inserter_sink_payload_error;
reg ethmac_tx_gap_inserter_source_valid = 1'd0;
wire ethmac_tx_gap_inserter_source_ready;
reg ethmac_tx_gap_inserter_source_first = 1'd0;
reg ethmac_tx_gap_inserter_source_last = 1'd0;
reg [7:0] ethmac_tx_gap_inserter_source_payload_data = 8'd0;
reg ethmac_tx_gap_inserter_source_payload_last_be = 1'd0;
reg ethmac_tx_gap_inserter_source_payload_error = 1'd0;
reg [3:0] ethmac_tx_gap_inserter_counter = 4'd0;
reg ethmac_tx_gap_inserter_counter_reset = 1'd0;
reg ethmac_tx_gap_inserter_counter_ce = 1'd0;
reg ethmac_preamble_crc_status = 1'd1;
reg [31:0] ethmac_preamble_errors_status = 32'd0;
reg [31:0] ethmac_crc_errors_status = 32'd0;
wire ethmac_preamble_inserter_sink_valid;
reg ethmac_preamble_inserter_sink_ready = 1'd0;
wire ethmac_preamble_inserter_sink_first;
wire ethmac_preamble_inserter_sink_last;
wire [7:0] ethmac_preamble_inserter_sink_payload_data;
wire ethmac_preamble_inserter_sink_payload_last_be;
wire ethmac_preamble_inserter_sink_payload_error;
reg ethmac_preamble_inserter_source_valid = 1'd0;
wire ethmac_preamble_inserter_source_ready;
reg ethmac_preamble_inserter_source_first = 1'd0;
reg ethmac_preamble_inserter_source_last = 1'd0;
reg [7:0] ethmac_preamble_inserter_source_payload_data = 8'd0;
wire ethmac_preamble_inserter_source_payload_last_be;
reg ethmac_preamble_inserter_source_payload_error = 1'd0;
reg [63:0] ethmac_preamble_inserter_preamble = 64'd15372286728091293013;
reg [2:0] ethmac_preamble_inserter_cnt = 3'd0;
reg ethmac_preamble_inserter_clr_cnt = 1'd0;
reg ethmac_preamble_inserter_inc_cnt = 1'd0;
wire ethmac_preamble_checker_sink_valid;
reg ethmac_preamble_checker_sink_ready = 1'd0;
wire ethmac_preamble_checker_sink_first;
wire ethmac_preamble_checker_sink_last;
wire [7:0] ethmac_preamble_checker_sink_payload_data;
wire ethmac_preamble_checker_sink_payload_last_be;
wire ethmac_preamble_checker_sink_payload_error;
reg ethmac_preamble_checker_source_valid = 1'd0;
wire ethmac_preamble_checker_source_ready;
reg ethmac_preamble_checker_source_first = 1'd0;
reg ethmac_preamble_checker_source_last = 1'd0;
wire [7:0] ethmac_preamble_checker_source_payload_data;
wire ethmac_preamble_checker_source_payload_last_be;
reg ethmac_preamble_checker_source_payload_error = 1'd0;
reg ethmac_preamble_checker_error = 1'd0;
wire ethmac_crc32_inserter_sink_valid;
reg ethmac_crc32_inserter_sink_ready = 1'd0;
wire ethmac_crc32_inserter_sink_first;
wire ethmac_crc32_inserter_sink_last;
wire [7:0] ethmac_crc32_inserter_sink_payload_data;
wire ethmac_crc32_inserter_sink_payload_last_be;
wire ethmac_crc32_inserter_sink_payload_error;
reg ethmac_crc32_inserter_source_valid = 1'd0;
wire ethmac_crc32_inserter_source_ready;
reg ethmac_crc32_inserter_source_first = 1'd0;
reg ethmac_crc32_inserter_source_last = 1'd0;
reg [7:0] ethmac_crc32_inserter_source_payload_data = 8'd0;
reg ethmac_crc32_inserter_source_payload_last_be = 1'd0;
reg ethmac_crc32_inserter_source_payload_error = 1'd0;
reg [7:0] ethmac_crc32_inserter_data0 = 8'd0;
wire [31:0] ethmac_crc32_inserter_value;
wire ethmac_crc32_inserter_error;
wire [7:0] ethmac_crc32_inserter_data1;
wire [31:0] ethmac_crc32_inserter_last;
reg [31:0] ethmac_crc32_inserter_next = 32'd0;
reg [31:0] ethmac_crc32_inserter_reg = 32'd4294967295;
reg ethmac_crc32_inserter_ce = 1'd0;
reg ethmac_crc32_inserter_reset = 1'd0;
reg [1:0] ethmac_crc32_inserter_cnt = 2'd3;
wire ethmac_crc32_inserter_cnt_done;
reg ethmac_crc32_inserter_is_ongoing0 = 1'd0;
reg ethmac_crc32_inserter_is_ongoing1 = 1'd0;
wire ethmac_crc32_checker_sink_sink_valid;
reg ethmac_crc32_checker_sink_sink_ready = 1'd0;
wire ethmac_crc32_checker_sink_sink_first;
wire ethmac_crc32_checker_sink_sink_last;
wire [7:0] ethmac_crc32_checker_sink_sink_payload_data;
wire ethmac_crc32_checker_sink_sink_payload_last_be;
wire ethmac_crc32_checker_sink_sink_payload_error;
wire ethmac_crc32_checker_source_source_valid;
wire ethmac_crc32_checker_source_source_ready;
reg ethmac_crc32_checker_source_source_first = 1'd0;
wire ethmac_crc32_checker_source_source_last;
wire [7:0] ethmac_crc32_checker_source_source_payload_data;
wire ethmac_crc32_checker_source_source_payload_last_be;
reg ethmac_crc32_checker_source_source_payload_error = 1'd0;
wire ethmac_crc32_checker_error;
wire [7:0] ethmac_crc32_checker_crc_data0;
wire [31:0] ethmac_crc32_checker_crc_value;
wire ethmac_crc32_checker_crc_error;
wire [7:0] ethmac_crc32_checker_crc_data1;
wire [31:0] ethmac_crc32_checker_crc_last;
reg [31:0] ethmac_crc32_checker_crc_next = 32'd0;
reg [31:0] ethmac_crc32_checker_crc_reg = 32'd4294967295;
reg ethmac_crc32_checker_crc_ce = 1'd0;
reg ethmac_crc32_checker_crc_reset = 1'd0;
reg ethmac_crc32_checker_syncfifo_sink_valid = 1'd0;
wire ethmac_crc32_checker_syncfifo_sink_ready;
wire ethmac_crc32_checker_syncfifo_sink_first;
wire ethmac_crc32_checker_syncfifo_sink_last;
wire [7:0] ethmac_crc32_checker_syncfifo_sink_payload_data;
wire ethmac_crc32_checker_syncfifo_sink_payload_last_be;
wire ethmac_crc32_checker_syncfifo_sink_payload_error;
wire ethmac_crc32_checker_syncfifo_source_valid;
wire ethmac_crc32_checker_syncfifo_source_ready;
wire ethmac_crc32_checker_syncfifo_source_first;
wire ethmac_crc32_checker_syncfifo_source_last;
wire [7:0] ethmac_crc32_checker_syncfifo_source_payload_data;
wire ethmac_crc32_checker_syncfifo_source_payload_last_be;
wire ethmac_crc32_checker_syncfifo_source_payload_error;
wire ethmac_crc32_checker_syncfifo_syncfifo_we;
wire ethmac_crc32_checker_syncfifo_syncfifo_writable;
wire ethmac_crc32_checker_syncfifo_syncfifo_re;
wire ethmac_crc32_checker_syncfifo_syncfifo_readable;
wire [11:0] ethmac_crc32_checker_syncfifo_syncfifo_din;
wire [11:0] ethmac_crc32_checker_syncfifo_syncfifo_dout;
reg [2:0] ethmac_crc32_checker_syncfifo_level = 3'd0;
reg ethmac_crc32_checker_syncfifo_replace = 1'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_produce = 3'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_consume = 3'd0;
reg [2:0] ethmac_crc32_checker_syncfifo_wrport_adr = 3'd0;
wire [11:0] ethmac_crc32_checker_syncfifo_wrport_dat_r;
wire ethmac_crc32_checker_syncfifo_wrport_we;
wire [11:0] ethmac_crc32_checker_syncfifo_wrport_dat_w;
wire ethmac_crc32_checker_syncfifo_do_read;
wire [2:0] ethmac_crc32_checker_syncfifo_rdport_adr;
wire [11:0] ethmac_crc32_checker_syncfifo_rdport_dat_r;
wire [7:0] ethmac_crc32_checker_syncfifo_fifo_in_payload_data;
wire ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be;
wire ethmac_crc32_checker_syncfifo_fifo_in_payload_error;
wire ethmac_crc32_checker_syncfifo_fifo_in_first;
wire ethmac_crc32_checker_syncfifo_fifo_in_last;
wire [7:0] ethmac_crc32_checker_syncfifo_fifo_out_payload_data;
wire ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be;
wire ethmac_crc32_checker_syncfifo_fifo_out_payload_error;
wire ethmac_crc32_checker_syncfifo_fifo_out_first;
wire ethmac_crc32_checker_syncfifo_fifo_out_last;
reg ethmac_crc32_checker_fifo_reset = 1'd0;
wire ethmac_crc32_checker_fifo_in;
wire ethmac_crc32_checker_fifo_out;
wire ethmac_crc32_checker_fifo_full;
wire ethmac_ps_preamble_error_i;
wire ethmac_ps_preamble_error_o;
reg ethmac_ps_preamble_error_toggle_i = 1'd0;
wire ethmac_ps_preamble_error_toggle_o;
reg ethmac_ps_preamble_error_toggle_o_r = 1'd0;
wire ethmac_ps_crc_error_i;
wire ethmac_ps_crc_error_o;
reg ethmac_ps_crc_error_toggle_i = 1'd0;
wire ethmac_ps_crc_error_toggle_o;
reg ethmac_ps_crc_error_toggle_o_r = 1'd0;
wire ethmac_padding_inserter_sink_valid;
reg ethmac_padding_inserter_sink_ready = 1'd0;
wire ethmac_padding_inserter_sink_first;
wire ethmac_padding_inserter_sink_last;
wire [7:0] ethmac_padding_inserter_sink_payload_data;
wire ethmac_padding_inserter_sink_payload_last_be;
wire ethmac_padding_inserter_sink_payload_error;
reg ethmac_padding_inserter_source_valid = 1'd0;
wire ethmac_padding_inserter_source_ready;
reg ethmac_padding_inserter_source_first = 1'd0;
reg ethmac_padding_inserter_source_last = 1'd0;
reg [7:0] ethmac_padding_inserter_source_payload_data = 8'd0;
reg ethmac_padding_inserter_source_payload_last_be = 1'd0;
reg ethmac_padding_inserter_source_payload_error = 1'd0;
reg [15:0] ethmac_padding_inserter_counter = 16'd1;
wire ethmac_padding_inserter_counter_done;
reg ethmac_padding_inserter_counter_reset = 1'd0;
reg ethmac_padding_inserter_counter_ce = 1'd0;
wire ethmac_padding_checker_sink_valid;
wire ethmac_padding_checker_sink_ready;
wire ethmac_padding_checker_sink_first;
wire ethmac_padding_checker_sink_last;
wire [7:0] ethmac_padding_checker_sink_payload_data;
wire ethmac_padding_checker_sink_payload_last_be;
wire ethmac_padding_checker_sink_payload_error;
wire ethmac_padding_checker_source_valid;
wire ethmac_padding_checker_source_ready;
wire ethmac_padding_checker_source_first;
wire ethmac_padding_checker_source_last;
wire [7:0] ethmac_padding_checker_source_payload_data;
wire ethmac_padding_checker_source_payload_last_be;
wire ethmac_padding_checker_source_payload_error;
wire ethmac_tx_last_be_sink_valid;
wire ethmac_tx_last_be_sink_ready;
wire ethmac_tx_last_be_sink_first;
wire ethmac_tx_last_be_sink_last;
wire [7:0] ethmac_tx_last_be_sink_payload_data;
wire ethmac_tx_last_be_sink_payload_last_be;
wire ethmac_tx_last_be_sink_payload_error;
wire ethmac_tx_last_be_source_valid;
wire ethmac_tx_last_be_source_ready;
reg ethmac_tx_last_be_source_first = 1'd0;
wire ethmac_tx_last_be_source_last;
wire [7:0] ethmac_tx_last_be_source_payload_data;
reg ethmac_tx_last_be_source_payload_last_be = 1'd0;
reg ethmac_tx_last_be_source_payload_error = 1'd0;
reg ethmac_tx_last_be_ongoing = 1'd1;
wire ethmac_rx_last_be_sink_valid;
wire ethmac_rx_last_be_sink_ready;
wire ethmac_rx_last_be_sink_first;
wire ethmac_rx_last_be_sink_last;
wire [7:0] ethmac_rx_last_be_sink_payload_data;
wire ethmac_rx_last_be_sink_payload_last_be;
wire ethmac_rx_last_be_sink_payload_error;
wire ethmac_rx_last_be_source_valid;
wire ethmac_rx_last_be_source_ready;
wire ethmac_rx_last_be_source_first;
wire ethmac_rx_last_be_source_last;
wire [7:0] ethmac_rx_last_be_source_payload_data;
reg ethmac_rx_last_be_source_payload_last_be = 1'd0;
wire ethmac_rx_last_be_source_payload_error;
wire ethmac_tx_converter_sink_valid;
wire ethmac_tx_converter_sink_ready;
wire ethmac_tx_converter_sink_first;
wire ethmac_tx_converter_sink_last;
wire [31:0] ethmac_tx_converter_sink_payload_data;
wire [3:0] ethmac_tx_converter_sink_payload_last_be;
wire [3:0] ethmac_tx_converter_sink_payload_error;
wire ethmac_tx_converter_source_valid;
wire ethmac_tx_converter_source_ready;
wire ethmac_tx_converter_source_first;
wire ethmac_tx_converter_source_last;
wire [7:0] ethmac_tx_converter_source_payload_data;
wire ethmac_tx_converter_source_payload_last_be;
wire ethmac_tx_converter_source_payload_error;
wire ethmac_tx_converter_converter_sink_valid;
wire ethmac_tx_converter_converter_sink_ready;
wire ethmac_tx_converter_converter_sink_first;
wire ethmac_tx_converter_converter_sink_last;
reg [39:0] ethmac_tx_converter_converter_sink_payload_data = 40'd0;
wire ethmac_tx_converter_converter_source_valid;
wire ethmac_tx_converter_converter_source_ready;
wire ethmac_tx_converter_converter_source_first;
wire ethmac_tx_converter_converter_source_last;
reg [9:0] ethmac_tx_converter_converter_source_payload_data = 10'd0;
wire ethmac_tx_converter_converter_source_payload_valid_token_count;
reg [1:0] ethmac_tx_converter_converter_mux = 2'd0;
wire ethmac_tx_converter_converter_first;
wire ethmac_tx_converter_converter_last;
wire ethmac_tx_converter_source_source_valid;
wire ethmac_tx_converter_source_source_ready;
wire ethmac_tx_converter_source_source_first;
wire ethmac_tx_converter_source_source_last;
wire [9:0] ethmac_tx_converter_source_source_payload_data;
wire ethmac_rx_converter_sink_valid;
wire ethmac_rx_converter_sink_ready;
wire ethmac_rx_converter_sink_first;
wire ethmac_rx_converter_sink_last;
wire [7:0] ethmac_rx_converter_sink_payload_data;
wire ethmac_rx_converter_sink_payload_last_be;
wire ethmac_rx_converter_sink_payload_error;
wire ethmac_rx_converter_source_valid;
wire ethmac_rx_converter_source_ready;
wire ethmac_rx_converter_source_first;
wire ethmac_rx_converter_source_last;
reg [31:0] ethmac_rx_converter_source_payload_data = 32'd0;
reg [3:0] ethmac_rx_converter_source_payload_last_be = 4'd0;
reg [3:0] ethmac_rx_converter_source_payload_error = 4'd0;
wire ethmac_rx_converter_converter_sink_valid;
wire ethmac_rx_converter_converter_sink_ready;
wire ethmac_rx_converter_converter_sink_first;
wire ethmac_rx_converter_converter_sink_last;
wire [9:0] ethmac_rx_converter_converter_sink_payload_data;
wire ethmac_rx_converter_converter_source_valid;
wire ethmac_rx_converter_converter_source_ready;
reg ethmac_rx_converter_converter_source_first = 1'd0;
reg ethmac_rx_converter_converter_source_last = 1'd0;
reg [39:0] ethmac_rx_converter_converter_source_payload_data = 40'd0;
reg [2:0] ethmac_rx_converter_converter_source_payload_valid_token_count = 3'd0;
reg [1:0] ethmac_rx_converter_converter_demux = 2'd0;
wire ethmac_rx_converter_converter_load_part;
reg ethmac_rx_converter_converter_strobe_all = 1'd0;
wire ethmac_rx_converter_source_source_valid;
wire ethmac_rx_converter_source_source_ready;
wire ethmac_rx_converter_source_source_first;
wire ethmac_rx_converter_source_source_last;
wire [39:0] ethmac_rx_converter_source_source_payload_data;
wire ethmac_tx_cdc_sink_valid;
wire ethmac_tx_cdc_sink_ready;
wire ethmac_tx_cdc_sink_first;
wire ethmac_tx_cdc_sink_last;
wire [31:0] ethmac_tx_cdc_sink_payload_data;
wire [3:0] ethmac_tx_cdc_sink_payload_last_be;
wire [3:0] ethmac_tx_cdc_sink_payload_error;
wire ethmac_tx_cdc_source_valid;
wire ethmac_tx_cdc_source_ready;
wire ethmac_tx_cdc_source_first;
wire ethmac_tx_cdc_source_last;
wire [31:0] ethmac_tx_cdc_source_payload_data;
wire [3:0] ethmac_tx_cdc_source_payload_last_be;
wire [3:0] ethmac_tx_cdc_source_payload_error;
wire ethmac_tx_cdc_asyncfifo_we;
wire ethmac_tx_cdc_asyncfifo_writable;
wire ethmac_tx_cdc_asyncfifo_re;
wire ethmac_tx_cdc_asyncfifo_readable;
wire [41:0] ethmac_tx_cdc_asyncfifo_din;
wire [41:0] ethmac_tx_cdc_asyncfifo_dout;
wire ethmac_tx_cdc_graycounter0_ce;
reg [6:0] ethmac_tx_cdc_graycounter0_q = 7'd0;
wire [6:0] ethmac_tx_cdc_graycounter0_q_next;
reg [6:0] ethmac_tx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] ethmac_tx_cdc_graycounter0_q_next_binary = 7'd0;
wire ethmac_tx_cdc_graycounter1_ce;
reg [6:0] ethmac_tx_cdc_graycounter1_q = 7'd0;
wire [6:0] ethmac_tx_cdc_graycounter1_q_next;
reg [6:0] ethmac_tx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] ethmac_tx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] ethmac_tx_cdc_produce_rdomain;
wire [6:0] ethmac_tx_cdc_consume_wdomain;
wire [5:0] ethmac_tx_cdc_wrport_adr;
wire [41:0] ethmac_tx_cdc_wrport_dat_r;
wire ethmac_tx_cdc_wrport_we;
wire [41:0] ethmac_tx_cdc_wrport_dat_w;
wire [5:0] ethmac_tx_cdc_rdport_adr;
wire [41:0] ethmac_tx_cdc_rdport_dat_r;
wire [31:0] ethmac_tx_cdc_fifo_in_payload_data;
wire [3:0] ethmac_tx_cdc_fifo_in_payload_last_be;
wire [3:0] ethmac_tx_cdc_fifo_in_payload_error;
wire ethmac_tx_cdc_fifo_in_first;
wire ethmac_tx_cdc_fifo_in_last;
wire [31:0] ethmac_tx_cdc_fifo_out_payload_data;
wire [3:0] ethmac_tx_cdc_fifo_out_payload_last_be;
wire [3:0] ethmac_tx_cdc_fifo_out_payload_error;
wire ethmac_tx_cdc_fifo_out_first;
wire ethmac_tx_cdc_fifo_out_last;
wire ethmac_rx_cdc_sink_valid;
wire ethmac_rx_cdc_sink_ready;
wire ethmac_rx_cdc_sink_first;
wire ethmac_rx_cdc_sink_last;
wire [31:0] ethmac_rx_cdc_sink_payload_data;
wire [3:0] ethmac_rx_cdc_sink_payload_last_be;
wire [3:0] ethmac_rx_cdc_sink_payload_error;
wire ethmac_rx_cdc_source_valid;
wire ethmac_rx_cdc_source_ready;
wire ethmac_rx_cdc_source_first;
wire ethmac_rx_cdc_source_last;
wire [31:0] ethmac_rx_cdc_source_payload_data;
wire [3:0] ethmac_rx_cdc_source_payload_last_be;
wire [3:0] ethmac_rx_cdc_source_payload_error;
wire ethmac_rx_cdc_asyncfifo_we;
wire ethmac_rx_cdc_asyncfifo_writable;
wire ethmac_rx_cdc_asyncfifo_re;
wire ethmac_rx_cdc_asyncfifo_readable;
wire [41:0] ethmac_rx_cdc_asyncfifo_din;
wire [41:0] ethmac_rx_cdc_asyncfifo_dout;
wire ethmac_rx_cdc_graycounter0_ce;
reg [6:0] ethmac_rx_cdc_graycounter0_q = 7'd0;
wire [6:0] ethmac_rx_cdc_graycounter0_q_next;
reg [6:0] ethmac_rx_cdc_graycounter0_q_binary = 7'd0;
reg [6:0] ethmac_rx_cdc_graycounter0_q_next_binary = 7'd0;
wire ethmac_rx_cdc_graycounter1_ce;
reg [6:0] ethmac_rx_cdc_graycounter1_q = 7'd0;
wire [6:0] ethmac_rx_cdc_graycounter1_q_next;
reg [6:0] ethmac_rx_cdc_graycounter1_q_binary = 7'd0;
reg [6:0] ethmac_rx_cdc_graycounter1_q_next_binary = 7'd0;
wire [6:0] ethmac_rx_cdc_produce_rdomain;
wire [6:0] ethmac_rx_cdc_consume_wdomain;
wire [5:0] ethmac_rx_cdc_wrport_adr;
wire [41:0] ethmac_rx_cdc_wrport_dat_r;
wire ethmac_rx_cdc_wrport_we;
wire [41:0] ethmac_rx_cdc_wrport_dat_w;
wire [5:0] ethmac_rx_cdc_rdport_adr;
wire [41:0] ethmac_rx_cdc_rdport_dat_r;
wire [31:0] ethmac_rx_cdc_fifo_in_payload_data;
wire [3:0] ethmac_rx_cdc_fifo_in_payload_last_be;
wire [3:0] ethmac_rx_cdc_fifo_in_payload_error;
wire ethmac_rx_cdc_fifo_in_first;
wire ethmac_rx_cdc_fifo_in_last;
wire [31:0] ethmac_rx_cdc_fifo_out_payload_data;
wire [3:0] ethmac_rx_cdc_fifo_out_payload_last_be;
wire [3:0] ethmac_rx_cdc_fifo_out_payload_error;
wire ethmac_rx_cdc_fifo_out_first;
wire ethmac_rx_cdc_fifo_out_last;
wire ethmac_sink_valid;
wire ethmac_sink_ready;
wire ethmac_sink_first;
wire ethmac_sink_last;
wire [31:0] ethmac_sink_payload_data;
wire [3:0] ethmac_sink_payload_last_be;
wire [3:0] ethmac_sink_payload_error;
wire ethmac_source_valid;
wire ethmac_source_ready;
wire ethmac_source_first;
wire ethmac_source_last;
wire [31:0] ethmac_source_payload_data;
wire [3:0] ethmac_source_payload_last_be;
wire [3:0] ethmac_source_payload_error;
wire [29:0] ethmac_bus_adr;
wire [31:0] ethmac_bus_dat_w;
wire [31:0] ethmac_bus_dat_r;
wire [3:0] ethmac_bus_sel;
wire ethmac_bus_cyc;
wire ethmac_bus_stb;
wire ethmac_bus_ack;
wire ethmac_bus_we;
wire [2:0] ethmac_bus_cti;
wire [1:0] ethmac_bus_bte;
wire ethmac_bus_err;
wire ethmac_writer_sink_sink_valid;
reg ethmac_writer_sink_sink_ready = 1'd1;
wire ethmac_writer_sink_sink_first;
wire ethmac_writer_sink_sink_last;
wire [31:0] ethmac_writer_sink_sink_payload_data;
wire [3:0] ethmac_writer_sink_sink_payload_last_be;
wire [3:0] ethmac_writer_sink_sink_payload_error;
wire ethmac_writer_slot_status;
wire [31:0] ethmac_writer_length_status;
reg [31:0] ethmac_writer_errors_status = 32'd0;
wire ethmac_writer_irq;
wire ethmac_writer_available_status;
wire ethmac_writer_available_pending;
wire ethmac_writer_available_trigger;
reg ethmac_writer_available_clear = 1'd0;
wire ethmac_writer_status_re;
wire ethmac_writer_status_r;
wire ethmac_writer_status_w;
wire ethmac_writer_pending_re;
wire ethmac_writer_pending_r;
wire ethmac_writer_pending_w;
reg ethmac_writer_storage_full = 1'd0;
wire ethmac_writer_storage;
reg ethmac_writer_re = 1'd0;
reg [2:0] ethmac_writer_inc = 3'd0;
reg [31:0] ethmac_writer_counter = 32'd0;
reg ethmac_writer_counter_reset = 1'd0;
reg ethmac_writer_counter_ce = 1'd0;
reg ethmac_writer_slot = 1'd0;
reg ethmac_writer_slot_ce = 1'd0;
reg ethmac_writer_ongoing = 1'd0;
reg ethmac_writer_fifo_sink_valid = 1'd0;
wire ethmac_writer_fifo_sink_ready;
reg ethmac_writer_fifo_sink_first = 1'd0;
reg ethmac_writer_fifo_sink_last = 1'd0;
wire ethmac_writer_fifo_sink_payload_slot;
wire [31:0] ethmac_writer_fifo_sink_payload_length;
wire ethmac_writer_fifo_source_valid;
wire ethmac_writer_fifo_source_ready;
wire ethmac_writer_fifo_source_first;
wire ethmac_writer_fifo_source_last;
wire ethmac_writer_fifo_source_payload_slot;
wire [31:0] ethmac_writer_fifo_source_payload_length;
wire ethmac_writer_fifo_syncfifo_we;
wire ethmac_writer_fifo_syncfifo_writable;
wire ethmac_writer_fifo_syncfifo_re;
wire ethmac_writer_fifo_syncfifo_readable;
wire [34:0] ethmac_writer_fifo_syncfifo_din;
wire [34:0] ethmac_writer_fifo_syncfifo_dout;
reg [1:0] ethmac_writer_fifo_level = 2'd0;
reg ethmac_writer_fifo_replace = 1'd0;
reg ethmac_writer_fifo_produce = 1'd0;
reg ethmac_writer_fifo_consume = 1'd0;
reg ethmac_writer_fifo_wrport_adr = 1'd0;
wire [34:0] ethmac_writer_fifo_wrport_dat_r;
wire ethmac_writer_fifo_wrport_we;
wire [34:0] ethmac_writer_fifo_wrport_dat_w;
wire ethmac_writer_fifo_do_read;
wire ethmac_writer_fifo_rdport_adr;
wire [34:0] ethmac_writer_fifo_rdport_dat_r;
wire ethmac_writer_fifo_fifo_in_payload_slot;
wire [31:0] ethmac_writer_fifo_fifo_in_payload_length;
wire ethmac_writer_fifo_fifo_in_first;
wire ethmac_writer_fifo_fifo_in_last;
wire ethmac_writer_fifo_fifo_out_payload_slot;
wire [31:0] ethmac_writer_fifo_fifo_out_payload_length;
wire ethmac_writer_fifo_fifo_out_first;
wire ethmac_writer_fifo_fifo_out_last;
reg [8:0] ethmac_writer_memory0_adr = 9'd0;
wire [31:0] ethmac_writer_memory0_dat_r;
reg ethmac_writer_memory0_we = 1'd0;
reg [31:0] ethmac_writer_memory0_dat_w = 32'd0;
reg [8:0] ethmac_writer_memory1_adr = 9'd0;
wire [31:0] ethmac_writer_memory1_dat_r;
reg ethmac_writer_memory1_we = 1'd0;
reg [31:0] ethmac_writer_memory1_dat_w = 32'd0;
reg ethmac_reader_source_source_valid = 1'd0;
wire ethmac_reader_source_source_ready;
reg ethmac_reader_source_source_first = 1'd0;
reg ethmac_reader_source_source_last = 1'd0;
reg [31:0] ethmac_reader_source_source_payload_data = 32'd0;
reg [3:0] ethmac_reader_source_source_payload_last_be = 4'd0;
reg [3:0] ethmac_reader_source_source_payload_error = 4'd0;
wire ethmac_reader_start_re;
wire ethmac_reader_start_r;
reg ethmac_reader_start_w = 1'd0;
wire ethmac_reader_ready_status;
wire [1:0] ethmac_reader_level_status;
reg ethmac_reader_slot_storage_full = 1'd0;
wire ethmac_reader_slot_storage;
reg ethmac_reader_slot_re = 1'd0;
reg [10:0] ethmac_reader_length_storage_full = 11'd0;
wire [10:0] ethmac_reader_length_storage;
reg ethmac_reader_length_re = 1'd0;
wire ethmac_reader_irq;
wire ethmac_reader_done_status;
reg ethmac_reader_done_pending = 1'd0;
reg ethmac_reader_done_trigger = 1'd0;
reg ethmac_reader_done_clear = 1'd0;
wire ethmac_reader_eventmanager_status_re;
wire ethmac_reader_eventmanager_status_r;
wire ethmac_reader_eventmanager_status_w;
wire ethmac_reader_eventmanager_pending_re;
wire ethmac_reader_eventmanager_pending_r;
wire ethmac_reader_eventmanager_pending_w;
reg ethmac_reader_eventmanager_storage_full = 1'd0;
wire ethmac_reader_eventmanager_storage;
reg ethmac_reader_eventmanager_re = 1'd0;
wire ethmac_reader_fifo_sink_valid;
wire ethmac_reader_fifo_sink_ready;
reg ethmac_reader_fifo_sink_first = 1'd0;
reg ethmac_reader_fifo_sink_last = 1'd0;
wire ethmac_reader_fifo_sink_payload_slot;
wire [10:0] ethmac_reader_fifo_sink_payload_length;
wire ethmac_reader_fifo_source_valid;
reg ethmac_reader_fifo_source_ready = 1'd0;
wire ethmac_reader_fifo_source_first;
wire ethmac_reader_fifo_source_last;
wire ethmac_reader_fifo_source_payload_slot;
wire [10:0] ethmac_reader_fifo_source_payload_length;
wire ethmac_reader_fifo_syncfifo_we;
wire ethmac_reader_fifo_syncfifo_writable;
wire ethmac_reader_fifo_syncfifo_re;
wire ethmac_reader_fifo_syncfifo_readable;
wire [13:0] ethmac_reader_fifo_syncfifo_din;
wire [13:0] ethmac_reader_fifo_syncfifo_dout;
reg [1:0] ethmac_reader_fifo_level = 2'd0;
reg ethmac_reader_fifo_replace = 1'd0;
reg ethmac_reader_fifo_produce = 1'd0;
reg ethmac_reader_fifo_consume = 1'd0;
reg ethmac_reader_fifo_wrport_adr = 1'd0;
wire [13:0] ethmac_reader_fifo_wrport_dat_r;
wire ethmac_reader_fifo_wrport_we;
wire [13:0] ethmac_reader_fifo_wrport_dat_w;
wire ethmac_reader_fifo_do_read;
wire ethmac_reader_fifo_rdport_adr;
wire [13:0] ethmac_reader_fifo_rdport_dat_r;
wire ethmac_reader_fifo_fifo_in_payload_slot;
wire [10:0] ethmac_reader_fifo_fifo_in_payload_length;
wire ethmac_reader_fifo_fifo_in_first;
wire ethmac_reader_fifo_fifo_in_last;
wire ethmac_reader_fifo_fifo_out_payload_slot;
wire [10:0] ethmac_reader_fifo_fifo_out_payload_length;
wire ethmac_reader_fifo_fifo_out_first;
wire ethmac_reader_fifo_fifo_out_last;
reg [10:0] ethmac_reader_counter = 11'd0;
reg ethmac_reader_counter_reset = 1'd0;
reg ethmac_reader_counter_ce = 1'd0;
wire ethmac_reader_last;
reg ethmac_reader_last_d = 1'd0;
wire [8:0] ethmac_reader_memory0_adr;
wire [31:0] ethmac_reader_memory0_dat_r;
wire [8:0] ethmac_reader_memory1_adr;
wire [31:0] ethmac_reader_memory1_dat_r;
wire ethmac_ev_irq;
wire [29:0] ethmac_sram0_bus_adr0;
wire [31:0] ethmac_sram0_bus_dat_w0;
wire [31:0] ethmac_sram0_bus_dat_r0;
wire [3:0] ethmac_sram0_bus_sel0;
wire ethmac_sram0_bus_cyc0;
wire ethmac_sram0_bus_stb0;
reg ethmac_sram0_bus_ack0 = 1'd0;
wire ethmac_sram0_bus_we0;
wire [2:0] ethmac_sram0_bus_cti0;
wire [1:0] ethmac_sram0_bus_bte0;
reg ethmac_sram0_bus_err0 = 1'd0;
wire [8:0] ethmac_sram0_adr0;
wire [31:0] ethmac_sram0_dat_r0;
wire [29:0] ethmac_sram1_bus_adr0;
wire [31:0] ethmac_sram1_bus_dat_w0;
wire [31:0] ethmac_sram1_bus_dat_r0;
wire [3:0] ethmac_sram1_bus_sel0;
wire ethmac_sram1_bus_cyc0;
wire ethmac_sram1_bus_stb0;
reg ethmac_sram1_bus_ack0 = 1'd0;
wire ethmac_sram1_bus_we0;
wire [2:0] ethmac_sram1_bus_cti0;
wire [1:0] ethmac_sram1_bus_bte0;
reg ethmac_sram1_bus_err0 = 1'd0;
wire [8:0] ethmac_sram1_adr0;
wire [31:0] ethmac_sram1_dat_r0;
wire [29:0] ethmac_sram0_bus_adr1;
wire [31:0] ethmac_sram0_bus_dat_w1;
wire [31:0] ethmac_sram0_bus_dat_r1;
wire [3:0] ethmac_sram0_bus_sel1;
wire ethmac_sram0_bus_cyc1;
wire ethmac_sram0_bus_stb1;
reg ethmac_sram0_bus_ack1 = 1'd0;
wire ethmac_sram0_bus_we1;
wire [2:0] ethmac_sram0_bus_cti1;
wire [1:0] ethmac_sram0_bus_bte1;
reg ethmac_sram0_bus_err1 = 1'd0;
wire [8:0] ethmac_sram0_adr1;
wire [31:0] ethmac_sram0_dat_r1;
reg [3:0] ethmac_sram0_we = 4'd0;
wire [31:0] ethmac_sram0_dat_w;
wire [29:0] ethmac_sram1_bus_adr1;
wire [31:0] ethmac_sram1_bus_dat_w1;
wire [31:0] ethmac_sram1_bus_dat_r1;
wire [3:0] ethmac_sram1_bus_sel1;
wire ethmac_sram1_bus_cyc1;
wire ethmac_sram1_bus_stb1;
reg ethmac_sram1_bus_ack1 = 1'd0;
wire ethmac_sram1_bus_we1;
wire [2:0] ethmac_sram1_bus_cti1;
wire [1:0] ethmac_sram1_bus_bte1;
reg ethmac_sram1_bus_err1 = 1'd0;
wire [8:0] ethmac_sram1_adr1;
wire [31:0] ethmac_sram1_dat_r1;
reg [3:0] ethmac_sram1_we = 4'd0;
wire [31:0] ethmac_sram1_dat_w;
reg [3:0] ethmac_slave_sel = 4'd0;
reg [3:0] ethmac_slave_sel_r = 4'd0;
wire [3:0] ice_gpo;
reg [3:0] ice_gpo_storage_full = 4'd0;
wire [3:0] ice_gpo_storage;
reg ice_gpo_re = 1'd0;
reg [2:0] ice_clkdiv = 3'd0;
wire [2:0] maxusb_o;
reg [2:0] max_spi_o_storage_full = 3'd0;
wire [2:0] max_spi_o_storage;
reg max_spi_o_re = 1'd0;
wire max_spi_i_status;
wire max_spi_irq_irq;
wire max_spi_irq_status;
wire max_spi_irq_pending;
wire max_spi_irq_trigger;
reg max_spi_irq_clear = 1'd0;
wire max_spi_irq_status_re;
wire max_spi_irq_status_r;
wire max_spi_irq_status_w;
wire max_spi_irq_pending_re;
wire max_spi_irq_pending_r;
wire max_spi_irq_pending_w;
reg max_spi_irq_storage_full = 1'd0;
wire max_spi_irq_storage;
reg max_spi_irq_re = 1'd0;
reg [1:0] refresher_state = 2'd0;
reg [1:0] refresher_next_state = 2'd0;
reg [2:0] bankmachine0_state = 3'd0;
reg [2:0] bankmachine0_next_state = 3'd0;
reg [2:0] bankmachine1_state = 3'd0;
reg [2:0] bankmachine1_next_state = 3'd0;
reg [2:0] bankmachine2_state = 3'd0;
reg [2:0] bankmachine2_next_state = 3'd0;
reg [2:0] bankmachine3_state = 3'd0;
reg [2:0] bankmachine3_next_state = 3'd0;
reg [2:0] bankmachine4_state = 3'd0;
reg [2:0] bankmachine4_next_state = 3'd0;
reg [2:0] bankmachine5_state = 3'd0;
reg [2:0] bankmachine5_next_state = 3'd0;
reg [2:0] bankmachine6_state = 3'd0;
reg [2:0] bankmachine6_next_state = 3'd0;
reg [2:0] bankmachine7_state = 3'd0;
reg [2:0] bankmachine7_next_state = 3'd0;
reg [4:0] multiplexer_state = 5'd0;
reg [4:0] multiplexer_next_state = 5'd0;
wire roundrobin0_request;
wire roundrobin0_grant;
wire roundrobin0_ce;
wire roundrobin1_request;
wire roundrobin1_grant;
wire roundrobin1_ce;
wire roundrobin2_request;
wire roundrobin2_grant;
wire roundrobin2_ce;
wire roundrobin3_request;
wire roundrobin3_grant;
wire roundrobin3_ce;
wire roundrobin4_request;
wire roundrobin4_grant;
wire roundrobin4_ce;
wire roundrobin5_request;
wire roundrobin5_grant;
wire roundrobin5_ce;
wire roundrobin6_request;
wire roundrobin6_grant;
wire roundrobin6_ce;
wire roundrobin7_request;
wire roundrobin7_grant;
wire roundrobin7_ce;
reg [2:0] rbank = 3'd0;
reg [2:0] wbank = 3'd0;
reg locked0 = 1'd0;
reg locked1 = 1'd0;
reg locked2 = 1'd0;
reg locked3 = 1'd0;
reg locked4 = 1'd0;
reg locked5 = 1'd0;
reg locked6 = 1'd0;
reg locked7 = 1'd0;
reg new_master_wdata_ready0 = 1'd0;
reg new_master_wdata_ready1 = 1'd0;
reg new_master_wdata_ready2 = 1'd0;
reg new_master_wdata_ready3 = 1'd0;
reg new_master_rdata_valid0 = 1'd0;
reg new_master_rdata_valid1 = 1'd0;
reg new_master_rdata_valid2 = 1'd0;
reg new_master_rdata_valid3 = 1'd0;
reg new_master_rdata_valid4 = 1'd0;
reg new_master_rdata_valid5 = 1'd0;
reg new_master_rdata_valid6 = 1'd0;
reg new_master_rdata_valid7 = 1'd0;
reg new_master_rdata_valid8 = 1'd0;
reg new_master_rdata_valid9 = 1'd0;
reg new_master_rdata_valid10 = 1'd0;
reg new_master_rdata_valid11 = 1'd0;
reg new_master_rdata_valid12 = 1'd0;
reg new_master_rdata_valid13 = 1'd0;
reg new_master_rdata_valid14 = 1'd0;
reg [2:0] cache_state = 3'd0;
reg [2:0] cache_next_state = 3'd0;
reg [1:0] litedramwishbone2native_state = 2'd0;
reg [1:0] litedramwishbone2native_next_state = 2'd0;
reg liteethmacgap_state = 1'd0;
reg liteethmacgap_next_state = 1'd0;
reg [1:0] liteethmacpreambleinserter_state = 2'd0;
reg [1:0] liteethmacpreambleinserter_next_state = 2'd0;
reg liteethmacpreamblechecker_state = 1'd0;
reg liteethmacpreamblechecker_next_state = 1'd0;
reg [1:0] liteethmaccrc32inserter_state = 2'd0;
reg [1:0] liteethmaccrc32inserter_next_state = 2'd0;
reg [1:0] liteethmaccrc32checker_state = 2'd0;
reg [1:0] liteethmaccrc32checker_next_state = 2'd0;
reg liteethmacpaddinginserter_state = 1'd0;
reg liteethmacpaddinginserter_next_state = 1'd0;
reg [2:0] liteethmacsramwriter_state = 3'd0;
reg [2:0] liteethmacsramwriter_next_state = 3'd0;
reg [31:0] ethmac_writer_errors_status_next_value = 32'd0;
reg ethmac_writer_errors_status_next_value_ce = 1'd0;
reg [1:0] liteethmacsramreader_state = 2'd0;
reg [1:0] liteethmacsramreader_next_state = 2'd0;
wire wb_sdram_con_request;
wire wb_sdram_con_grant;
wire [29:0] ethernetsoc_shared_adr;
wire [31:0] ethernetsoc_shared_dat_w;
reg [31:0] ethernetsoc_shared_dat_r = 32'd0;
wire [3:0] ethernetsoc_shared_sel;
wire ethernetsoc_shared_cyc;
wire ethernetsoc_shared_stb;
reg ethernetsoc_shared_ack = 1'd0;
wire ethernetsoc_shared_we;
wire [2:0] ethernetsoc_shared_cti;
wire [1:0] ethernetsoc_shared_bte;
wire ethernetsoc_shared_err;
wire [1:0] ethernetsoc_request;
reg ethernetsoc_grant = 1'd0;
reg [4:0] ethernetsoc_slave_sel = 5'd0;
reg [4:0] ethernetsoc_slave_sel_r = 5'd0;
reg ethernetsoc_error = 1'd0;
wire ethernetsoc_wait;
wire ethernetsoc_done;
reg [19:0] ethernetsoc_count = 20'd1000000;
wire [13:0] ethernetsoc_interface0_bank_bus_adr;
wire ethernetsoc_interface0_bank_bus_we;
wire [7:0] ethernetsoc_interface0_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface0_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank0_scratch3_re;
wire [7:0] ethernetsoc_csrbank0_scratch3_r;
wire [7:0] ethernetsoc_csrbank0_scratch3_w;
wire ethernetsoc_csrbank0_scratch2_re;
wire [7:0] ethernetsoc_csrbank0_scratch2_r;
wire [7:0] ethernetsoc_csrbank0_scratch2_w;
wire ethernetsoc_csrbank0_scratch1_re;
wire [7:0] ethernetsoc_csrbank0_scratch1_r;
wire [7:0] ethernetsoc_csrbank0_scratch1_w;
wire ethernetsoc_csrbank0_scratch0_re;
wire [7:0] ethernetsoc_csrbank0_scratch0_r;
wire [7:0] ethernetsoc_csrbank0_scratch0_w;
wire ethernetsoc_csrbank0_bus_errors3_re;
wire [7:0] ethernetsoc_csrbank0_bus_errors3_r;
wire [7:0] ethernetsoc_csrbank0_bus_errors3_w;
wire ethernetsoc_csrbank0_bus_errors2_re;
wire [7:0] ethernetsoc_csrbank0_bus_errors2_r;
wire [7:0] ethernetsoc_csrbank0_bus_errors2_w;
wire ethernetsoc_csrbank0_bus_errors1_re;
wire [7:0] ethernetsoc_csrbank0_bus_errors1_r;
wire [7:0] ethernetsoc_csrbank0_bus_errors1_w;
wire ethernetsoc_csrbank0_bus_errors0_re;
wire [7:0] ethernetsoc_csrbank0_bus_errors0_r;
wire [7:0] ethernetsoc_csrbank0_bus_errors0_w;
wire ethernetsoc_csrbank0_sel;
wire [13:0] ethernetsoc_interface1_bank_bus_adr;
wire ethernetsoc_interface1_bank_bus_we;
wire [7:0] ethernetsoc_interface1_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface1_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank1_dly_sel0_re;
wire [1:0] ethernetsoc_csrbank1_dly_sel0_r;
wire [1:0] ethernetsoc_csrbank1_dly_sel0_w;
wire ethernetsoc_csrbank1_burstdet_seen_re;
wire [1:0] ethernetsoc_csrbank1_burstdet_seen_r;
wire [1:0] ethernetsoc_csrbank1_burstdet_seen_w;
wire ethernetsoc_csrbank1_sel;
wire [13:0] ethernetsoc_interface2_bank_bus_adr;
wire ethernetsoc_interface2_bank_bus_we;
wire [7:0] ethernetsoc_interface2_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface2_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank2_sram_writer_slot_re;
wire ethernetsoc_csrbank2_sram_writer_slot_r;
wire ethernetsoc_csrbank2_sram_writer_slot_w;
wire ethernetsoc_csrbank2_sram_writer_length3_re;
wire [7:0] ethernetsoc_csrbank2_sram_writer_length3_r;
wire [7:0] ethernetsoc_csrbank2_sram_writer_length3_w;
wire ethernetsoc_csrbank2_sram_writer_length2_re;
wire [7:0] ethernetsoc_csrbank2_sram_writer_length2_r;
wire [7:0] ethernetsoc_csrbank2_sram_writer_length2_w;
wire ethernetsoc_csrbank2_sram_writer_length1_re;
wire [7:0] ethernetsoc_csrbank2_sram_writer_length1_r;
wire [7:0] ethernetsoc_csrbank2_sram_writer_length1_w;
wire ethernetsoc_csrbank2_sram_writer_length0_re;
wire [7:0] ethernetsoc_csrbank2_sram_writer_length0_r;
wire [7:0] ethernetsoc_csrbank2_sram_writer_length0_w;
wire ethernetsoc_csrbank2_sram_writer_errors3_re;
wire [7:0] ethernetsoc_csrbank2_sram_writer_errors3_r;
wire [7:0] ethernetsoc_csrbank2_sram_writer_errors3_w;
wire ethernetsoc_csrbank2_sram_writer_errors2_re;
wire [7:0] ethernetsoc_csrbank2_sram_writer_errors2_r;
wire [7:0] ethernetsoc_csrbank2_sram_writer_errors2_w;
wire ethernetsoc_csrbank2_sram_writer_errors1_re;
wire [7:0] ethernetsoc_csrbank2_sram_writer_errors1_r;
wire [7:0] ethernetsoc_csrbank2_sram_writer_errors1_w;
wire ethernetsoc_csrbank2_sram_writer_errors0_re;
wire [7:0] ethernetsoc_csrbank2_sram_writer_errors0_r;
wire [7:0] ethernetsoc_csrbank2_sram_writer_errors0_w;
wire ethernetsoc_csrbank2_sram_writer_ev_enable0_re;
wire ethernetsoc_csrbank2_sram_writer_ev_enable0_r;
wire ethernetsoc_csrbank2_sram_writer_ev_enable0_w;
wire ethernetsoc_csrbank2_sram_reader_ready_re;
wire ethernetsoc_csrbank2_sram_reader_ready_r;
wire ethernetsoc_csrbank2_sram_reader_ready_w;
wire ethernetsoc_csrbank2_sram_reader_level_re;
wire [1:0] ethernetsoc_csrbank2_sram_reader_level_r;
wire [1:0] ethernetsoc_csrbank2_sram_reader_level_w;
wire ethernetsoc_csrbank2_sram_reader_slot0_re;
wire ethernetsoc_csrbank2_sram_reader_slot0_r;
wire ethernetsoc_csrbank2_sram_reader_slot0_w;
wire ethernetsoc_csrbank2_sram_reader_length1_re;
wire [2:0] ethernetsoc_csrbank2_sram_reader_length1_r;
wire [2:0] ethernetsoc_csrbank2_sram_reader_length1_w;
wire ethernetsoc_csrbank2_sram_reader_length0_re;
wire [7:0] ethernetsoc_csrbank2_sram_reader_length0_r;
wire [7:0] ethernetsoc_csrbank2_sram_reader_length0_w;
wire ethernetsoc_csrbank2_sram_reader_ev_enable0_re;
wire ethernetsoc_csrbank2_sram_reader_ev_enable0_r;
wire ethernetsoc_csrbank2_sram_reader_ev_enable0_w;
wire ethernetsoc_csrbank2_preamble_crc_re;
wire ethernetsoc_csrbank2_preamble_crc_r;
wire ethernetsoc_csrbank2_preamble_crc_w;
wire ethernetsoc_csrbank2_preamble_errors3_re;
wire [7:0] ethernetsoc_csrbank2_preamble_errors3_r;
wire [7:0] ethernetsoc_csrbank2_preamble_errors3_w;
wire ethernetsoc_csrbank2_preamble_errors2_re;
wire [7:0] ethernetsoc_csrbank2_preamble_errors2_r;
wire [7:0] ethernetsoc_csrbank2_preamble_errors2_w;
wire ethernetsoc_csrbank2_preamble_errors1_re;
wire [7:0] ethernetsoc_csrbank2_preamble_errors1_r;
wire [7:0] ethernetsoc_csrbank2_preamble_errors1_w;
wire ethernetsoc_csrbank2_preamble_errors0_re;
wire [7:0] ethernetsoc_csrbank2_preamble_errors0_r;
wire [7:0] ethernetsoc_csrbank2_preamble_errors0_w;
wire ethernetsoc_csrbank2_crc_errors3_re;
wire [7:0] ethernetsoc_csrbank2_crc_errors3_r;
wire [7:0] ethernetsoc_csrbank2_crc_errors3_w;
wire ethernetsoc_csrbank2_crc_errors2_re;
wire [7:0] ethernetsoc_csrbank2_crc_errors2_r;
wire [7:0] ethernetsoc_csrbank2_crc_errors2_w;
wire ethernetsoc_csrbank2_crc_errors1_re;
wire [7:0] ethernetsoc_csrbank2_crc_errors1_r;
wire [7:0] ethernetsoc_csrbank2_crc_errors1_w;
wire ethernetsoc_csrbank2_crc_errors0_re;
wire [7:0] ethernetsoc_csrbank2_crc_errors0_r;
wire [7:0] ethernetsoc_csrbank2_crc_errors0_w;
wire ethernetsoc_csrbank2_sel;
wire [13:0] ethernetsoc_interface3_bank_bus_adr;
wire ethernetsoc_interface3_bank_bus_we;
wire [7:0] ethernetsoc_interface3_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface3_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank3_crg_reset0_re;
wire ethernetsoc_csrbank3_crg_reset0_r;
wire ethernetsoc_csrbank3_crg_reset0_w;
wire ethernetsoc_csrbank3_mdio_w0_re;
wire [2:0] ethernetsoc_csrbank3_mdio_w0_r;
wire [2:0] ethernetsoc_csrbank3_mdio_w0_w;
wire ethernetsoc_csrbank3_mdio_r_re;
wire ethernetsoc_csrbank3_mdio_r_r;
wire ethernetsoc_csrbank3_mdio_r_w;
wire ethernetsoc_csrbank3_sel;
wire [13:0] ethernetsoc_interface4_bank_bus_adr;
wire ethernetsoc_interface4_bank_bus_we;
wire [7:0] ethernetsoc_interface4_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface4_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank4_out0_re;
wire [3:0] ethernetsoc_csrbank4_out0_r;
wire [3:0] ethernetsoc_csrbank4_out0_w;
wire ethernetsoc_csrbank4_sel;
wire [13:0] ethernetsoc_interface5_bank_bus_adr;
wire ethernetsoc_interface5_bank_bus_we;
wire [7:0] ethernetsoc_interface5_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface5_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank5_in_re;
wire ethernetsoc_csrbank5_in_r;
wire ethernetsoc_csrbank5_in_w;
wire ethernetsoc_csrbank5_sel;
wire [13:0] ethernetsoc_interface6_bank_bus_adr;
wire ethernetsoc_interface6_bank_bus_we;
wire [7:0] ethernetsoc_interface6_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface6_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank6_ev_enable0_re;
wire ethernetsoc_csrbank6_ev_enable0_r;
wire ethernetsoc_csrbank6_ev_enable0_w;
wire ethernetsoc_csrbank6_sel;
wire [13:0] ethernetsoc_interface7_bank_bus_adr;
wire ethernetsoc_interface7_bank_bus_we;
wire [7:0] ethernetsoc_interface7_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface7_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank7_out0_re;
wire [2:0] ethernetsoc_csrbank7_out0_r;
wire [2:0] ethernetsoc_csrbank7_out0_w;
wire ethernetsoc_csrbank7_sel;
wire [13:0] ethernetsoc_interface8_bank_bus_adr;
wire ethernetsoc_interface8_bank_bus_we;
wire [7:0] ethernetsoc_interface8_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface8_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank8_dfii_control0_re;
wire [3:0] ethernetsoc_csrbank8_dfii_control0_r;
wire [3:0] ethernetsoc_csrbank8_dfii_control0_w;
wire ethernetsoc_csrbank8_dfii_pi0_command0_re;
wire [5:0] ethernetsoc_csrbank8_dfii_pi0_command0_r;
wire [5:0] ethernetsoc_csrbank8_dfii_pi0_command0_w;
wire ethernetsoc_csrbank8_dfii_pi0_address1_re;
wire [4:0] ethernetsoc_csrbank8_dfii_pi0_address1_r;
wire [4:0] ethernetsoc_csrbank8_dfii_pi0_address1_w;
wire ethernetsoc_csrbank8_dfii_pi0_address0_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_address0_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_address0_w;
wire ethernetsoc_csrbank8_dfii_pi0_baddress0_re;
wire [2:0] ethernetsoc_csrbank8_dfii_pi0_baddress0_r;
wire [2:0] ethernetsoc_csrbank8_dfii_pi0_baddress0_w;
wire ethernetsoc_csrbank8_dfii_pi0_wrdata7_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata7_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata7_w;
wire ethernetsoc_csrbank8_dfii_pi0_wrdata6_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata6_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata6_w;
wire ethernetsoc_csrbank8_dfii_pi0_wrdata5_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata5_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata5_w;
wire ethernetsoc_csrbank8_dfii_pi0_wrdata4_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata4_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata4_w;
wire ethernetsoc_csrbank8_dfii_pi0_wrdata3_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata3_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata3_w;
wire ethernetsoc_csrbank8_dfii_pi0_wrdata2_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata2_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata2_w;
wire ethernetsoc_csrbank8_dfii_pi0_wrdata1_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata1_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata1_w;
wire ethernetsoc_csrbank8_dfii_pi0_wrdata0_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata0_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_wrdata0_w;
wire ethernetsoc_csrbank8_dfii_pi0_rddata7_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata7_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata7_w;
wire ethernetsoc_csrbank8_dfii_pi0_rddata6_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata6_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata6_w;
wire ethernetsoc_csrbank8_dfii_pi0_rddata5_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata5_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata5_w;
wire ethernetsoc_csrbank8_dfii_pi0_rddata4_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata4_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata4_w;
wire ethernetsoc_csrbank8_dfii_pi0_rddata3_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata3_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata3_w;
wire ethernetsoc_csrbank8_dfii_pi0_rddata2_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata2_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata2_w;
wire ethernetsoc_csrbank8_dfii_pi0_rddata1_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata1_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata1_w;
wire ethernetsoc_csrbank8_dfii_pi0_rddata0_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata0_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi0_rddata0_w;
wire ethernetsoc_csrbank8_dfii_pi1_command0_re;
wire [5:0] ethernetsoc_csrbank8_dfii_pi1_command0_r;
wire [5:0] ethernetsoc_csrbank8_dfii_pi1_command0_w;
wire ethernetsoc_csrbank8_dfii_pi1_address1_re;
wire [4:0] ethernetsoc_csrbank8_dfii_pi1_address1_r;
wire [4:0] ethernetsoc_csrbank8_dfii_pi1_address1_w;
wire ethernetsoc_csrbank8_dfii_pi1_address0_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_address0_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_address0_w;
wire ethernetsoc_csrbank8_dfii_pi1_baddress0_re;
wire [2:0] ethernetsoc_csrbank8_dfii_pi1_baddress0_r;
wire [2:0] ethernetsoc_csrbank8_dfii_pi1_baddress0_w;
wire ethernetsoc_csrbank8_dfii_pi1_wrdata7_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata7_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata7_w;
wire ethernetsoc_csrbank8_dfii_pi1_wrdata6_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata6_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata6_w;
wire ethernetsoc_csrbank8_dfii_pi1_wrdata5_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata5_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata5_w;
wire ethernetsoc_csrbank8_dfii_pi1_wrdata4_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata4_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata4_w;
wire ethernetsoc_csrbank8_dfii_pi1_wrdata3_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata3_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata3_w;
wire ethernetsoc_csrbank8_dfii_pi1_wrdata2_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata2_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata2_w;
wire ethernetsoc_csrbank8_dfii_pi1_wrdata1_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata1_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata1_w;
wire ethernetsoc_csrbank8_dfii_pi1_wrdata0_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata0_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_wrdata0_w;
wire ethernetsoc_csrbank8_dfii_pi1_rddata7_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata7_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata7_w;
wire ethernetsoc_csrbank8_dfii_pi1_rddata6_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata6_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata6_w;
wire ethernetsoc_csrbank8_dfii_pi1_rddata5_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata5_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata5_w;
wire ethernetsoc_csrbank8_dfii_pi1_rddata4_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata4_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata4_w;
wire ethernetsoc_csrbank8_dfii_pi1_rddata3_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata3_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata3_w;
wire ethernetsoc_csrbank8_dfii_pi1_rddata2_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata2_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata2_w;
wire ethernetsoc_csrbank8_dfii_pi1_rddata1_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata1_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata1_w;
wire ethernetsoc_csrbank8_dfii_pi1_rddata0_re;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata0_r;
wire [7:0] ethernetsoc_csrbank8_dfii_pi1_rddata0_w;
wire ethernetsoc_csrbank8_sel;
wire [13:0] ethernetsoc_interface9_bank_bus_adr;
wire ethernetsoc_interface9_bank_bus_we;
wire [7:0] ethernetsoc_interface9_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface9_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank9_load3_re;
wire [7:0] ethernetsoc_csrbank9_load3_r;
wire [7:0] ethernetsoc_csrbank9_load3_w;
wire ethernetsoc_csrbank9_load2_re;
wire [7:0] ethernetsoc_csrbank9_load2_r;
wire [7:0] ethernetsoc_csrbank9_load2_w;
wire ethernetsoc_csrbank9_load1_re;
wire [7:0] ethernetsoc_csrbank9_load1_r;
wire [7:0] ethernetsoc_csrbank9_load1_w;
wire ethernetsoc_csrbank9_load0_re;
wire [7:0] ethernetsoc_csrbank9_load0_r;
wire [7:0] ethernetsoc_csrbank9_load0_w;
wire ethernetsoc_csrbank9_reload3_re;
wire [7:0] ethernetsoc_csrbank9_reload3_r;
wire [7:0] ethernetsoc_csrbank9_reload3_w;
wire ethernetsoc_csrbank9_reload2_re;
wire [7:0] ethernetsoc_csrbank9_reload2_r;
wire [7:0] ethernetsoc_csrbank9_reload2_w;
wire ethernetsoc_csrbank9_reload1_re;
wire [7:0] ethernetsoc_csrbank9_reload1_r;
wire [7:0] ethernetsoc_csrbank9_reload1_w;
wire ethernetsoc_csrbank9_reload0_re;
wire [7:0] ethernetsoc_csrbank9_reload0_r;
wire [7:0] ethernetsoc_csrbank9_reload0_w;
wire ethernetsoc_csrbank9_en0_re;
wire ethernetsoc_csrbank9_en0_r;
wire ethernetsoc_csrbank9_en0_w;
wire ethernetsoc_csrbank9_value3_re;
wire [7:0] ethernetsoc_csrbank9_value3_r;
wire [7:0] ethernetsoc_csrbank9_value3_w;
wire ethernetsoc_csrbank9_value2_re;
wire [7:0] ethernetsoc_csrbank9_value2_r;
wire [7:0] ethernetsoc_csrbank9_value2_w;
wire ethernetsoc_csrbank9_value1_re;
wire [7:0] ethernetsoc_csrbank9_value1_r;
wire [7:0] ethernetsoc_csrbank9_value1_w;
wire ethernetsoc_csrbank9_value0_re;
wire [7:0] ethernetsoc_csrbank9_value0_r;
wire [7:0] ethernetsoc_csrbank9_value0_w;
wire ethernetsoc_csrbank9_ev_enable0_re;
wire ethernetsoc_csrbank9_ev_enable0_r;
wire ethernetsoc_csrbank9_ev_enable0_w;
wire ethernetsoc_csrbank9_sel;
wire [13:0] ethernetsoc_interface10_bank_bus_adr;
wire ethernetsoc_interface10_bank_bus_we;
wire [7:0] ethernetsoc_interface10_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface10_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank10_txfull_re;
wire ethernetsoc_csrbank10_txfull_r;
wire ethernetsoc_csrbank10_txfull_w;
wire ethernetsoc_csrbank10_rxempty_re;
wire ethernetsoc_csrbank10_rxempty_r;
wire ethernetsoc_csrbank10_rxempty_w;
wire ethernetsoc_csrbank10_ev_enable0_re;
wire [1:0] ethernetsoc_csrbank10_ev_enable0_r;
wire [1:0] ethernetsoc_csrbank10_ev_enable0_w;
wire ethernetsoc_csrbank10_sel;
wire [13:0] ethernetsoc_interface11_bank_bus_adr;
wire ethernetsoc_interface11_bank_bus_we;
wire [7:0] ethernetsoc_interface11_bank_bus_dat_w;
reg [7:0] ethernetsoc_interface11_bank_bus_dat_r = 8'd0;
wire ethernetsoc_csrbank11_tuning_word3_re;
wire [7:0] ethernetsoc_csrbank11_tuning_word3_r;
wire [7:0] ethernetsoc_csrbank11_tuning_word3_w;
wire ethernetsoc_csrbank11_tuning_word2_re;
wire [7:0] ethernetsoc_csrbank11_tuning_word2_r;
wire [7:0] ethernetsoc_csrbank11_tuning_word2_w;
wire ethernetsoc_csrbank11_tuning_word1_re;
wire [7:0] ethernetsoc_csrbank11_tuning_word1_r;
wire [7:0] ethernetsoc_csrbank11_tuning_word1_w;
wire ethernetsoc_csrbank11_tuning_word0_re;
wire [7:0] ethernetsoc_csrbank11_tuning_word0_r;
wire [7:0] ethernetsoc_csrbank11_tuning_word0_w;
wire ethernetsoc_csrbank11_sel;
reg rhs_array_muxed0 = 1'd0;
reg [12:0] rhs_array_muxed1 = 13'd0;
reg [2:0] rhs_array_muxed2 = 3'd0;
reg rhs_array_muxed3 = 1'd0;
reg rhs_array_muxed4 = 1'd0;
reg rhs_array_muxed5 = 1'd0;
reg t_array_muxed0 = 1'd0;
reg t_array_muxed1 = 1'd0;
reg t_array_muxed2 = 1'd0;
reg rhs_array_muxed6 = 1'd0;
reg [12:0] rhs_array_muxed7 = 13'd0;
reg [2:0] rhs_array_muxed8 = 3'd0;
reg rhs_array_muxed9 = 1'd0;
reg rhs_array_muxed10 = 1'd0;
reg rhs_array_muxed11 = 1'd0;
reg t_array_muxed3 = 1'd0;
reg t_array_muxed4 = 1'd0;
reg t_array_muxed5 = 1'd0;
reg [19:0] rhs_array_muxed12 = 20'd0;
reg rhs_array_muxed13 = 1'd0;
reg rhs_array_muxed14 = 1'd0;
reg [19:0] rhs_array_muxed15 = 20'd0;
reg rhs_array_muxed16 = 1'd0;
reg rhs_array_muxed17 = 1'd0;
reg [19:0] rhs_array_muxed18 = 20'd0;
reg rhs_array_muxed19 = 1'd0;
reg rhs_array_muxed20 = 1'd0;
reg [19:0] rhs_array_muxed21 = 20'd0;
reg rhs_array_muxed22 = 1'd0;
reg rhs_array_muxed23 = 1'd0;
reg [19:0] rhs_array_muxed24 = 20'd0;
reg rhs_array_muxed25 = 1'd0;
reg rhs_array_muxed26 = 1'd0;
reg [19:0] rhs_array_muxed27 = 20'd0;
reg rhs_array_muxed28 = 1'd0;
reg rhs_array_muxed29 = 1'd0;
reg [19:0] rhs_array_muxed30 = 20'd0;
reg rhs_array_muxed31 = 1'd0;
reg rhs_array_muxed32 = 1'd0;
reg [19:0] rhs_array_muxed33 = 20'd0;
reg rhs_array_muxed34 = 1'd0;
reg rhs_array_muxed35 = 1'd0;
reg [29:0] rhs_array_muxed36 = 30'd0;
reg [31:0] rhs_array_muxed37 = 32'd0;
reg [3:0] rhs_array_muxed38 = 4'd0;
reg rhs_array_muxed39 = 1'd0;
reg rhs_array_muxed40 = 1'd0;
reg rhs_array_muxed41 = 1'd0;
reg [2:0] rhs_array_muxed42 = 3'd0;
reg [1:0] rhs_array_muxed43 = 2'd0;
reg [29:0] rhs_array_muxed44 = 30'd0;
reg [31:0] rhs_array_muxed45 = 32'd0;
reg [3:0] rhs_array_muxed46 = 4'd0;
reg rhs_array_muxed47 = 1'd0;
reg rhs_array_muxed48 = 1'd0;
reg rhs_array_muxed49 = 1'd0;
reg [2:0] rhs_array_muxed50 = 3'd0;
reg [1:0] rhs_array_muxed51 = 2'd0;
reg [2:0] array_muxed0 = 3'd0;
reg [12:0] array_muxed1 = 13'd0;
reg array_muxed2 = 1'd0;
reg array_muxed3 = 1'd0;
reg array_muxed4 = 1'd0;
reg array_muxed5 = 1'd0;
reg array_muxed6 = 1'd0;
reg [2:0] array_muxed7 = 3'd0;
reg [12:0] array_muxed8 = 13'd0;
reg array_muxed9 = 1'd0;
reg array_muxed10 = 1'd0;
reg array_muxed11 = 1'd0;
reg array_muxed12 = 1'd0;
reg array_muxed13 = 1'd0;
reg multiregimpl0_regs0 = 1'd0;
reg multiregimpl0_regs1 = 1'd0;
wire rst10;
wire rst11;
reg multiregimpl1_regs0 = 1'd0;
reg multiregimpl1_regs1 = 1'd0;
wire rst12;
wire rst13;
reg multiregimpl2_regs0 = 1'd0;
reg multiregimpl2_regs1 = 1'd0;
reg multiregimpl3_regs0 = 1'd0;
reg multiregimpl3_regs1 = 1'd0;
reg multiregimpl4_regs0 = 1'd0;
reg multiregimpl4_regs1 = 1'd0;
reg [6:0] multiregimpl5_regs0 = 7'd0;
reg [6:0] multiregimpl5_regs1 = 7'd0;
reg [6:0] multiregimpl6_regs0 = 7'd0;
reg [6:0] multiregimpl6_regs1 = 7'd0;
reg [6:0] multiregimpl7_regs0 = 7'd0;
reg [6:0] multiregimpl7_regs1 = 7'd0;
reg [6:0] multiregimpl8_regs0 = 7'd0;
reg [6:0] multiregimpl8_regs1 = 7'd0;
reg multiregimpl9_regs0 = 1'd0;
reg multiregimpl9_regs1 = 1'd0;

assign ethernetsoc_vexriscv_reset = ethernetsoc_ctrl_reset;
assign ethernetsoc_vexriscv_jtag_tdi = jtag_tdi;
assign ethernetsoc_vexriscv_jtag_tms = jtag_tms;
assign ethernetsoc_vexriscv_jtag_tck = jtag_tck;
assign jtag_tdo = ethernetsoc_vexriscv_jtag_tdo;
assign ethernetsoc_stop = ethernetsoc_ecp5ddrphy_stop0;
assign user_led0 = ethernetsoc_led_counter[26];
assign ice_creset = ice_gpo[0];
assign ice_csn = ice_gpo[1];
assign ice_sck = ice_gpo[2];
assign ice_mosi = ice_gpo[3];
assign ice_user_clk = ice_clkdiv[2];
assign maxusb_csn = maxusb_o[0];
assign maxusb_sck = maxusb_o[1];
assign maxusb_mosi = maxusb_o[2];
assign ethernetsoc_ctrl_bus_error = ethernetsoc_error;
always @(*) begin
	ethernetsoc_vexriscv_interrupt <= 32'd0;
	ethernetsoc_vexriscv_interrupt[1] <= ethernetsoc_timer0_irq;
	ethernetsoc_vexriscv_interrupt[2] <= ethernetsoc_uart_irq;
	ethernetsoc_vexriscv_interrupt[3] <= ethmac_ev_irq;
	ethernetsoc_vexriscv_interrupt[4] <= max_spi_irq_irq;
end
assign ethernetsoc_ctrl_reset = ethernetsoc_ctrl_reset_reset_re;
assign ethernetsoc_ctrl_bus_errors_status = ethernetsoc_ctrl_bus_errors;
assign ethernetsoc_rom_adr = ethernetsoc_rom_bus_adr[12:0];
assign ethernetsoc_rom_bus_dat_r = ethernetsoc_rom_dat_r;
always @(*) begin
	ethernetsoc_sram_we <= 4'd0;
	ethernetsoc_sram_we[0] <= (((ethernetsoc_sram_bus_cyc & ethernetsoc_sram_bus_stb) & ethernetsoc_sram_bus_we) & ethernetsoc_sram_bus_sel[0]);
	ethernetsoc_sram_we[1] <= (((ethernetsoc_sram_bus_cyc & ethernetsoc_sram_bus_stb) & ethernetsoc_sram_bus_we) & ethernetsoc_sram_bus_sel[1]);
	ethernetsoc_sram_we[2] <= (((ethernetsoc_sram_bus_cyc & ethernetsoc_sram_bus_stb) & ethernetsoc_sram_bus_we) & ethernetsoc_sram_bus_sel[2]);
	ethernetsoc_sram_we[3] <= (((ethernetsoc_sram_bus_cyc & ethernetsoc_sram_bus_stb) & ethernetsoc_sram_bus_we) & ethernetsoc_sram_bus_sel[3]);
end
assign ethernetsoc_sram_adr = ethernetsoc_sram_bus_adr[11:0];
assign ethernetsoc_sram_bus_dat_r = ethernetsoc_sram_dat_r;
assign ethernetsoc_sram_dat_w = ethernetsoc_sram_bus_dat_w;
assign ethernetsoc_uart_tx_fifo_sink_valid = ethernetsoc_uart_rxtx_re;
assign ethernetsoc_uart_tx_fifo_sink_payload_data = ethernetsoc_uart_rxtx_r;
assign ethernetsoc_uart_txfull_status = (~ethernetsoc_uart_tx_fifo_sink_ready);
assign ethernetsoc_uart_phy_sink_valid = ethernetsoc_uart_tx_fifo_source_valid;
assign ethernetsoc_uart_tx_fifo_source_ready = ethernetsoc_uart_phy_sink_ready;
assign ethernetsoc_uart_phy_sink_first = ethernetsoc_uart_tx_fifo_source_first;
assign ethernetsoc_uart_phy_sink_last = ethernetsoc_uart_tx_fifo_source_last;
assign ethernetsoc_uart_phy_sink_payload_data = ethernetsoc_uart_tx_fifo_source_payload_data;
assign ethernetsoc_uart_tx_trigger = (~ethernetsoc_uart_tx_fifo_sink_ready);
assign ethernetsoc_uart_rx_fifo_sink_valid = ethernetsoc_uart_phy_source_valid;
assign ethernetsoc_uart_phy_source_ready = ethernetsoc_uart_rx_fifo_sink_ready;
assign ethernetsoc_uart_rx_fifo_sink_first = ethernetsoc_uart_phy_source_first;
assign ethernetsoc_uart_rx_fifo_sink_last = ethernetsoc_uart_phy_source_last;
assign ethernetsoc_uart_rx_fifo_sink_payload_data = ethernetsoc_uart_phy_source_payload_data;
assign ethernetsoc_uart_rxempty_status = (~ethernetsoc_uart_rx_fifo_source_valid);
assign ethernetsoc_uart_rxtx_w = ethernetsoc_uart_rx_fifo_source_payload_data;
assign ethernetsoc_uart_rx_fifo_source_ready = ethernetsoc_uart_rx_clear;
assign ethernetsoc_uart_rx_trigger = (~ethernetsoc_uart_rx_fifo_source_valid);
always @(*) begin
	ethernetsoc_uart_tx_clear <= 1'd0;
	if ((ethernetsoc_uart_eventmanager_pending_re & ethernetsoc_uart_eventmanager_pending_r[0])) begin
		ethernetsoc_uart_tx_clear <= 1'd1;
	end
end
always @(*) begin
	ethernetsoc_uart_eventmanager_status_w <= 2'd0;
	ethernetsoc_uart_eventmanager_status_w[0] <= ethernetsoc_uart_tx_status;
	ethernetsoc_uart_eventmanager_status_w[1] <= ethernetsoc_uart_rx_status;
end
always @(*) begin
	ethernetsoc_uart_rx_clear <= 1'd0;
	if ((ethernetsoc_uart_eventmanager_pending_re & ethernetsoc_uart_eventmanager_pending_r[1])) begin
		ethernetsoc_uart_rx_clear <= 1'd1;
	end
end
always @(*) begin
	ethernetsoc_uart_eventmanager_pending_w <= 2'd0;
	ethernetsoc_uart_eventmanager_pending_w[0] <= ethernetsoc_uart_tx_pending;
	ethernetsoc_uart_eventmanager_pending_w[1] <= ethernetsoc_uart_rx_pending;
end
assign ethernetsoc_uart_irq = ((ethernetsoc_uart_eventmanager_pending_w[0] & ethernetsoc_uart_eventmanager_storage[0]) | (ethernetsoc_uart_eventmanager_pending_w[1] & ethernetsoc_uart_eventmanager_storage[1]));
assign ethernetsoc_uart_tx_status = ethernetsoc_uart_tx_trigger;
assign ethernetsoc_uart_rx_status = ethernetsoc_uart_rx_trigger;
assign ethernetsoc_uart_tx_fifo_syncfifo_din = {ethernetsoc_uart_tx_fifo_fifo_in_last, ethernetsoc_uart_tx_fifo_fifo_in_first, ethernetsoc_uart_tx_fifo_fifo_in_payload_data};
assign {ethernetsoc_uart_tx_fifo_fifo_out_last, ethernetsoc_uart_tx_fifo_fifo_out_first, ethernetsoc_uart_tx_fifo_fifo_out_payload_data} = ethernetsoc_uart_tx_fifo_syncfifo_dout;
assign ethernetsoc_uart_tx_fifo_sink_ready = ethernetsoc_uart_tx_fifo_syncfifo_writable;
assign ethernetsoc_uart_tx_fifo_syncfifo_we = ethernetsoc_uart_tx_fifo_sink_valid;
assign ethernetsoc_uart_tx_fifo_fifo_in_first = ethernetsoc_uart_tx_fifo_sink_first;
assign ethernetsoc_uart_tx_fifo_fifo_in_last = ethernetsoc_uart_tx_fifo_sink_last;
assign ethernetsoc_uart_tx_fifo_fifo_in_payload_data = ethernetsoc_uart_tx_fifo_sink_payload_data;
assign ethernetsoc_uart_tx_fifo_source_valid = ethernetsoc_uart_tx_fifo_readable;
assign ethernetsoc_uart_tx_fifo_source_first = ethernetsoc_uart_tx_fifo_fifo_out_first;
assign ethernetsoc_uart_tx_fifo_source_last = ethernetsoc_uart_tx_fifo_fifo_out_last;
assign ethernetsoc_uart_tx_fifo_source_payload_data = ethernetsoc_uart_tx_fifo_fifo_out_payload_data;
assign ethernetsoc_uart_tx_fifo_re = ethernetsoc_uart_tx_fifo_source_ready;
assign ethernetsoc_uart_tx_fifo_syncfifo_re = (ethernetsoc_uart_tx_fifo_syncfifo_readable & ((~ethernetsoc_uart_tx_fifo_readable) | ethernetsoc_uart_tx_fifo_re));
assign ethernetsoc_uart_tx_fifo_level1 = (ethernetsoc_uart_tx_fifo_level0 + ethernetsoc_uart_tx_fifo_readable);
always @(*) begin
	ethernetsoc_uart_tx_fifo_wrport_adr <= 4'd0;
	if (ethernetsoc_uart_tx_fifo_replace) begin
		ethernetsoc_uart_tx_fifo_wrport_adr <= (ethernetsoc_uart_tx_fifo_produce - 1'd1);
	end else begin
		ethernetsoc_uart_tx_fifo_wrport_adr <= ethernetsoc_uart_tx_fifo_produce;
	end
end
assign ethernetsoc_uart_tx_fifo_wrport_dat_w = ethernetsoc_uart_tx_fifo_syncfifo_din;
assign ethernetsoc_uart_tx_fifo_wrport_we = (ethernetsoc_uart_tx_fifo_syncfifo_we & (ethernetsoc_uart_tx_fifo_syncfifo_writable | ethernetsoc_uart_tx_fifo_replace));
assign ethernetsoc_uart_tx_fifo_do_read = (ethernetsoc_uart_tx_fifo_syncfifo_readable & ethernetsoc_uart_tx_fifo_syncfifo_re);
assign ethernetsoc_uart_tx_fifo_rdport_adr = ethernetsoc_uart_tx_fifo_consume;
assign ethernetsoc_uart_tx_fifo_syncfifo_dout = ethernetsoc_uart_tx_fifo_rdport_dat_r;
assign ethernetsoc_uart_tx_fifo_rdport_re = ethernetsoc_uart_tx_fifo_do_read;
assign ethernetsoc_uart_tx_fifo_syncfifo_writable = (ethernetsoc_uart_tx_fifo_level0 != 5'd16);
assign ethernetsoc_uart_tx_fifo_syncfifo_readable = (ethernetsoc_uart_tx_fifo_level0 != 1'd0);
assign ethernetsoc_uart_rx_fifo_syncfifo_din = {ethernetsoc_uart_rx_fifo_fifo_in_last, ethernetsoc_uart_rx_fifo_fifo_in_first, ethernetsoc_uart_rx_fifo_fifo_in_payload_data};
assign {ethernetsoc_uart_rx_fifo_fifo_out_last, ethernetsoc_uart_rx_fifo_fifo_out_first, ethernetsoc_uart_rx_fifo_fifo_out_payload_data} = ethernetsoc_uart_rx_fifo_syncfifo_dout;
assign ethernetsoc_uart_rx_fifo_sink_ready = ethernetsoc_uart_rx_fifo_syncfifo_writable;
assign ethernetsoc_uart_rx_fifo_syncfifo_we = ethernetsoc_uart_rx_fifo_sink_valid;
assign ethernetsoc_uart_rx_fifo_fifo_in_first = ethernetsoc_uart_rx_fifo_sink_first;
assign ethernetsoc_uart_rx_fifo_fifo_in_last = ethernetsoc_uart_rx_fifo_sink_last;
assign ethernetsoc_uart_rx_fifo_fifo_in_payload_data = ethernetsoc_uart_rx_fifo_sink_payload_data;
assign ethernetsoc_uart_rx_fifo_source_valid = ethernetsoc_uart_rx_fifo_readable;
assign ethernetsoc_uart_rx_fifo_source_first = ethernetsoc_uart_rx_fifo_fifo_out_first;
assign ethernetsoc_uart_rx_fifo_source_last = ethernetsoc_uart_rx_fifo_fifo_out_last;
assign ethernetsoc_uart_rx_fifo_source_payload_data = ethernetsoc_uart_rx_fifo_fifo_out_payload_data;
assign ethernetsoc_uart_rx_fifo_re = ethernetsoc_uart_rx_fifo_source_ready;
assign ethernetsoc_uart_rx_fifo_syncfifo_re = (ethernetsoc_uart_rx_fifo_syncfifo_readable & ((~ethernetsoc_uart_rx_fifo_readable) | ethernetsoc_uart_rx_fifo_re));
assign ethernetsoc_uart_rx_fifo_level1 = (ethernetsoc_uart_rx_fifo_level0 + ethernetsoc_uart_rx_fifo_readable);
always @(*) begin
	ethernetsoc_uart_rx_fifo_wrport_adr <= 4'd0;
	if (ethernetsoc_uart_rx_fifo_replace) begin
		ethernetsoc_uart_rx_fifo_wrport_adr <= (ethernetsoc_uart_rx_fifo_produce - 1'd1);
	end else begin
		ethernetsoc_uart_rx_fifo_wrport_adr <= ethernetsoc_uart_rx_fifo_produce;
	end
end
assign ethernetsoc_uart_rx_fifo_wrport_dat_w = ethernetsoc_uart_rx_fifo_syncfifo_din;
assign ethernetsoc_uart_rx_fifo_wrport_we = (ethernetsoc_uart_rx_fifo_syncfifo_we & (ethernetsoc_uart_rx_fifo_syncfifo_writable | ethernetsoc_uart_rx_fifo_replace));
assign ethernetsoc_uart_rx_fifo_do_read = (ethernetsoc_uart_rx_fifo_syncfifo_readable & ethernetsoc_uart_rx_fifo_syncfifo_re);
assign ethernetsoc_uart_rx_fifo_rdport_adr = ethernetsoc_uart_rx_fifo_consume;
assign ethernetsoc_uart_rx_fifo_syncfifo_dout = ethernetsoc_uart_rx_fifo_rdport_dat_r;
assign ethernetsoc_uart_rx_fifo_rdport_re = ethernetsoc_uart_rx_fifo_do_read;
assign ethernetsoc_uart_rx_fifo_syncfifo_writable = (ethernetsoc_uart_rx_fifo_level0 != 5'd16);
assign ethernetsoc_uart_rx_fifo_syncfifo_readable = (ethernetsoc_uart_rx_fifo_level0 != 1'd0);
assign ethernetsoc_timer0_zero_trigger = (ethernetsoc_timer0_value != 1'd0);
assign ethernetsoc_timer0_eventmanager_status_w = ethernetsoc_timer0_zero_status;
always @(*) begin
	ethernetsoc_timer0_zero_clear <= 1'd0;
	if ((ethernetsoc_timer0_eventmanager_pending_re & ethernetsoc_timer0_eventmanager_pending_r)) begin
		ethernetsoc_timer0_zero_clear <= 1'd1;
	end
end
assign ethernetsoc_timer0_eventmanager_pending_w = ethernetsoc_timer0_zero_pending;
assign ethernetsoc_timer0_irq = (ethernetsoc_timer0_eventmanager_pending_w & ethernetsoc_timer0_eventmanager_storage);
assign ethernetsoc_timer0_zero_status = ethernetsoc_timer0_zero_trigger;
assign por_clk = sys_clk;
assign ethernetsoc_por_done = (ethernetsoc_por_count == 1'd0);
assign ethernetsoc_clkin = clk100;
assign sys2x_i_clk = ethernetsoc_clkout0;
assign init_clk = ethernetsoc_clkout1;
assign ethernetsoc_ecp5ddrphy_dm_o_data0 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_mask[6], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_mask[4], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_mask[2], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_mask[0], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_mask[6], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_mask[4], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_mask[2], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_mask[0]};
assign ethernetsoc_ecp5ddrphy_dq_o_data0 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[48], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[32], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[16], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[0], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[48], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[32], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[16], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[0]};
assign ethernetsoc_ecp5ddrphy_bitslip0_i = ethernetsoc_ecp5ddrphy_dq_i_data0;
assign ethernetsoc_ecp5ddrphy_dq_o_data1 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[49], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[33], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[17], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[1], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[49], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[33], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[17], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[1]};
assign ethernetsoc_ecp5ddrphy_bitslip1_i = ethernetsoc_ecp5ddrphy_dq_i_data1;
assign ethernetsoc_ecp5ddrphy_dq_o_data2 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[50], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[34], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[18], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[2], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[50], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[34], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[18], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[2]};
assign ethernetsoc_ecp5ddrphy_bitslip2_i = ethernetsoc_ecp5ddrphy_dq_i_data2;
assign ethernetsoc_ecp5ddrphy_dq_o_data3 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[51], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[35], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[19], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[3], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[51], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[35], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[19], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[3]};
assign ethernetsoc_ecp5ddrphy_bitslip3_i = ethernetsoc_ecp5ddrphy_dq_i_data3;
assign ethernetsoc_ecp5ddrphy_dq_o_data4 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[52], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[36], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[20], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[4], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[52], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[36], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[20], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[4]};
assign ethernetsoc_ecp5ddrphy_bitslip4_i = ethernetsoc_ecp5ddrphy_dq_i_data4;
assign ethernetsoc_ecp5ddrphy_dq_o_data5 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[53], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[37], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[21], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[5], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[53], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[37], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[21], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[5]};
assign ethernetsoc_ecp5ddrphy_bitslip5_i = ethernetsoc_ecp5ddrphy_dq_i_data5;
assign ethernetsoc_ecp5ddrphy_dq_o_data6 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[54], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[38], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[22], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[6], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[54], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[38], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[22], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[6]};
assign ethernetsoc_ecp5ddrphy_bitslip6_i = ethernetsoc_ecp5ddrphy_dq_i_data6;
assign ethernetsoc_ecp5ddrphy_dq_o_data7 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[55], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[39], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[23], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[7], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[55], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[39], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[23], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[7]};
assign ethernetsoc_ecp5ddrphy_bitslip7_i = ethernetsoc_ecp5ddrphy_dq_i_data7;
assign ethernetsoc_ecp5ddrphy_dm_o_data1 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_mask[7], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_mask[5], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_mask[3], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_mask[1], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_mask[7], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_mask[5], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_mask[3], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_mask[1]};
assign ethernetsoc_ecp5ddrphy_dq_o_data8 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[56], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[40], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[24], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[8], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[56], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[40], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[24], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[8]};
assign ethernetsoc_ecp5ddrphy_bitslip8_i = ethernetsoc_ecp5ddrphy_dq_i_data8;
assign ethernetsoc_ecp5ddrphy_dq_o_data9 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[57], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[41], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[25], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[9], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[57], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[41], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[25], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[9]};
assign ethernetsoc_ecp5ddrphy_bitslip9_i = ethernetsoc_ecp5ddrphy_dq_i_data9;
assign ethernetsoc_ecp5ddrphy_dq_o_data10 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[58], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[42], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[26], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[10], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[58], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[42], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[26], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[10]};
assign ethernetsoc_ecp5ddrphy_bitslip10_i = ethernetsoc_ecp5ddrphy_dq_i_data10;
assign ethernetsoc_ecp5ddrphy_dq_o_data11 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[59], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[43], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[27], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[11], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[59], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[43], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[27], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[11]};
assign ethernetsoc_ecp5ddrphy_bitslip11_i = ethernetsoc_ecp5ddrphy_dq_i_data11;
assign ethernetsoc_ecp5ddrphy_dq_o_data12 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[60], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[44], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[28], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[12], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[60], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[44], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[28], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[12]};
assign ethernetsoc_ecp5ddrphy_bitslip12_i = ethernetsoc_ecp5ddrphy_dq_i_data12;
assign ethernetsoc_ecp5ddrphy_dq_o_data13 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[61], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[45], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[29], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[13], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[61], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[45], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[29], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[13]};
assign ethernetsoc_ecp5ddrphy_bitslip13_i = ethernetsoc_ecp5ddrphy_dq_i_data13;
assign ethernetsoc_ecp5ddrphy_dq_o_data14 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[62], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[46], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[30], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[14], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[62], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[46], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[30], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[14]};
assign ethernetsoc_ecp5ddrphy_bitslip14_i = ethernetsoc_ecp5ddrphy_dq_i_data14;
assign ethernetsoc_ecp5ddrphy_dq_o_data15 = {ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[63], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[47], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[31], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata[15], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[63], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[47], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[31], ethernetsoc_ecp5ddrphy_dfi_p0_wrdata[15]};
assign ethernetsoc_ecp5ddrphy_bitslip15_i = ethernetsoc_ecp5ddrphy_dq_i_data15;
always @(*) begin
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata <= 64'd0;
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[0] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d0[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[16] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d0[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[32] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d0[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[48] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d0[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[1] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d1[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[17] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d1[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[33] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d1[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[49] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d1[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[2] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d2[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[18] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d2[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[34] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d2[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[50] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d2[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[3] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d3[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[19] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d3[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[35] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d3[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[51] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d3[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[4] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d4[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[20] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d4[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[36] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d4[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[52] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d4[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[5] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d5[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[21] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d5[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[37] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d5[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[53] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d5[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[6] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d6[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[22] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d6[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[38] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d6[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[54] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d6[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[7] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d7[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[23] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d7[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[39] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d7[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[55] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d7[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[8] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d8[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[24] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d8[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[40] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d8[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[56] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d8[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[9] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d9[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[25] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d9[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[41] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d9[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[57] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d9[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[10] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d10[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[26] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d10[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[42] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d10[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[58] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d10[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[11] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d11[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[27] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d11[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[43] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d11[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[59] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d11[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[12] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d12[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[28] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d12[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[44] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d12[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[60] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d12[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[13] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d13[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[29] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d13[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[45] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d13[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[61] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d13[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[14] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d14[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[30] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d14[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[46] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d14[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[62] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d14[3];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[15] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d15[0];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[31] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d15[1];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[47] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d15[2];
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata[63] <= ethernetsoc_ecp5ddrphy_dq_bitslip_o_d15[3];
end
always @(*) begin
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata <= 64'd0;
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[0] <= ethernetsoc_ecp5ddrphy_bitslip0_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[16] <= ethernetsoc_ecp5ddrphy_bitslip0_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[32] <= ethernetsoc_ecp5ddrphy_bitslip0_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[48] <= ethernetsoc_ecp5ddrphy_bitslip0_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[1] <= ethernetsoc_ecp5ddrphy_bitslip1_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[17] <= ethernetsoc_ecp5ddrphy_bitslip1_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[33] <= ethernetsoc_ecp5ddrphy_bitslip1_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[49] <= ethernetsoc_ecp5ddrphy_bitslip1_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[2] <= ethernetsoc_ecp5ddrphy_bitslip2_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[18] <= ethernetsoc_ecp5ddrphy_bitslip2_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[34] <= ethernetsoc_ecp5ddrphy_bitslip2_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[50] <= ethernetsoc_ecp5ddrphy_bitslip2_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[3] <= ethernetsoc_ecp5ddrphy_bitslip3_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[19] <= ethernetsoc_ecp5ddrphy_bitslip3_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[35] <= ethernetsoc_ecp5ddrphy_bitslip3_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[51] <= ethernetsoc_ecp5ddrphy_bitslip3_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[4] <= ethernetsoc_ecp5ddrphy_bitslip4_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[20] <= ethernetsoc_ecp5ddrphy_bitslip4_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[36] <= ethernetsoc_ecp5ddrphy_bitslip4_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[52] <= ethernetsoc_ecp5ddrphy_bitslip4_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[5] <= ethernetsoc_ecp5ddrphy_bitslip5_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[21] <= ethernetsoc_ecp5ddrphy_bitslip5_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[37] <= ethernetsoc_ecp5ddrphy_bitslip5_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[53] <= ethernetsoc_ecp5ddrphy_bitslip5_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[6] <= ethernetsoc_ecp5ddrphy_bitslip6_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[22] <= ethernetsoc_ecp5ddrphy_bitslip6_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[38] <= ethernetsoc_ecp5ddrphy_bitslip6_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[54] <= ethernetsoc_ecp5ddrphy_bitslip6_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[7] <= ethernetsoc_ecp5ddrphy_bitslip7_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[23] <= ethernetsoc_ecp5ddrphy_bitslip7_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[39] <= ethernetsoc_ecp5ddrphy_bitslip7_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[55] <= ethernetsoc_ecp5ddrphy_bitslip7_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[8] <= ethernetsoc_ecp5ddrphy_bitslip8_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[24] <= ethernetsoc_ecp5ddrphy_bitslip8_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[40] <= ethernetsoc_ecp5ddrphy_bitslip8_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[56] <= ethernetsoc_ecp5ddrphy_bitslip8_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[9] <= ethernetsoc_ecp5ddrphy_bitslip9_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[25] <= ethernetsoc_ecp5ddrphy_bitslip9_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[41] <= ethernetsoc_ecp5ddrphy_bitslip9_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[57] <= ethernetsoc_ecp5ddrphy_bitslip9_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[10] <= ethernetsoc_ecp5ddrphy_bitslip10_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[26] <= ethernetsoc_ecp5ddrphy_bitslip10_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[42] <= ethernetsoc_ecp5ddrphy_bitslip10_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[58] <= ethernetsoc_ecp5ddrphy_bitslip10_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[11] <= ethernetsoc_ecp5ddrphy_bitslip11_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[27] <= ethernetsoc_ecp5ddrphy_bitslip11_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[43] <= ethernetsoc_ecp5ddrphy_bitslip11_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[59] <= ethernetsoc_ecp5ddrphy_bitslip11_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[12] <= ethernetsoc_ecp5ddrphy_bitslip12_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[28] <= ethernetsoc_ecp5ddrphy_bitslip12_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[44] <= ethernetsoc_ecp5ddrphy_bitslip12_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[60] <= ethernetsoc_ecp5ddrphy_bitslip12_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[13] <= ethernetsoc_ecp5ddrphy_bitslip13_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[29] <= ethernetsoc_ecp5ddrphy_bitslip13_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[45] <= ethernetsoc_ecp5ddrphy_bitslip13_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[61] <= ethernetsoc_ecp5ddrphy_bitslip13_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[14] <= ethernetsoc_ecp5ddrphy_bitslip14_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[30] <= ethernetsoc_ecp5ddrphy_bitslip14_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[46] <= ethernetsoc_ecp5ddrphy_bitslip14_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[62] <= ethernetsoc_ecp5ddrphy_bitslip14_o[3];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[15] <= ethernetsoc_ecp5ddrphy_bitslip15_o[0];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[31] <= ethernetsoc_ecp5ddrphy_bitslip15_o[1];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[47] <= ethernetsoc_ecp5ddrphy_bitslip15_o[2];
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata[63] <= ethernetsoc_ecp5ddrphy_bitslip15_o[3];
end
assign ethernetsoc_ecp5ddrphy0 = ethernetsoc_ecp5ddrphy_dfi_p0_rddata_en;
assign ethernetsoc_ecp5ddrphy1 = ethernetsoc_ecp5ddrphy_n_rddata_en0;
assign ethernetsoc_ecp5ddrphy2 = ethernetsoc_ecp5ddrphy_n_rddata_en1;
assign ethernetsoc_ecp5ddrphy3 = ethernetsoc_ecp5ddrphy_n_rddata_en2;
assign ethernetsoc_ecp5ddrphy4 = ethernetsoc_ecp5ddrphy_n_rddata_en3;
assign ethernetsoc_ecp5ddrphy5 = ethernetsoc_ecp5ddrphy_n_rddata_en4;
assign ethernetsoc_ecp5ddrphy6 = ethernetsoc_ecp5ddrphy_n_rddata_en5;
assign ethernetsoc_ecp5ddrphy7 = ethernetsoc_ecp5ddrphy_n_rddata_en6;
assign ethernetsoc_ecp5ddrphy8 = ethernetsoc_ecp5ddrphy_n_rddata_en7;
assign ethernetsoc_ecp5ddrphy9 = ethernetsoc_ecp5ddrphy_n_rddata_en8;
assign ethernetsoc_ecp5ddrphy10 = ethernetsoc_ecp5ddrphy_n_rddata_en9;
assign ethernetsoc_ecp5ddrphy11 = ethernetsoc_ecp5ddrphy_n_rddata_en10;
assign ethernetsoc_ecp5ddrphy12 = ethernetsoc_ecp5ddrphy_n_rddata_en11;
assign ethernetsoc_ecp5ddrphy_dqs_read = (ethernetsoc_ecp5ddrphy4 | ethernetsoc_ecp5ddrphy5);
assign ethernetsoc_ecp5ddrphy_oe = (((ethernetsoc_ecp5ddrphy_last_wrdata_en[2] | ethernetsoc_ecp5ddrphy_last_wrdata_en[3]) | ethernetsoc_ecp5ddrphy_last_wrdata_en[4]) | ethernetsoc_ecp5ddrphy_last_wrdata_en[5]);
assign ethernetsoc_ecp5ddrphy_new_lock = (ethernetsoc_ecp5ddrphy_lock1 & (~ethernetsoc_ecp5ddrphy_lock_d));
assign ethernetsoc_ecp5ddrphy_pause0 = ethernetsoc_ecp5ddrphy_pause1;
assign ethernetsoc_ecp5ddrphy_stop0 = ethernetsoc_ecp5ddrphy_stop1;
assign ethernetsoc_ecp5ddrphy_delay0 = ethernetsoc_ecp5ddrphy_delay1;
assign sys2x_rst = ethernetsoc_ecp5ddrphy_reset;
assign ethernetsoc_ecp5ddrphy_dfi_p0_address = ethernetsoc_sdram_master_p0_address;
assign ethernetsoc_ecp5ddrphy_dfi_p0_bank = ethernetsoc_sdram_master_p0_bank;
assign ethernetsoc_ecp5ddrphy_dfi_p0_cas_n = ethernetsoc_sdram_master_p0_cas_n;
assign ethernetsoc_ecp5ddrphy_dfi_p0_cs_n = ethernetsoc_sdram_master_p0_cs_n;
assign ethernetsoc_ecp5ddrphy_dfi_p0_ras_n = ethernetsoc_sdram_master_p0_ras_n;
assign ethernetsoc_ecp5ddrphy_dfi_p0_we_n = ethernetsoc_sdram_master_p0_we_n;
assign ethernetsoc_ecp5ddrphy_dfi_p0_cke = ethernetsoc_sdram_master_p0_cke;
assign ethernetsoc_ecp5ddrphy_dfi_p0_odt = ethernetsoc_sdram_master_p0_odt;
assign ethernetsoc_ecp5ddrphy_dfi_p0_reset_n = ethernetsoc_sdram_master_p0_reset_n;
assign ethernetsoc_ecp5ddrphy_dfi_p0_act_n = ethernetsoc_sdram_master_p0_act_n;
assign ethernetsoc_ecp5ddrphy_dfi_p0_wrdata = ethernetsoc_sdram_master_p0_wrdata;
assign ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_en = ethernetsoc_sdram_master_p0_wrdata_en;
assign ethernetsoc_ecp5ddrphy_dfi_p0_wrdata_mask = ethernetsoc_sdram_master_p0_wrdata_mask;
assign ethernetsoc_ecp5ddrphy_dfi_p0_rddata_en = ethernetsoc_sdram_master_p0_rddata_en;
assign ethernetsoc_sdram_master_p0_rddata = ethernetsoc_ecp5ddrphy_dfi_p0_rddata;
assign ethernetsoc_sdram_master_p0_rddata_valid = ethernetsoc_ecp5ddrphy_dfi_p0_rddata_valid;
assign ethernetsoc_ecp5ddrphy_dfi_p1_address = ethernetsoc_sdram_master_p1_address;
assign ethernetsoc_ecp5ddrphy_dfi_p1_bank = ethernetsoc_sdram_master_p1_bank;
assign ethernetsoc_ecp5ddrphy_dfi_p1_cas_n = ethernetsoc_sdram_master_p1_cas_n;
assign ethernetsoc_ecp5ddrphy_dfi_p1_cs_n = ethernetsoc_sdram_master_p1_cs_n;
assign ethernetsoc_ecp5ddrphy_dfi_p1_ras_n = ethernetsoc_sdram_master_p1_ras_n;
assign ethernetsoc_ecp5ddrphy_dfi_p1_we_n = ethernetsoc_sdram_master_p1_we_n;
assign ethernetsoc_ecp5ddrphy_dfi_p1_cke = ethernetsoc_sdram_master_p1_cke;
assign ethernetsoc_ecp5ddrphy_dfi_p1_odt = ethernetsoc_sdram_master_p1_odt;
assign ethernetsoc_ecp5ddrphy_dfi_p1_reset_n = ethernetsoc_sdram_master_p1_reset_n;
assign ethernetsoc_ecp5ddrphy_dfi_p1_act_n = ethernetsoc_sdram_master_p1_act_n;
assign ethernetsoc_ecp5ddrphy_dfi_p1_wrdata = ethernetsoc_sdram_master_p1_wrdata;
assign ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_en = ethernetsoc_sdram_master_p1_wrdata_en;
assign ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_mask = ethernetsoc_sdram_master_p1_wrdata_mask;
assign ethernetsoc_ecp5ddrphy_dfi_p1_rddata_en = ethernetsoc_sdram_master_p1_rddata_en;
assign ethernetsoc_sdram_master_p1_rddata = ethernetsoc_ecp5ddrphy_dfi_p1_rddata;
assign ethernetsoc_sdram_master_p1_rddata_valid = ethernetsoc_ecp5ddrphy_dfi_p1_rddata_valid;
assign ethernetsoc_sdram_slave_p0_address = ethernetsoc_sdram_dfi_p0_address;
assign ethernetsoc_sdram_slave_p0_bank = ethernetsoc_sdram_dfi_p0_bank;
assign ethernetsoc_sdram_slave_p0_cas_n = ethernetsoc_sdram_dfi_p0_cas_n;
assign ethernetsoc_sdram_slave_p0_cs_n = ethernetsoc_sdram_dfi_p0_cs_n;
assign ethernetsoc_sdram_slave_p0_ras_n = ethernetsoc_sdram_dfi_p0_ras_n;
assign ethernetsoc_sdram_slave_p0_we_n = ethernetsoc_sdram_dfi_p0_we_n;
assign ethernetsoc_sdram_slave_p0_cke = ethernetsoc_sdram_dfi_p0_cke;
assign ethernetsoc_sdram_slave_p0_odt = ethernetsoc_sdram_dfi_p0_odt;
assign ethernetsoc_sdram_slave_p0_reset_n = ethernetsoc_sdram_dfi_p0_reset_n;
assign ethernetsoc_sdram_slave_p0_act_n = ethernetsoc_sdram_dfi_p0_act_n;
assign ethernetsoc_sdram_slave_p0_wrdata = ethernetsoc_sdram_dfi_p0_wrdata;
assign ethernetsoc_sdram_slave_p0_wrdata_en = ethernetsoc_sdram_dfi_p0_wrdata_en;
assign ethernetsoc_sdram_slave_p0_wrdata_mask = ethernetsoc_sdram_dfi_p0_wrdata_mask;
assign ethernetsoc_sdram_slave_p0_rddata_en = ethernetsoc_sdram_dfi_p0_rddata_en;
assign ethernetsoc_sdram_dfi_p0_rddata = ethernetsoc_sdram_slave_p0_rddata;
assign ethernetsoc_sdram_dfi_p0_rddata_valid = ethernetsoc_sdram_slave_p0_rddata_valid;
assign ethernetsoc_sdram_slave_p1_address = ethernetsoc_sdram_dfi_p1_address;
assign ethernetsoc_sdram_slave_p1_bank = ethernetsoc_sdram_dfi_p1_bank;
assign ethernetsoc_sdram_slave_p1_cas_n = ethernetsoc_sdram_dfi_p1_cas_n;
assign ethernetsoc_sdram_slave_p1_cs_n = ethernetsoc_sdram_dfi_p1_cs_n;
assign ethernetsoc_sdram_slave_p1_ras_n = ethernetsoc_sdram_dfi_p1_ras_n;
assign ethernetsoc_sdram_slave_p1_we_n = ethernetsoc_sdram_dfi_p1_we_n;
assign ethernetsoc_sdram_slave_p1_cke = ethernetsoc_sdram_dfi_p1_cke;
assign ethernetsoc_sdram_slave_p1_odt = ethernetsoc_sdram_dfi_p1_odt;
assign ethernetsoc_sdram_slave_p1_reset_n = ethernetsoc_sdram_dfi_p1_reset_n;
assign ethernetsoc_sdram_slave_p1_act_n = ethernetsoc_sdram_dfi_p1_act_n;
assign ethernetsoc_sdram_slave_p1_wrdata = ethernetsoc_sdram_dfi_p1_wrdata;
assign ethernetsoc_sdram_slave_p1_wrdata_en = ethernetsoc_sdram_dfi_p1_wrdata_en;
assign ethernetsoc_sdram_slave_p1_wrdata_mask = ethernetsoc_sdram_dfi_p1_wrdata_mask;
assign ethernetsoc_sdram_slave_p1_rddata_en = ethernetsoc_sdram_dfi_p1_rddata_en;
assign ethernetsoc_sdram_dfi_p1_rddata = ethernetsoc_sdram_slave_p1_rddata;
assign ethernetsoc_sdram_dfi_p1_rddata_valid = ethernetsoc_sdram_slave_p1_rddata_valid;
always @(*) begin
	ethernetsoc_sdram_master_p0_wrdata <= 64'd0;
	ethernetsoc_sdram_master_p0_wrdata_en <= 1'd0;
	ethernetsoc_sdram_master_p0_wrdata_mask <= 8'd0;
	ethernetsoc_sdram_master_p0_rddata_en <= 1'd0;
	ethernetsoc_sdram_master_p1_address <= 13'd0;
	ethernetsoc_sdram_master_p1_bank <= 3'd0;
	ethernetsoc_sdram_master_p1_cas_n <= 1'd1;
	ethernetsoc_sdram_master_p1_cs_n <= 1'd1;
	ethernetsoc_sdram_master_p1_ras_n <= 1'd1;
	ethernetsoc_sdram_inti_p1_rddata <= 64'd0;
	ethernetsoc_sdram_master_p1_we_n <= 1'd1;
	ethernetsoc_sdram_inti_p1_rddata_valid <= 1'd0;
	ethernetsoc_sdram_master_p1_cke <= 1'd0;
	ethernetsoc_sdram_master_p1_odt <= 1'd0;
	ethernetsoc_sdram_master_p1_reset_n <= 1'd0;
	ethernetsoc_sdram_master_p1_act_n <= 1'd1;
	ethernetsoc_sdram_master_p1_wrdata <= 64'd0;
	ethernetsoc_sdram_master_p1_wrdata_en <= 1'd0;
	ethernetsoc_sdram_master_p1_wrdata_mask <= 8'd0;
	ethernetsoc_sdram_master_p1_rddata_en <= 1'd0;
	ethernetsoc_sdram_slave_p0_rddata <= 64'd0;
	ethernetsoc_sdram_slave_p0_rddata_valid <= 1'd0;
	ethernetsoc_sdram_slave_p1_rddata <= 64'd0;
	ethernetsoc_sdram_slave_p1_rddata_valid <= 1'd0;
	ethernetsoc_sdram_master_p0_address <= 13'd0;
	ethernetsoc_sdram_master_p0_bank <= 3'd0;
	ethernetsoc_sdram_master_p0_cas_n <= 1'd1;
	ethernetsoc_sdram_master_p0_cs_n <= 1'd1;
	ethernetsoc_sdram_master_p0_ras_n <= 1'd1;
	ethernetsoc_sdram_inti_p0_rddata <= 64'd0;
	ethernetsoc_sdram_master_p0_we_n <= 1'd1;
	ethernetsoc_sdram_inti_p0_rddata_valid <= 1'd0;
	ethernetsoc_sdram_master_p0_cke <= 1'd0;
	ethernetsoc_sdram_master_p0_odt <= 1'd0;
	ethernetsoc_sdram_master_p0_reset_n <= 1'd0;
	ethernetsoc_sdram_master_p0_act_n <= 1'd1;
	if (ethernetsoc_sdram_storage[0]) begin
		ethernetsoc_sdram_master_p0_address <= ethernetsoc_sdram_slave_p0_address;
		ethernetsoc_sdram_master_p0_bank <= ethernetsoc_sdram_slave_p0_bank;
		ethernetsoc_sdram_master_p0_cas_n <= ethernetsoc_sdram_slave_p0_cas_n;
		ethernetsoc_sdram_master_p0_cs_n <= ethernetsoc_sdram_slave_p0_cs_n;
		ethernetsoc_sdram_master_p0_ras_n <= ethernetsoc_sdram_slave_p0_ras_n;
		ethernetsoc_sdram_master_p0_we_n <= ethernetsoc_sdram_slave_p0_we_n;
		ethernetsoc_sdram_master_p0_cke <= ethernetsoc_sdram_slave_p0_cke;
		ethernetsoc_sdram_master_p0_odt <= ethernetsoc_sdram_slave_p0_odt;
		ethernetsoc_sdram_master_p0_reset_n <= ethernetsoc_sdram_slave_p0_reset_n;
		ethernetsoc_sdram_master_p0_act_n <= ethernetsoc_sdram_slave_p0_act_n;
		ethernetsoc_sdram_master_p0_wrdata <= ethernetsoc_sdram_slave_p0_wrdata;
		ethernetsoc_sdram_master_p0_wrdata_en <= ethernetsoc_sdram_slave_p0_wrdata_en;
		ethernetsoc_sdram_master_p0_wrdata_mask <= ethernetsoc_sdram_slave_p0_wrdata_mask;
		ethernetsoc_sdram_master_p0_rddata_en <= ethernetsoc_sdram_slave_p0_rddata_en;
		ethernetsoc_sdram_slave_p0_rddata <= ethernetsoc_sdram_master_p0_rddata;
		ethernetsoc_sdram_slave_p0_rddata_valid <= ethernetsoc_sdram_master_p0_rddata_valid;
		ethernetsoc_sdram_master_p1_address <= ethernetsoc_sdram_slave_p1_address;
		ethernetsoc_sdram_master_p1_bank <= ethernetsoc_sdram_slave_p1_bank;
		ethernetsoc_sdram_master_p1_cas_n <= ethernetsoc_sdram_slave_p1_cas_n;
		ethernetsoc_sdram_master_p1_cs_n <= ethernetsoc_sdram_slave_p1_cs_n;
		ethernetsoc_sdram_master_p1_ras_n <= ethernetsoc_sdram_slave_p1_ras_n;
		ethernetsoc_sdram_master_p1_we_n <= ethernetsoc_sdram_slave_p1_we_n;
		ethernetsoc_sdram_master_p1_cke <= ethernetsoc_sdram_slave_p1_cke;
		ethernetsoc_sdram_master_p1_odt <= ethernetsoc_sdram_slave_p1_odt;
		ethernetsoc_sdram_master_p1_reset_n <= ethernetsoc_sdram_slave_p1_reset_n;
		ethernetsoc_sdram_master_p1_act_n <= ethernetsoc_sdram_slave_p1_act_n;
		ethernetsoc_sdram_master_p1_wrdata <= ethernetsoc_sdram_slave_p1_wrdata;
		ethernetsoc_sdram_master_p1_wrdata_en <= ethernetsoc_sdram_slave_p1_wrdata_en;
		ethernetsoc_sdram_master_p1_wrdata_mask <= ethernetsoc_sdram_slave_p1_wrdata_mask;
		ethernetsoc_sdram_master_p1_rddata_en <= ethernetsoc_sdram_slave_p1_rddata_en;
		ethernetsoc_sdram_slave_p1_rddata <= ethernetsoc_sdram_master_p1_rddata;
		ethernetsoc_sdram_slave_p1_rddata_valid <= ethernetsoc_sdram_master_p1_rddata_valid;
	end else begin
		ethernetsoc_sdram_master_p0_address <= ethernetsoc_sdram_inti_p0_address;
		ethernetsoc_sdram_master_p0_bank <= ethernetsoc_sdram_inti_p0_bank;
		ethernetsoc_sdram_master_p0_cas_n <= ethernetsoc_sdram_inti_p0_cas_n;
		ethernetsoc_sdram_master_p0_cs_n <= ethernetsoc_sdram_inti_p0_cs_n;
		ethernetsoc_sdram_master_p0_ras_n <= ethernetsoc_sdram_inti_p0_ras_n;
		ethernetsoc_sdram_master_p0_we_n <= ethernetsoc_sdram_inti_p0_we_n;
		ethernetsoc_sdram_master_p0_cke <= ethernetsoc_sdram_inti_p0_cke;
		ethernetsoc_sdram_master_p0_odt <= ethernetsoc_sdram_inti_p0_odt;
		ethernetsoc_sdram_master_p0_reset_n <= ethernetsoc_sdram_inti_p0_reset_n;
		ethernetsoc_sdram_master_p0_act_n <= ethernetsoc_sdram_inti_p0_act_n;
		ethernetsoc_sdram_master_p0_wrdata <= ethernetsoc_sdram_inti_p0_wrdata;
		ethernetsoc_sdram_master_p0_wrdata_en <= ethernetsoc_sdram_inti_p0_wrdata_en;
		ethernetsoc_sdram_master_p0_wrdata_mask <= ethernetsoc_sdram_inti_p0_wrdata_mask;
		ethernetsoc_sdram_master_p0_rddata_en <= ethernetsoc_sdram_inti_p0_rddata_en;
		ethernetsoc_sdram_inti_p0_rddata <= ethernetsoc_sdram_master_p0_rddata;
		ethernetsoc_sdram_inti_p0_rddata_valid <= ethernetsoc_sdram_master_p0_rddata_valid;
		ethernetsoc_sdram_master_p1_address <= ethernetsoc_sdram_inti_p1_address;
		ethernetsoc_sdram_master_p1_bank <= ethernetsoc_sdram_inti_p1_bank;
		ethernetsoc_sdram_master_p1_cas_n <= ethernetsoc_sdram_inti_p1_cas_n;
		ethernetsoc_sdram_master_p1_cs_n <= ethernetsoc_sdram_inti_p1_cs_n;
		ethernetsoc_sdram_master_p1_ras_n <= ethernetsoc_sdram_inti_p1_ras_n;
		ethernetsoc_sdram_master_p1_we_n <= ethernetsoc_sdram_inti_p1_we_n;
		ethernetsoc_sdram_master_p1_cke <= ethernetsoc_sdram_inti_p1_cke;
		ethernetsoc_sdram_master_p1_odt <= ethernetsoc_sdram_inti_p1_odt;
		ethernetsoc_sdram_master_p1_reset_n <= ethernetsoc_sdram_inti_p1_reset_n;
		ethernetsoc_sdram_master_p1_act_n <= ethernetsoc_sdram_inti_p1_act_n;
		ethernetsoc_sdram_master_p1_wrdata <= ethernetsoc_sdram_inti_p1_wrdata;
		ethernetsoc_sdram_master_p1_wrdata_en <= ethernetsoc_sdram_inti_p1_wrdata_en;
		ethernetsoc_sdram_master_p1_wrdata_mask <= ethernetsoc_sdram_inti_p1_wrdata_mask;
		ethernetsoc_sdram_master_p1_rddata_en <= ethernetsoc_sdram_inti_p1_rddata_en;
		ethernetsoc_sdram_inti_p1_rddata <= ethernetsoc_sdram_master_p1_rddata;
		ethernetsoc_sdram_inti_p1_rddata_valid <= ethernetsoc_sdram_master_p1_rddata_valid;
	end
end
assign ethernetsoc_sdram_inti_p0_cke = ethernetsoc_sdram_storage[1];
assign ethernetsoc_sdram_inti_p1_cke = ethernetsoc_sdram_storage[1];
assign ethernetsoc_sdram_inti_p0_odt = ethernetsoc_sdram_storage[2];
assign ethernetsoc_sdram_inti_p1_odt = ethernetsoc_sdram_storage[2];
assign ethernetsoc_sdram_inti_p0_reset_n = ethernetsoc_sdram_storage[3];
assign ethernetsoc_sdram_inti_p1_reset_n = ethernetsoc_sdram_storage[3];
always @(*) begin
	ethernetsoc_sdram_inti_p0_ras_n <= 1'd1;
	ethernetsoc_sdram_inti_p0_we_n <= 1'd1;
	ethernetsoc_sdram_inti_p0_cas_n <= 1'd1;
	ethernetsoc_sdram_inti_p0_cs_n <= 1'd1;
	if (ethernetsoc_sdram_phaseinjector0_command_issue_re) begin
		ethernetsoc_sdram_inti_p0_cs_n <= {1{(~ethernetsoc_sdram_phaseinjector0_command_storage[0])}};
		ethernetsoc_sdram_inti_p0_we_n <= (~ethernetsoc_sdram_phaseinjector0_command_storage[1]);
		ethernetsoc_sdram_inti_p0_cas_n <= (~ethernetsoc_sdram_phaseinjector0_command_storage[2]);
		ethernetsoc_sdram_inti_p0_ras_n <= (~ethernetsoc_sdram_phaseinjector0_command_storage[3]);
	end else begin
		ethernetsoc_sdram_inti_p0_cs_n <= {1{1'd1}};
		ethernetsoc_sdram_inti_p0_we_n <= 1'd1;
		ethernetsoc_sdram_inti_p0_cas_n <= 1'd1;
		ethernetsoc_sdram_inti_p0_ras_n <= 1'd1;
	end
end
assign ethernetsoc_sdram_inti_p0_address = ethernetsoc_sdram_phaseinjector0_address_storage;
assign ethernetsoc_sdram_inti_p0_bank = ethernetsoc_sdram_phaseinjector0_baddress_storage;
assign ethernetsoc_sdram_inti_p0_wrdata_en = (ethernetsoc_sdram_phaseinjector0_command_issue_re & ethernetsoc_sdram_phaseinjector0_command_storage[4]);
assign ethernetsoc_sdram_inti_p0_rddata_en = (ethernetsoc_sdram_phaseinjector0_command_issue_re & ethernetsoc_sdram_phaseinjector0_command_storage[5]);
assign ethernetsoc_sdram_inti_p0_wrdata = ethernetsoc_sdram_phaseinjector0_wrdata_storage;
assign ethernetsoc_sdram_inti_p0_wrdata_mask = 1'd0;
always @(*) begin
	ethernetsoc_sdram_inti_p1_ras_n <= 1'd1;
	ethernetsoc_sdram_inti_p1_we_n <= 1'd1;
	ethernetsoc_sdram_inti_p1_cas_n <= 1'd1;
	ethernetsoc_sdram_inti_p1_cs_n <= 1'd1;
	if (ethernetsoc_sdram_phaseinjector1_command_issue_re) begin
		ethernetsoc_sdram_inti_p1_cs_n <= {1{(~ethernetsoc_sdram_phaseinjector1_command_storage[0])}};
		ethernetsoc_sdram_inti_p1_we_n <= (~ethernetsoc_sdram_phaseinjector1_command_storage[1]);
		ethernetsoc_sdram_inti_p1_cas_n <= (~ethernetsoc_sdram_phaseinjector1_command_storage[2]);
		ethernetsoc_sdram_inti_p1_ras_n <= (~ethernetsoc_sdram_phaseinjector1_command_storage[3]);
	end else begin
		ethernetsoc_sdram_inti_p1_cs_n <= {1{1'd1}};
		ethernetsoc_sdram_inti_p1_we_n <= 1'd1;
		ethernetsoc_sdram_inti_p1_cas_n <= 1'd1;
		ethernetsoc_sdram_inti_p1_ras_n <= 1'd1;
	end
end
assign ethernetsoc_sdram_inti_p1_address = ethernetsoc_sdram_phaseinjector1_address_storage;
assign ethernetsoc_sdram_inti_p1_bank = ethernetsoc_sdram_phaseinjector1_baddress_storage;
assign ethernetsoc_sdram_inti_p1_wrdata_en = (ethernetsoc_sdram_phaseinjector1_command_issue_re & ethernetsoc_sdram_phaseinjector1_command_storage[4]);
assign ethernetsoc_sdram_inti_p1_rddata_en = (ethernetsoc_sdram_phaseinjector1_command_issue_re & ethernetsoc_sdram_phaseinjector1_command_storage[5]);
assign ethernetsoc_sdram_inti_p1_wrdata = ethernetsoc_sdram_phaseinjector1_wrdata_storage;
assign ethernetsoc_sdram_inti_p1_wrdata_mask = 1'd0;
assign ethernetsoc_sdram_bankmachine0_req_valid = ethernetsoc_sdram_interface_bank0_valid;
assign ethernetsoc_sdram_interface_bank0_ready = ethernetsoc_sdram_bankmachine0_req_ready;
assign ethernetsoc_sdram_bankmachine0_req_we = ethernetsoc_sdram_interface_bank0_we;
assign ethernetsoc_sdram_bankmachine0_req_addr = ethernetsoc_sdram_interface_bank0_addr;
assign ethernetsoc_sdram_interface_bank0_lock = ethernetsoc_sdram_bankmachine0_req_lock;
assign ethernetsoc_sdram_interface_bank0_wdata_ready = ethernetsoc_sdram_bankmachine0_req_wdata_ready;
assign ethernetsoc_sdram_interface_bank0_rdata_valid = ethernetsoc_sdram_bankmachine0_req_rdata_valid;
assign ethernetsoc_sdram_bankmachine1_req_valid = ethernetsoc_sdram_interface_bank1_valid;
assign ethernetsoc_sdram_interface_bank1_ready = ethernetsoc_sdram_bankmachine1_req_ready;
assign ethernetsoc_sdram_bankmachine1_req_we = ethernetsoc_sdram_interface_bank1_we;
assign ethernetsoc_sdram_bankmachine1_req_addr = ethernetsoc_sdram_interface_bank1_addr;
assign ethernetsoc_sdram_interface_bank1_lock = ethernetsoc_sdram_bankmachine1_req_lock;
assign ethernetsoc_sdram_interface_bank1_wdata_ready = ethernetsoc_sdram_bankmachine1_req_wdata_ready;
assign ethernetsoc_sdram_interface_bank1_rdata_valid = ethernetsoc_sdram_bankmachine1_req_rdata_valid;
assign ethernetsoc_sdram_bankmachine2_req_valid = ethernetsoc_sdram_interface_bank2_valid;
assign ethernetsoc_sdram_interface_bank2_ready = ethernetsoc_sdram_bankmachine2_req_ready;
assign ethernetsoc_sdram_bankmachine2_req_we = ethernetsoc_sdram_interface_bank2_we;
assign ethernetsoc_sdram_bankmachine2_req_addr = ethernetsoc_sdram_interface_bank2_addr;
assign ethernetsoc_sdram_interface_bank2_lock = ethernetsoc_sdram_bankmachine2_req_lock;
assign ethernetsoc_sdram_interface_bank2_wdata_ready = ethernetsoc_sdram_bankmachine2_req_wdata_ready;
assign ethernetsoc_sdram_interface_bank2_rdata_valid = ethernetsoc_sdram_bankmachine2_req_rdata_valid;
assign ethernetsoc_sdram_bankmachine3_req_valid = ethernetsoc_sdram_interface_bank3_valid;
assign ethernetsoc_sdram_interface_bank3_ready = ethernetsoc_sdram_bankmachine3_req_ready;
assign ethernetsoc_sdram_bankmachine3_req_we = ethernetsoc_sdram_interface_bank3_we;
assign ethernetsoc_sdram_bankmachine3_req_addr = ethernetsoc_sdram_interface_bank3_addr;
assign ethernetsoc_sdram_interface_bank3_lock = ethernetsoc_sdram_bankmachine3_req_lock;
assign ethernetsoc_sdram_interface_bank3_wdata_ready = ethernetsoc_sdram_bankmachine3_req_wdata_ready;
assign ethernetsoc_sdram_interface_bank3_rdata_valid = ethernetsoc_sdram_bankmachine3_req_rdata_valid;
assign ethernetsoc_sdram_bankmachine4_req_valid = ethernetsoc_sdram_interface_bank4_valid;
assign ethernetsoc_sdram_interface_bank4_ready = ethernetsoc_sdram_bankmachine4_req_ready;
assign ethernetsoc_sdram_bankmachine4_req_we = ethernetsoc_sdram_interface_bank4_we;
assign ethernetsoc_sdram_bankmachine4_req_addr = ethernetsoc_sdram_interface_bank4_addr;
assign ethernetsoc_sdram_interface_bank4_lock = ethernetsoc_sdram_bankmachine4_req_lock;
assign ethernetsoc_sdram_interface_bank4_wdata_ready = ethernetsoc_sdram_bankmachine4_req_wdata_ready;
assign ethernetsoc_sdram_interface_bank4_rdata_valid = ethernetsoc_sdram_bankmachine4_req_rdata_valid;
assign ethernetsoc_sdram_bankmachine5_req_valid = ethernetsoc_sdram_interface_bank5_valid;
assign ethernetsoc_sdram_interface_bank5_ready = ethernetsoc_sdram_bankmachine5_req_ready;
assign ethernetsoc_sdram_bankmachine5_req_we = ethernetsoc_sdram_interface_bank5_we;
assign ethernetsoc_sdram_bankmachine5_req_addr = ethernetsoc_sdram_interface_bank5_addr;
assign ethernetsoc_sdram_interface_bank5_lock = ethernetsoc_sdram_bankmachine5_req_lock;
assign ethernetsoc_sdram_interface_bank5_wdata_ready = ethernetsoc_sdram_bankmachine5_req_wdata_ready;
assign ethernetsoc_sdram_interface_bank5_rdata_valid = ethernetsoc_sdram_bankmachine5_req_rdata_valid;
assign ethernetsoc_sdram_bankmachine6_req_valid = ethernetsoc_sdram_interface_bank6_valid;
assign ethernetsoc_sdram_interface_bank6_ready = ethernetsoc_sdram_bankmachine6_req_ready;
assign ethernetsoc_sdram_bankmachine6_req_we = ethernetsoc_sdram_interface_bank6_we;
assign ethernetsoc_sdram_bankmachine6_req_addr = ethernetsoc_sdram_interface_bank6_addr;
assign ethernetsoc_sdram_interface_bank6_lock = ethernetsoc_sdram_bankmachine6_req_lock;
assign ethernetsoc_sdram_interface_bank6_wdata_ready = ethernetsoc_sdram_bankmachine6_req_wdata_ready;
assign ethernetsoc_sdram_interface_bank6_rdata_valid = ethernetsoc_sdram_bankmachine6_req_rdata_valid;
assign ethernetsoc_sdram_bankmachine7_req_valid = ethernetsoc_sdram_interface_bank7_valid;
assign ethernetsoc_sdram_interface_bank7_ready = ethernetsoc_sdram_bankmachine7_req_ready;
assign ethernetsoc_sdram_bankmachine7_req_we = ethernetsoc_sdram_interface_bank7_we;
assign ethernetsoc_sdram_bankmachine7_req_addr = ethernetsoc_sdram_interface_bank7_addr;
assign ethernetsoc_sdram_interface_bank7_lock = ethernetsoc_sdram_bankmachine7_req_lock;
assign ethernetsoc_sdram_interface_bank7_wdata_ready = ethernetsoc_sdram_bankmachine7_req_wdata_ready;
assign ethernetsoc_sdram_interface_bank7_rdata_valid = ethernetsoc_sdram_bankmachine7_req_rdata_valid;
assign ethernetsoc_sdram_timer_reset = 2'sd2;
assign ethernetsoc_sdram_timer_wait = (~ethernetsoc_sdram_timer_done);
assign ethernetsoc_sdram_timer_done = (ethernetsoc_sdram_timer_count == 1'd0);
always @(*) begin
	ethernetsoc_sdram_generator_start <= 1'd0;
	ethernetsoc_sdram_cmd_valid <= 1'd0;
	refresher_next_state <= 2'd0;
	ethernetsoc_sdram_cmd_last <= 1'd0;
	refresher_next_state <= refresher_state;
	case (refresher_state)
		1'd1: begin
			ethernetsoc_sdram_cmd_valid <= 1'd1;
			if (ethernetsoc_sdram_cmd_ready) begin
				ethernetsoc_sdram_generator_start <= 1'd1;
				refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if (ethernetsoc_sdram_generator_done) begin
				ethernetsoc_sdram_cmd_last <= 1'd1;
				refresher_next_state <= 1'd0;
			end else begin
				ethernetsoc_sdram_cmd_valid <= 1'd1;
			end
		end
		default: begin
			if (ethernetsoc_sdram_timer_done) begin
				refresher_next_state <= 1'd1;
			end
		end
	endcase
end
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid = ethernetsoc_sdram_bankmachine0_req_valid;
assign ethernetsoc_sdram_bankmachine0_req_ready = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we = ethernetsoc_sdram_bankmachine0_req_we;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr = ethernetsoc_sdram_bankmachine0_req_addr;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_valid = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready = ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_ready;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_first = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_last = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_payload_we = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_payload_addr = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_source_ready = (ethernetsoc_sdram_bankmachine0_req_wdata_ready | ethernetsoc_sdram_bankmachine0_req_rdata_valid);
assign ethernetsoc_sdram_bankmachine0_req_lock = (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid | ethernetsoc_sdram_bankmachine0_cmd_buffer_source_valid);
assign ethernetsoc_sdram_bankmachine0_row_hit = (ethernetsoc_sdram_bankmachine0_row == ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[19:7]);
assign ethernetsoc_sdram_bankmachine0_cmd_payload_ba = 1'd0;
always @(*) begin
	ethernetsoc_sdram_bankmachine0_cmd_payload_a <= 13'd0;
	if (ethernetsoc_sdram_bankmachine0_row_col_n_addr_sel) begin
		ethernetsoc_sdram_bankmachine0_cmd_payload_a <= ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[19:7];
	end else begin
		ethernetsoc_sdram_bankmachine0_cmd_payload_a <= ((ethernetsoc_sdram_bankmachine0_auto_precharge <<< 4'd10) | {ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign ethernetsoc_sdram_bankmachine0_twtpcon_valid = ((ethernetsoc_sdram_bankmachine0_cmd_valid & ethernetsoc_sdram_bankmachine0_cmd_ready) & ethernetsoc_sdram_bankmachine0_cmd_payload_is_write);
assign ethernetsoc_sdram_bankmachine0_trccon_valid = ((ethernetsoc_sdram_bankmachine0_cmd_valid & ethernetsoc_sdram_bankmachine0_cmd_ready) & ethernetsoc_sdram_bankmachine0_row_open);
assign ethernetsoc_sdram_bankmachine0_trascon_valid = ((ethernetsoc_sdram_bankmachine0_cmd_valid & ethernetsoc_sdram_bankmachine0_cmd_ready) & ethernetsoc_sdram_bankmachine0_row_open);
always @(*) begin
	ethernetsoc_sdram_bankmachine0_auto_precharge <= 1'd0;
	if ((ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid & ethernetsoc_sdram_bankmachine0_cmd_buffer_source_valid)) begin
		if ((ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr[19:7] != ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[19:7])) begin
			ethernetsoc_sdram_bankmachine0_auto_precharge <= (ethernetsoc_sdram_bankmachine0_row_close == 1'd0);
		end
	end
end
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din = {ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last, ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first, ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr, ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we};
assign {ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last, ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first, ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr, ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we} = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_ready = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_valid;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_first = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_first;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_last = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_last;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_valid = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_first = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_last = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_we = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_payload_addr = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_source_ready;
always @(*) begin
	ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace) begin
		ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr <= ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce;
	end
end
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we = (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable | ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace));
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read = (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable & ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_re);
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout = ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable = (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_level != 4'd8);
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable = (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_level != 1'd0);
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_pipe_ce = (ethernetsoc_sdram_bankmachine0_cmd_buffer_source_ready | (~ethernetsoc_sdram_bankmachine0_cmd_buffer_valid_n));
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_ready = ethernetsoc_sdram_bankmachine0_cmd_buffer_pipe_ce;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_source_valid = ethernetsoc_sdram_bankmachine0_cmd_buffer_valid_n;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_busy = (1'd0 | ethernetsoc_sdram_bankmachine0_cmd_buffer_valid_n);
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_source_first = ethernetsoc_sdram_bankmachine0_cmd_buffer_first_n;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_source_last = ethernetsoc_sdram_bankmachine0_cmd_buffer_last_n;
always @(*) begin
	ethernetsoc_sdram_bankmachine0_twtpcon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine0_twtpcon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine0_twtpcon_ready0 <= ethernetsoc_sdram_bankmachine0_twtpcon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine0_trccon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine0_trccon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine0_trccon_ready0 <= ethernetsoc_sdram_bankmachine0_trccon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine0_trascon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine0_trascon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine0_trascon_ready0 <= ethernetsoc_sdram_bankmachine0_trascon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine0_row_col_n_addr_sel <= 1'd0;
	bankmachine0_next_state <= 3'd0;
	ethernetsoc_sdram_bankmachine0_refresh_gnt <= 1'd0;
	ethernetsoc_sdram_bankmachine0_cmd_valid <= 1'd0;
	ethernetsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd0;
	ethernetsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd0;
	ethernetsoc_sdram_bankmachine0_cmd_payload_we <= 1'd0;
	ethernetsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	ethernetsoc_sdram_bankmachine0_row_open <= 1'd0;
	ethernetsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd0;
	ethernetsoc_sdram_bankmachine0_row_close <= 1'd0;
	ethernetsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd0;
	ethernetsoc_sdram_bankmachine0_req_wdata_ready <= 1'd0;
	ethernetsoc_sdram_bankmachine0_req_rdata_valid <= 1'd0;
	bankmachine0_next_state <= bankmachine0_state;
	case (bankmachine0_state)
		1'd1: begin
			if ((ethernetsoc_sdram_bankmachine0_twtpcon_ready0 & ethernetsoc_sdram_bankmachine0_trascon_ready0)) begin
				ethernetsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
				if (ethernetsoc_sdram_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd5;
				end
				ethernetsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
				ethernetsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
				ethernetsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine0_row_close <= 1'd1;
		end
		2'd2: begin
			if ((ethernetsoc_sdram_bankmachine0_twtpcon_ready0 & ethernetsoc_sdram_bankmachine0_trascon_ready0)) begin
				bankmachine0_next_state <= 3'd5;
			end
			ethernetsoc_sdram_bankmachine0_row_close <= 1'd1;
		end
		2'd3: begin
			if (ethernetsoc_sdram_bankmachine0_trccon_ready0) begin
				ethernetsoc_sdram_bankmachine0_row_col_n_addr_sel <= 1'd1;
				ethernetsoc_sdram_bankmachine0_row_open <= 1'd1;
				ethernetsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
				ethernetsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
				if (ethernetsoc_sdram_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd6;
				end
				ethernetsoc_sdram_bankmachine0_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (ethernetsoc_sdram_bankmachine0_twtpcon_ready0) begin
				ethernetsoc_sdram_bankmachine0_refresh_gnt <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine0_row_close <= 1'd1;
			ethernetsoc_sdram_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~ethernetsoc_sdram_bankmachine0_refresh_req)) begin
				bankmachine0_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine0_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (ethernetsoc_sdram_bankmachine0_refresh_req) begin
				bankmachine0_next_state <= 3'd4;
			end else begin
				if (ethernetsoc_sdram_bankmachine0_cmd_buffer_source_valid) begin
					if (ethernetsoc_sdram_bankmachine0_row_opened) begin
						if (ethernetsoc_sdram_bankmachine0_row_hit) begin
							ethernetsoc_sdram_bankmachine0_cmd_valid <= 1'd1;
							if (ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_we) begin
								ethernetsoc_sdram_bankmachine0_req_wdata_ready <= ethernetsoc_sdram_bankmachine0_cmd_ready;
								ethernetsoc_sdram_bankmachine0_cmd_payload_is_write <= 1'd1;
								ethernetsoc_sdram_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								ethernetsoc_sdram_bankmachine0_req_rdata_valid <= ethernetsoc_sdram_bankmachine0_cmd_ready;
								ethernetsoc_sdram_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							ethernetsoc_sdram_bankmachine0_cmd_payload_cas <= 1'd1;
							if ((ethernetsoc_sdram_bankmachine0_cmd_ready & ethernetsoc_sdram_bankmachine0_auto_precharge)) begin
								bankmachine0_next_state <= 2'd2;
							end
						end else begin
							bankmachine0_next_state <= 1'd1;
						end
					end else begin
						bankmachine0_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid = ethernetsoc_sdram_bankmachine1_req_valid;
assign ethernetsoc_sdram_bankmachine1_req_ready = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we = ethernetsoc_sdram_bankmachine1_req_we;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr = ethernetsoc_sdram_bankmachine1_req_addr;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_valid = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready = ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_ready;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_first = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_last = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_payload_we = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_payload_addr = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_source_ready = (ethernetsoc_sdram_bankmachine1_req_wdata_ready | ethernetsoc_sdram_bankmachine1_req_rdata_valid);
assign ethernetsoc_sdram_bankmachine1_req_lock = (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid | ethernetsoc_sdram_bankmachine1_cmd_buffer_source_valid);
assign ethernetsoc_sdram_bankmachine1_row_hit = (ethernetsoc_sdram_bankmachine1_row == ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[19:7]);
assign ethernetsoc_sdram_bankmachine1_cmd_payload_ba = 1'd1;
always @(*) begin
	ethernetsoc_sdram_bankmachine1_cmd_payload_a <= 13'd0;
	if (ethernetsoc_sdram_bankmachine1_row_col_n_addr_sel) begin
		ethernetsoc_sdram_bankmachine1_cmd_payload_a <= ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[19:7];
	end else begin
		ethernetsoc_sdram_bankmachine1_cmd_payload_a <= ((ethernetsoc_sdram_bankmachine1_auto_precharge <<< 4'd10) | {ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign ethernetsoc_sdram_bankmachine1_twtpcon_valid = ((ethernetsoc_sdram_bankmachine1_cmd_valid & ethernetsoc_sdram_bankmachine1_cmd_ready) & ethernetsoc_sdram_bankmachine1_cmd_payload_is_write);
assign ethernetsoc_sdram_bankmachine1_trccon_valid = ((ethernetsoc_sdram_bankmachine1_cmd_valid & ethernetsoc_sdram_bankmachine1_cmd_ready) & ethernetsoc_sdram_bankmachine1_row_open);
assign ethernetsoc_sdram_bankmachine1_trascon_valid = ((ethernetsoc_sdram_bankmachine1_cmd_valid & ethernetsoc_sdram_bankmachine1_cmd_ready) & ethernetsoc_sdram_bankmachine1_row_open);
always @(*) begin
	ethernetsoc_sdram_bankmachine1_auto_precharge <= 1'd0;
	if ((ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid & ethernetsoc_sdram_bankmachine1_cmd_buffer_source_valid)) begin
		if ((ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr[19:7] != ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[19:7])) begin
			ethernetsoc_sdram_bankmachine1_auto_precharge <= (ethernetsoc_sdram_bankmachine1_row_close == 1'd0);
		end
	end
end
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din = {ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last, ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first, ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr, ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we};
assign {ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last, ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first, ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr, ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we} = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_ready = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_valid;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_first = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_first;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_last = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_last;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_valid = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_first = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_last = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_we = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_payload_addr = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_source_ready;
always @(*) begin
	ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace) begin
		ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr <= ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce;
	end
end
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we = (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable | ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace));
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read = (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable & ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_re);
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout = ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable = (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_level != 4'd8);
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable = (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_level != 1'd0);
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_pipe_ce = (ethernetsoc_sdram_bankmachine1_cmd_buffer_source_ready | (~ethernetsoc_sdram_bankmachine1_cmd_buffer_valid_n));
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_ready = ethernetsoc_sdram_bankmachine1_cmd_buffer_pipe_ce;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_source_valid = ethernetsoc_sdram_bankmachine1_cmd_buffer_valid_n;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_busy = (1'd0 | ethernetsoc_sdram_bankmachine1_cmd_buffer_valid_n);
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_source_first = ethernetsoc_sdram_bankmachine1_cmd_buffer_first_n;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_source_last = ethernetsoc_sdram_bankmachine1_cmd_buffer_last_n;
always @(*) begin
	ethernetsoc_sdram_bankmachine1_twtpcon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine1_twtpcon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine1_twtpcon_ready0 <= ethernetsoc_sdram_bankmachine1_twtpcon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine1_trccon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine1_trccon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine1_trccon_ready0 <= ethernetsoc_sdram_bankmachine1_trccon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine1_trascon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine1_trascon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine1_trascon_ready0 <= ethernetsoc_sdram_bankmachine1_trascon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd0;
	ethernetsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd0;
	ethernetsoc_sdram_bankmachine1_cmd_payload_we <= 1'd0;
	ethernetsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	ethernetsoc_sdram_bankmachine1_row_open <= 1'd0;
	ethernetsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd0;
	ethernetsoc_sdram_bankmachine1_row_close <= 1'd0;
	ethernetsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd0;
	ethernetsoc_sdram_bankmachine1_req_wdata_ready <= 1'd0;
	ethernetsoc_sdram_bankmachine1_req_rdata_valid <= 1'd0;
	ethernetsoc_sdram_bankmachine1_row_col_n_addr_sel <= 1'd0;
	ethernetsoc_sdram_bankmachine1_refresh_gnt <= 1'd0;
	ethernetsoc_sdram_bankmachine1_cmd_valid <= 1'd0;
	bankmachine1_next_state <= 3'd0;
	bankmachine1_next_state <= bankmachine1_state;
	case (bankmachine1_state)
		1'd1: begin
			if ((ethernetsoc_sdram_bankmachine1_twtpcon_ready0 & ethernetsoc_sdram_bankmachine1_trascon_ready0)) begin
				ethernetsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
				if (ethernetsoc_sdram_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd5;
				end
				ethernetsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
				ethernetsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
				ethernetsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine1_row_close <= 1'd1;
		end
		2'd2: begin
			if ((ethernetsoc_sdram_bankmachine1_twtpcon_ready0 & ethernetsoc_sdram_bankmachine1_trascon_ready0)) begin
				bankmachine1_next_state <= 3'd5;
			end
			ethernetsoc_sdram_bankmachine1_row_close <= 1'd1;
		end
		2'd3: begin
			if (ethernetsoc_sdram_bankmachine1_trccon_ready0) begin
				ethernetsoc_sdram_bankmachine1_row_col_n_addr_sel <= 1'd1;
				ethernetsoc_sdram_bankmachine1_row_open <= 1'd1;
				ethernetsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
				ethernetsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
				if (ethernetsoc_sdram_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd6;
				end
				ethernetsoc_sdram_bankmachine1_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (ethernetsoc_sdram_bankmachine1_twtpcon_ready0) begin
				ethernetsoc_sdram_bankmachine1_refresh_gnt <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine1_row_close <= 1'd1;
			ethernetsoc_sdram_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~ethernetsoc_sdram_bankmachine1_refresh_req)) begin
				bankmachine1_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine1_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (ethernetsoc_sdram_bankmachine1_refresh_req) begin
				bankmachine1_next_state <= 3'd4;
			end else begin
				if (ethernetsoc_sdram_bankmachine1_cmd_buffer_source_valid) begin
					if (ethernetsoc_sdram_bankmachine1_row_opened) begin
						if (ethernetsoc_sdram_bankmachine1_row_hit) begin
							ethernetsoc_sdram_bankmachine1_cmd_valid <= 1'd1;
							if (ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_we) begin
								ethernetsoc_sdram_bankmachine1_req_wdata_ready <= ethernetsoc_sdram_bankmachine1_cmd_ready;
								ethernetsoc_sdram_bankmachine1_cmd_payload_is_write <= 1'd1;
								ethernetsoc_sdram_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								ethernetsoc_sdram_bankmachine1_req_rdata_valid <= ethernetsoc_sdram_bankmachine1_cmd_ready;
								ethernetsoc_sdram_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							ethernetsoc_sdram_bankmachine1_cmd_payload_cas <= 1'd1;
							if ((ethernetsoc_sdram_bankmachine1_cmd_ready & ethernetsoc_sdram_bankmachine1_auto_precharge)) begin
								bankmachine1_next_state <= 2'd2;
							end
						end else begin
							bankmachine1_next_state <= 1'd1;
						end
					end else begin
						bankmachine1_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid = ethernetsoc_sdram_bankmachine2_req_valid;
assign ethernetsoc_sdram_bankmachine2_req_ready = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we = ethernetsoc_sdram_bankmachine2_req_we;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr = ethernetsoc_sdram_bankmachine2_req_addr;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_valid = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready = ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_ready;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_first = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_last = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_payload_we = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_payload_addr = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_source_ready = (ethernetsoc_sdram_bankmachine2_req_wdata_ready | ethernetsoc_sdram_bankmachine2_req_rdata_valid);
assign ethernetsoc_sdram_bankmachine2_req_lock = (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid | ethernetsoc_sdram_bankmachine2_cmd_buffer_source_valid);
assign ethernetsoc_sdram_bankmachine2_row_hit = (ethernetsoc_sdram_bankmachine2_row == ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[19:7]);
assign ethernetsoc_sdram_bankmachine2_cmd_payload_ba = 2'd2;
always @(*) begin
	ethernetsoc_sdram_bankmachine2_cmd_payload_a <= 13'd0;
	if (ethernetsoc_sdram_bankmachine2_row_col_n_addr_sel) begin
		ethernetsoc_sdram_bankmachine2_cmd_payload_a <= ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[19:7];
	end else begin
		ethernetsoc_sdram_bankmachine2_cmd_payload_a <= ((ethernetsoc_sdram_bankmachine2_auto_precharge <<< 4'd10) | {ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign ethernetsoc_sdram_bankmachine2_twtpcon_valid = ((ethernetsoc_sdram_bankmachine2_cmd_valid & ethernetsoc_sdram_bankmachine2_cmd_ready) & ethernetsoc_sdram_bankmachine2_cmd_payload_is_write);
assign ethernetsoc_sdram_bankmachine2_trccon_valid = ((ethernetsoc_sdram_bankmachine2_cmd_valid & ethernetsoc_sdram_bankmachine2_cmd_ready) & ethernetsoc_sdram_bankmachine2_row_open);
assign ethernetsoc_sdram_bankmachine2_trascon_valid = ((ethernetsoc_sdram_bankmachine2_cmd_valid & ethernetsoc_sdram_bankmachine2_cmd_ready) & ethernetsoc_sdram_bankmachine2_row_open);
always @(*) begin
	ethernetsoc_sdram_bankmachine2_auto_precharge <= 1'd0;
	if ((ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid & ethernetsoc_sdram_bankmachine2_cmd_buffer_source_valid)) begin
		if ((ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr[19:7] != ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[19:7])) begin
			ethernetsoc_sdram_bankmachine2_auto_precharge <= (ethernetsoc_sdram_bankmachine2_row_close == 1'd0);
		end
	end
end
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din = {ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last, ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first, ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr, ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we};
assign {ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last, ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first, ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr, ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we} = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_ready = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_valid;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_first = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_first;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_last = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_last;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_valid = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_first = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_last = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_we = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_payload_addr = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_source_ready;
always @(*) begin
	ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace) begin
		ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr <= ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce;
	end
end
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we = (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable | ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace));
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read = (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable & ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_re);
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout = ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable = (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_level != 4'd8);
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable = (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_level != 1'd0);
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_pipe_ce = (ethernetsoc_sdram_bankmachine2_cmd_buffer_source_ready | (~ethernetsoc_sdram_bankmachine2_cmd_buffer_valid_n));
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_ready = ethernetsoc_sdram_bankmachine2_cmd_buffer_pipe_ce;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_source_valid = ethernetsoc_sdram_bankmachine2_cmd_buffer_valid_n;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_busy = (1'd0 | ethernetsoc_sdram_bankmachine2_cmd_buffer_valid_n);
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_source_first = ethernetsoc_sdram_bankmachine2_cmd_buffer_first_n;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_source_last = ethernetsoc_sdram_bankmachine2_cmd_buffer_last_n;
always @(*) begin
	ethernetsoc_sdram_bankmachine2_twtpcon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine2_twtpcon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine2_twtpcon_ready0 <= ethernetsoc_sdram_bankmachine2_twtpcon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine2_trccon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine2_trccon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine2_trccon_ready0 <= ethernetsoc_sdram_bankmachine2_trccon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine2_trascon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine2_trascon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine2_trascon_ready0 <= ethernetsoc_sdram_bankmachine2_trascon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	ethernetsoc_sdram_bankmachine2_row_open <= 1'd0;
	ethernetsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd0;
	ethernetsoc_sdram_bankmachine2_row_close <= 1'd0;
	ethernetsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd0;
	ethernetsoc_sdram_bankmachine2_req_wdata_ready <= 1'd0;
	ethernetsoc_sdram_bankmachine2_req_rdata_valid <= 1'd0;
	ethernetsoc_sdram_bankmachine2_row_col_n_addr_sel <= 1'd0;
	ethernetsoc_sdram_bankmachine2_refresh_gnt <= 1'd0;
	ethernetsoc_sdram_bankmachine2_cmd_valid <= 1'd0;
	bankmachine2_next_state <= 3'd0;
	ethernetsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd0;
	ethernetsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd0;
	ethernetsoc_sdram_bankmachine2_cmd_payload_we <= 1'd0;
	bankmachine2_next_state <= bankmachine2_state;
	case (bankmachine2_state)
		1'd1: begin
			if ((ethernetsoc_sdram_bankmachine2_twtpcon_ready0 & ethernetsoc_sdram_bankmachine2_trascon_ready0)) begin
				ethernetsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
				if (ethernetsoc_sdram_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd5;
				end
				ethernetsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
				ethernetsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
				ethernetsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine2_row_close <= 1'd1;
		end
		2'd2: begin
			if ((ethernetsoc_sdram_bankmachine2_twtpcon_ready0 & ethernetsoc_sdram_bankmachine2_trascon_ready0)) begin
				bankmachine2_next_state <= 3'd5;
			end
			ethernetsoc_sdram_bankmachine2_row_close <= 1'd1;
		end
		2'd3: begin
			if (ethernetsoc_sdram_bankmachine2_trccon_ready0) begin
				ethernetsoc_sdram_bankmachine2_row_col_n_addr_sel <= 1'd1;
				ethernetsoc_sdram_bankmachine2_row_open <= 1'd1;
				ethernetsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
				ethernetsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
				if (ethernetsoc_sdram_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd6;
				end
				ethernetsoc_sdram_bankmachine2_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (ethernetsoc_sdram_bankmachine2_twtpcon_ready0) begin
				ethernetsoc_sdram_bankmachine2_refresh_gnt <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine2_row_close <= 1'd1;
			ethernetsoc_sdram_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~ethernetsoc_sdram_bankmachine2_refresh_req)) begin
				bankmachine2_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine2_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (ethernetsoc_sdram_bankmachine2_refresh_req) begin
				bankmachine2_next_state <= 3'd4;
			end else begin
				if (ethernetsoc_sdram_bankmachine2_cmd_buffer_source_valid) begin
					if (ethernetsoc_sdram_bankmachine2_row_opened) begin
						if (ethernetsoc_sdram_bankmachine2_row_hit) begin
							ethernetsoc_sdram_bankmachine2_cmd_valid <= 1'd1;
							if (ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_we) begin
								ethernetsoc_sdram_bankmachine2_req_wdata_ready <= ethernetsoc_sdram_bankmachine2_cmd_ready;
								ethernetsoc_sdram_bankmachine2_cmd_payload_is_write <= 1'd1;
								ethernetsoc_sdram_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								ethernetsoc_sdram_bankmachine2_req_rdata_valid <= ethernetsoc_sdram_bankmachine2_cmd_ready;
								ethernetsoc_sdram_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							ethernetsoc_sdram_bankmachine2_cmd_payload_cas <= 1'd1;
							if ((ethernetsoc_sdram_bankmachine2_cmd_ready & ethernetsoc_sdram_bankmachine2_auto_precharge)) begin
								bankmachine2_next_state <= 2'd2;
							end
						end else begin
							bankmachine2_next_state <= 1'd1;
						end
					end else begin
						bankmachine2_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid = ethernetsoc_sdram_bankmachine3_req_valid;
assign ethernetsoc_sdram_bankmachine3_req_ready = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we = ethernetsoc_sdram_bankmachine3_req_we;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr = ethernetsoc_sdram_bankmachine3_req_addr;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_valid = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready = ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_ready;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_first = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_last = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_payload_we = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_payload_addr = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_source_ready = (ethernetsoc_sdram_bankmachine3_req_wdata_ready | ethernetsoc_sdram_bankmachine3_req_rdata_valid);
assign ethernetsoc_sdram_bankmachine3_req_lock = (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid | ethernetsoc_sdram_bankmachine3_cmd_buffer_source_valid);
assign ethernetsoc_sdram_bankmachine3_row_hit = (ethernetsoc_sdram_bankmachine3_row == ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[19:7]);
assign ethernetsoc_sdram_bankmachine3_cmd_payload_ba = 2'd3;
always @(*) begin
	ethernetsoc_sdram_bankmachine3_cmd_payload_a <= 13'd0;
	if (ethernetsoc_sdram_bankmachine3_row_col_n_addr_sel) begin
		ethernetsoc_sdram_bankmachine3_cmd_payload_a <= ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[19:7];
	end else begin
		ethernetsoc_sdram_bankmachine3_cmd_payload_a <= ((ethernetsoc_sdram_bankmachine3_auto_precharge <<< 4'd10) | {ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign ethernetsoc_sdram_bankmachine3_twtpcon_valid = ((ethernetsoc_sdram_bankmachine3_cmd_valid & ethernetsoc_sdram_bankmachine3_cmd_ready) & ethernetsoc_sdram_bankmachine3_cmd_payload_is_write);
assign ethernetsoc_sdram_bankmachine3_trccon_valid = ((ethernetsoc_sdram_bankmachine3_cmd_valid & ethernetsoc_sdram_bankmachine3_cmd_ready) & ethernetsoc_sdram_bankmachine3_row_open);
assign ethernetsoc_sdram_bankmachine3_trascon_valid = ((ethernetsoc_sdram_bankmachine3_cmd_valid & ethernetsoc_sdram_bankmachine3_cmd_ready) & ethernetsoc_sdram_bankmachine3_row_open);
always @(*) begin
	ethernetsoc_sdram_bankmachine3_auto_precharge <= 1'd0;
	if ((ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid & ethernetsoc_sdram_bankmachine3_cmd_buffer_source_valid)) begin
		if ((ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr[19:7] != ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[19:7])) begin
			ethernetsoc_sdram_bankmachine3_auto_precharge <= (ethernetsoc_sdram_bankmachine3_row_close == 1'd0);
		end
	end
end
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din = {ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last, ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first, ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr, ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we};
assign {ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last, ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first, ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr, ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we} = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_ready = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_valid;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_first = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_first;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_last = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_last;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_valid = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_first = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_last = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_we = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_payload_addr = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_source_ready;
always @(*) begin
	ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace) begin
		ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr <= ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce;
	end
end
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we = (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable | ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace));
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read = (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable & ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_re);
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout = ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable = (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_level != 4'd8);
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable = (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_level != 1'd0);
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_pipe_ce = (ethernetsoc_sdram_bankmachine3_cmd_buffer_source_ready | (~ethernetsoc_sdram_bankmachine3_cmd_buffer_valid_n));
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_ready = ethernetsoc_sdram_bankmachine3_cmd_buffer_pipe_ce;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_source_valid = ethernetsoc_sdram_bankmachine3_cmd_buffer_valid_n;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_busy = (1'd0 | ethernetsoc_sdram_bankmachine3_cmd_buffer_valid_n);
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_source_first = ethernetsoc_sdram_bankmachine3_cmd_buffer_first_n;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_source_last = ethernetsoc_sdram_bankmachine3_cmd_buffer_last_n;
always @(*) begin
	ethernetsoc_sdram_bankmachine3_twtpcon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine3_twtpcon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine3_twtpcon_ready0 <= ethernetsoc_sdram_bankmachine3_twtpcon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine3_trccon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine3_trccon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine3_trccon_ready0 <= ethernetsoc_sdram_bankmachine3_trccon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine3_trascon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine3_trascon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine3_trascon_ready0 <= ethernetsoc_sdram_bankmachine3_trascon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine3_row_col_n_addr_sel <= 1'd0;
	ethernetsoc_sdram_bankmachine3_refresh_gnt <= 1'd0;
	ethernetsoc_sdram_bankmachine3_cmd_valid <= 1'd0;
	ethernetsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd0;
	ethernetsoc_sdram_bankmachine3_row_open <= 1'd0;
	ethernetsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd0;
	ethernetsoc_sdram_bankmachine3_cmd_payload_we <= 1'd0;
	bankmachine3_next_state <= 3'd0;
	ethernetsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	ethernetsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd0;
	ethernetsoc_sdram_bankmachine3_row_close <= 1'd0;
	ethernetsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd0;
	ethernetsoc_sdram_bankmachine3_req_wdata_ready <= 1'd0;
	ethernetsoc_sdram_bankmachine3_req_rdata_valid <= 1'd0;
	bankmachine3_next_state <= bankmachine3_state;
	case (bankmachine3_state)
		1'd1: begin
			if ((ethernetsoc_sdram_bankmachine3_twtpcon_ready0 & ethernetsoc_sdram_bankmachine3_trascon_ready0)) begin
				ethernetsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
				if (ethernetsoc_sdram_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd5;
				end
				ethernetsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
				ethernetsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
				ethernetsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine3_row_close <= 1'd1;
		end
		2'd2: begin
			if ((ethernetsoc_sdram_bankmachine3_twtpcon_ready0 & ethernetsoc_sdram_bankmachine3_trascon_ready0)) begin
				bankmachine3_next_state <= 3'd5;
			end
			ethernetsoc_sdram_bankmachine3_row_close <= 1'd1;
		end
		2'd3: begin
			if (ethernetsoc_sdram_bankmachine3_trccon_ready0) begin
				ethernetsoc_sdram_bankmachine3_row_col_n_addr_sel <= 1'd1;
				ethernetsoc_sdram_bankmachine3_row_open <= 1'd1;
				ethernetsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
				ethernetsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
				if (ethernetsoc_sdram_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd6;
				end
				ethernetsoc_sdram_bankmachine3_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (ethernetsoc_sdram_bankmachine3_twtpcon_ready0) begin
				ethernetsoc_sdram_bankmachine3_refresh_gnt <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine3_row_close <= 1'd1;
			ethernetsoc_sdram_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~ethernetsoc_sdram_bankmachine3_refresh_req)) begin
				bankmachine3_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine3_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (ethernetsoc_sdram_bankmachine3_refresh_req) begin
				bankmachine3_next_state <= 3'd4;
			end else begin
				if (ethernetsoc_sdram_bankmachine3_cmd_buffer_source_valid) begin
					if (ethernetsoc_sdram_bankmachine3_row_opened) begin
						if (ethernetsoc_sdram_bankmachine3_row_hit) begin
							ethernetsoc_sdram_bankmachine3_cmd_valid <= 1'd1;
							if (ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_we) begin
								ethernetsoc_sdram_bankmachine3_req_wdata_ready <= ethernetsoc_sdram_bankmachine3_cmd_ready;
								ethernetsoc_sdram_bankmachine3_cmd_payload_is_write <= 1'd1;
								ethernetsoc_sdram_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								ethernetsoc_sdram_bankmachine3_req_rdata_valid <= ethernetsoc_sdram_bankmachine3_cmd_ready;
								ethernetsoc_sdram_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							ethernetsoc_sdram_bankmachine3_cmd_payload_cas <= 1'd1;
							if ((ethernetsoc_sdram_bankmachine3_cmd_ready & ethernetsoc_sdram_bankmachine3_auto_precharge)) begin
								bankmachine3_next_state <= 2'd2;
							end
						end else begin
							bankmachine3_next_state <= 1'd1;
						end
					end else begin
						bankmachine3_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid = ethernetsoc_sdram_bankmachine4_req_valid;
assign ethernetsoc_sdram_bankmachine4_req_ready = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we = ethernetsoc_sdram_bankmachine4_req_we;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_addr = ethernetsoc_sdram_bankmachine4_req_addr;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_valid = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready = ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_ready;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_first = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_last = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_payload_we = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_payload_addr = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_source_ready = (ethernetsoc_sdram_bankmachine4_req_wdata_ready | ethernetsoc_sdram_bankmachine4_req_rdata_valid);
assign ethernetsoc_sdram_bankmachine4_req_lock = (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid | ethernetsoc_sdram_bankmachine4_cmd_buffer_source_valid);
assign ethernetsoc_sdram_bankmachine4_row_hit = (ethernetsoc_sdram_bankmachine4_row == ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[19:7]);
assign ethernetsoc_sdram_bankmachine4_cmd_payload_ba = 3'd4;
always @(*) begin
	ethernetsoc_sdram_bankmachine4_cmd_payload_a <= 13'd0;
	if (ethernetsoc_sdram_bankmachine4_row_col_n_addr_sel) begin
		ethernetsoc_sdram_bankmachine4_cmd_payload_a <= ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[19:7];
	end else begin
		ethernetsoc_sdram_bankmachine4_cmd_payload_a <= ((ethernetsoc_sdram_bankmachine4_auto_precharge <<< 4'd10) | {ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign ethernetsoc_sdram_bankmachine4_twtpcon_valid = ((ethernetsoc_sdram_bankmachine4_cmd_valid & ethernetsoc_sdram_bankmachine4_cmd_ready) & ethernetsoc_sdram_bankmachine4_cmd_payload_is_write);
assign ethernetsoc_sdram_bankmachine4_trccon_valid = ((ethernetsoc_sdram_bankmachine4_cmd_valid & ethernetsoc_sdram_bankmachine4_cmd_ready) & ethernetsoc_sdram_bankmachine4_row_open);
assign ethernetsoc_sdram_bankmachine4_trascon_valid = ((ethernetsoc_sdram_bankmachine4_cmd_valid & ethernetsoc_sdram_bankmachine4_cmd_ready) & ethernetsoc_sdram_bankmachine4_row_open);
always @(*) begin
	ethernetsoc_sdram_bankmachine4_auto_precharge <= 1'd0;
	if ((ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid & ethernetsoc_sdram_bankmachine4_cmd_buffer_source_valid)) begin
		if ((ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr[19:7] != ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[19:7])) begin
			ethernetsoc_sdram_bankmachine4_auto_precharge <= (ethernetsoc_sdram_bankmachine4_row_close == 1'd0);
		end
	end
end
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din = {ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last, ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first, ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr, ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we};
assign {ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last, ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first, ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr, ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we} = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_ready = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_valid;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_first = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_first;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_last = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_last;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_valid = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_first = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_last = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_we = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_payload_addr = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_source_ready;
always @(*) begin
	ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace) begin
		ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr <= ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce;
	end
end
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we = (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable | ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace));
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read = (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable & ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_re);
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout = ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable = (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_level != 4'd8);
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable = (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_level != 1'd0);
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_pipe_ce = (ethernetsoc_sdram_bankmachine4_cmd_buffer_source_ready | (~ethernetsoc_sdram_bankmachine4_cmd_buffer_valid_n));
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_ready = ethernetsoc_sdram_bankmachine4_cmd_buffer_pipe_ce;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_source_valid = ethernetsoc_sdram_bankmachine4_cmd_buffer_valid_n;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_busy = (1'd0 | ethernetsoc_sdram_bankmachine4_cmd_buffer_valid_n);
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_source_first = ethernetsoc_sdram_bankmachine4_cmd_buffer_first_n;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_source_last = ethernetsoc_sdram_bankmachine4_cmd_buffer_last_n;
always @(*) begin
	ethernetsoc_sdram_bankmachine4_twtpcon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine4_twtpcon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine4_twtpcon_ready0 <= ethernetsoc_sdram_bankmachine4_twtpcon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine4_trccon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine4_trccon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine4_trccon_ready0 <= ethernetsoc_sdram_bankmachine4_trccon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine4_trascon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine4_trascon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine4_trascon_ready0 <= ethernetsoc_sdram_bankmachine4_trascon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd0;
	ethernetsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd0;
	ethernetsoc_sdram_bankmachine4_cmd_payload_we <= 1'd0;
	ethernetsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	ethernetsoc_sdram_bankmachine4_row_open <= 1'd0;
	ethernetsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd0;
	ethernetsoc_sdram_bankmachine4_row_close <= 1'd0;
	ethernetsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd0;
	ethernetsoc_sdram_bankmachine4_req_wdata_ready <= 1'd0;
	bankmachine4_next_state <= 3'd0;
	ethernetsoc_sdram_bankmachine4_req_rdata_valid <= 1'd0;
	ethernetsoc_sdram_bankmachine4_row_col_n_addr_sel <= 1'd0;
	ethernetsoc_sdram_bankmachine4_refresh_gnt <= 1'd0;
	ethernetsoc_sdram_bankmachine4_cmd_valid <= 1'd0;
	bankmachine4_next_state <= bankmachine4_state;
	case (bankmachine4_state)
		1'd1: begin
			if ((ethernetsoc_sdram_bankmachine4_twtpcon_ready0 & ethernetsoc_sdram_bankmachine4_trascon_ready0)) begin
				ethernetsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
				if (ethernetsoc_sdram_bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd5;
				end
				ethernetsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
				ethernetsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
				ethernetsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine4_row_close <= 1'd1;
		end
		2'd2: begin
			if ((ethernetsoc_sdram_bankmachine4_twtpcon_ready0 & ethernetsoc_sdram_bankmachine4_trascon_ready0)) begin
				bankmachine4_next_state <= 3'd5;
			end
			ethernetsoc_sdram_bankmachine4_row_close <= 1'd1;
		end
		2'd3: begin
			if (ethernetsoc_sdram_bankmachine4_trccon_ready0) begin
				ethernetsoc_sdram_bankmachine4_row_col_n_addr_sel <= 1'd1;
				ethernetsoc_sdram_bankmachine4_row_open <= 1'd1;
				ethernetsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
				ethernetsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
				if (ethernetsoc_sdram_bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd6;
				end
				ethernetsoc_sdram_bankmachine4_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (ethernetsoc_sdram_bankmachine4_twtpcon_ready0) begin
				ethernetsoc_sdram_bankmachine4_refresh_gnt <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine4_row_close <= 1'd1;
			ethernetsoc_sdram_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~ethernetsoc_sdram_bankmachine4_refresh_req)) begin
				bankmachine4_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine4_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (ethernetsoc_sdram_bankmachine4_refresh_req) begin
				bankmachine4_next_state <= 3'd4;
			end else begin
				if (ethernetsoc_sdram_bankmachine4_cmd_buffer_source_valid) begin
					if (ethernetsoc_sdram_bankmachine4_row_opened) begin
						if (ethernetsoc_sdram_bankmachine4_row_hit) begin
							ethernetsoc_sdram_bankmachine4_cmd_valid <= 1'd1;
							if (ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_we) begin
								ethernetsoc_sdram_bankmachine4_req_wdata_ready <= ethernetsoc_sdram_bankmachine4_cmd_ready;
								ethernetsoc_sdram_bankmachine4_cmd_payload_is_write <= 1'd1;
								ethernetsoc_sdram_bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								ethernetsoc_sdram_bankmachine4_req_rdata_valid <= ethernetsoc_sdram_bankmachine4_cmd_ready;
								ethernetsoc_sdram_bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							ethernetsoc_sdram_bankmachine4_cmd_payload_cas <= 1'd1;
							if ((ethernetsoc_sdram_bankmachine4_cmd_ready & ethernetsoc_sdram_bankmachine4_auto_precharge)) begin
								bankmachine4_next_state <= 2'd2;
							end
						end else begin
							bankmachine4_next_state <= 1'd1;
						end
					end else begin
						bankmachine4_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid = ethernetsoc_sdram_bankmachine5_req_valid;
assign ethernetsoc_sdram_bankmachine5_req_ready = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we = ethernetsoc_sdram_bankmachine5_req_we;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_addr = ethernetsoc_sdram_bankmachine5_req_addr;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_valid = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready = ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_ready;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_first = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_last = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_payload_we = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_payload_addr = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_source_ready = (ethernetsoc_sdram_bankmachine5_req_wdata_ready | ethernetsoc_sdram_bankmachine5_req_rdata_valid);
assign ethernetsoc_sdram_bankmachine5_req_lock = (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid | ethernetsoc_sdram_bankmachine5_cmd_buffer_source_valid);
assign ethernetsoc_sdram_bankmachine5_row_hit = (ethernetsoc_sdram_bankmachine5_row == ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[19:7]);
assign ethernetsoc_sdram_bankmachine5_cmd_payload_ba = 3'd5;
always @(*) begin
	ethernetsoc_sdram_bankmachine5_cmd_payload_a <= 13'd0;
	if (ethernetsoc_sdram_bankmachine5_row_col_n_addr_sel) begin
		ethernetsoc_sdram_bankmachine5_cmd_payload_a <= ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[19:7];
	end else begin
		ethernetsoc_sdram_bankmachine5_cmd_payload_a <= ((ethernetsoc_sdram_bankmachine5_auto_precharge <<< 4'd10) | {ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign ethernetsoc_sdram_bankmachine5_twtpcon_valid = ((ethernetsoc_sdram_bankmachine5_cmd_valid & ethernetsoc_sdram_bankmachine5_cmd_ready) & ethernetsoc_sdram_bankmachine5_cmd_payload_is_write);
assign ethernetsoc_sdram_bankmachine5_trccon_valid = ((ethernetsoc_sdram_bankmachine5_cmd_valid & ethernetsoc_sdram_bankmachine5_cmd_ready) & ethernetsoc_sdram_bankmachine5_row_open);
assign ethernetsoc_sdram_bankmachine5_trascon_valid = ((ethernetsoc_sdram_bankmachine5_cmd_valid & ethernetsoc_sdram_bankmachine5_cmd_ready) & ethernetsoc_sdram_bankmachine5_row_open);
always @(*) begin
	ethernetsoc_sdram_bankmachine5_auto_precharge <= 1'd0;
	if ((ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid & ethernetsoc_sdram_bankmachine5_cmd_buffer_source_valid)) begin
		if ((ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr[19:7] != ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[19:7])) begin
			ethernetsoc_sdram_bankmachine5_auto_precharge <= (ethernetsoc_sdram_bankmachine5_row_close == 1'd0);
		end
	end
end
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din = {ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last, ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first, ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr, ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we};
assign {ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last, ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first, ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr, ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we} = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_ready = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_valid;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_first = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_first;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_last = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_last;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_valid = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_first = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_last = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_we = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_payload_addr = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_source_ready;
always @(*) begin
	ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace) begin
		ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr <= ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce;
	end
end
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we = (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable | ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace));
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read = (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable & ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_re);
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout = ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable = (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_level != 4'd8);
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable = (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_level != 1'd0);
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_pipe_ce = (ethernetsoc_sdram_bankmachine5_cmd_buffer_source_ready | (~ethernetsoc_sdram_bankmachine5_cmd_buffer_valid_n));
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_ready = ethernetsoc_sdram_bankmachine5_cmd_buffer_pipe_ce;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_source_valid = ethernetsoc_sdram_bankmachine5_cmd_buffer_valid_n;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_busy = (1'd0 | ethernetsoc_sdram_bankmachine5_cmd_buffer_valid_n);
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_source_first = ethernetsoc_sdram_bankmachine5_cmd_buffer_first_n;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_source_last = ethernetsoc_sdram_bankmachine5_cmd_buffer_last_n;
always @(*) begin
	ethernetsoc_sdram_bankmachine5_twtpcon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine5_twtpcon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine5_twtpcon_ready0 <= ethernetsoc_sdram_bankmachine5_twtpcon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine5_trccon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine5_trccon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine5_trccon_ready0 <= ethernetsoc_sdram_bankmachine5_trccon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine5_trascon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine5_trascon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine5_trascon_ready0 <= ethernetsoc_sdram_bankmachine5_trascon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	ethernetsoc_sdram_bankmachine5_row_open <= 1'd0;
	ethernetsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd0;
	ethernetsoc_sdram_bankmachine5_row_close <= 1'd0;
	ethernetsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd0;
	ethernetsoc_sdram_bankmachine5_req_wdata_ready <= 1'd0;
	ethernetsoc_sdram_bankmachine5_req_rdata_valid <= 1'd0;
	ethernetsoc_sdram_bankmachine5_row_col_n_addr_sel <= 1'd0;
	ethernetsoc_sdram_bankmachine5_refresh_gnt <= 1'd0;
	ethernetsoc_sdram_bankmachine5_cmd_valid <= 1'd0;
	bankmachine5_next_state <= 3'd0;
	ethernetsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd0;
	ethernetsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd0;
	ethernetsoc_sdram_bankmachine5_cmd_payload_we <= 1'd0;
	bankmachine5_next_state <= bankmachine5_state;
	case (bankmachine5_state)
		1'd1: begin
			if ((ethernetsoc_sdram_bankmachine5_twtpcon_ready0 & ethernetsoc_sdram_bankmachine5_trascon_ready0)) begin
				ethernetsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
				if (ethernetsoc_sdram_bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd5;
				end
				ethernetsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
				ethernetsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
				ethernetsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine5_row_close <= 1'd1;
		end
		2'd2: begin
			if ((ethernetsoc_sdram_bankmachine5_twtpcon_ready0 & ethernetsoc_sdram_bankmachine5_trascon_ready0)) begin
				bankmachine5_next_state <= 3'd5;
			end
			ethernetsoc_sdram_bankmachine5_row_close <= 1'd1;
		end
		2'd3: begin
			if (ethernetsoc_sdram_bankmachine5_trccon_ready0) begin
				ethernetsoc_sdram_bankmachine5_row_col_n_addr_sel <= 1'd1;
				ethernetsoc_sdram_bankmachine5_row_open <= 1'd1;
				ethernetsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
				ethernetsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
				if (ethernetsoc_sdram_bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd6;
				end
				ethernetsoc_sdram_bankmachine5_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (ethernetsoc_sdram_bankmachine5_twtpcon_ready0) begin
				ethernetsoc_sdram_bankmachine5_refresh_gnt <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine5_row_close <= 1'd1;
			ethernetsoc_sdram_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~ethernetsoc_sdram_bankmachine5_refresh_req)) begin
				bankmachine5_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine5_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (ethernetsoc_sdram_bankmachine5_refresh_req) begin
				bankmachine5_next_state <= 3'd4;
			end else begin
				if (ethernetsoc_sdram_bankmachine5_cmd_buffer_source_valid) begin
					if (ethernetsoc_sdram_bankmachine5_row_opened) begin
						if (ethernetsoc_sdram_bankmachine5_row_hit) begin
							ethernetsoc_sdram_bankmachine5_cmd_valid <= 1'd1;
							if (ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_we) begin
								ethernetsoc_sdram_bankmachine5_req_wdata_ready <= ethernetsoc_sdram_bankmachine5_cmd_ready;
								ethernetsoc_sdram_bankmachine5_cmd_payload_is_write <= 1'd1;
								ethernetsoc_sdram_bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								ethernetsoc_sdram_bankmachine5_req_rdata_valid <= ethernetsoc_sdram_bankmachine5_cmd_ready;
								ethernetsoc_sdram_bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							ethernetsoc_sdram_bankmachine5_cmd_payload_cas <= 1'd1;
							if ((ethernetsoc_sdram_bankmachine5_cmd_ready & ethernetsoc_sdram_bankmachine5_auto_precharge)) begin
								bankmachine5_next_state <= 2'd2;
							end
						end else begin
							bankmachine5_next_state <= 1'd1;
						end
					end else begin
						bankmachine5_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid = ethernetsoc_sdram_bankmachine6_req_valid;
assign ethernetsoc_sdram_bankmachine6_req_ready = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we = ethernetsoc_sdram_bankmachine6_req_we;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_addr = ethernetsoc_sdram_bankmachine6_req_addr;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_valid = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready = ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_ready;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_first = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_last = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_payload_we = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_payload_addr = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_source_ready = (ethernetsoc_sdram_bankmachine6_req_wdata_ready | ethernetsoc_sdram_bankmachine6_req_rdata_valid);
assign ethernetsoc_sdram_bankmachine6_req_lock = (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid | ethernetsoc_sdram_bankmachine6_cmd_buffer_source_valid);
assign ethernetsoc_sdram_bankmachine6_row_hit = (ethernetsoc_sdram_bankmachine6_row == ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[19:7]);
assign ethernetsoc_sdram_bankmachine6_cmd_payload_ba = 3'd6;
always @(*) begin
	ethernetsoc_sdram_bankmachine6_cmd_payload_a <= 13'd0;
	if (ethernetsoc_sdram_bankmachine6_row_col_n_addr_sel) begin
		ethernetsoc_sdram_bankmachine6_cmd_payload_a <= ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[19:7];
	end else begin
		ethernetsoc_sdram_bankmachine6_cmd_payload_a <= ((ethernetsoc_sdram_bankmachine6_auto_precharge <<< 4'd10) | {ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign ethernetsoc_sdram_bankmachine6_twtpcon_valid = ((ethernetsoc_sdram_bankmachine6_cmd_valid & ethernetsoc_sdram_bankmachine6_cmd_ready) & ethernetsoc_sdram_bankmachine6_cmd_payload_is_write);
assign ethernetsoc_sdram_bankmachine6_trccon_valid = ((ethernetsoc_sdram_bankmachine6_cmd_valid & ethernetsoc_sdram_bankmachine6_cmd_ready) & ethernetsoc_sdram_bankmachine6_row_open);
assign ethernetsoc_sdram_bankmachine6_trascon_valid = ((ethernetsoc_sdram_bankmachine6_cmd_valid & ethernetsoc_sdram_bankmachine6_cmd_ready) & ethernetsoc_sdram_bankmachine6_row_open);
always @(*) begin
	ethernetsoc_sdram_bankmachine6_auto_precharge <= 1'd0;
	if ((ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid & ethernetsoc_sdram_bankmachine6_cmd_buffer_source_valid)) begin
		if ((ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr[19:7] != ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[19:7])) begin
			ethernetsoc_sdram_bankmachine6_auto_precharge <= (ethernetsoc_sdram_bankmachine6_row_close == 1'd0);
		end
	end
end
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din = {ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last, ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first, ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr, ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we};
assign {ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last, ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first, ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr, ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we} = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_ready = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_valid;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_first = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_first;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_last = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_last;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_valid = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_first = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_last = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_we = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_payload_addr = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_source_ready;
always @(*) begin
	ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace) begin
		ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr <= ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce;
	end
end
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we = (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable | ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace));
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read = (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable & ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_re);
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout = ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable = (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_level != 4'd8);
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable = (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_level != 1'd0);
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_pipe_ce = (ethernetsoc_sdram_bankmachine6_cmd_buffer_source_ready | (~ethernetsoc_sdram_bankmachine6_cmd_buffer_valid_n));
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_ready = ethernetsoc_sdram_bankmachine6_cmd_buffer_pipe_ce;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_source_valid = ethernetsoc_sdram_bankmachine6_cmd_buffer_valid_n;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_busy = (1'd0 | ethernetsoc_sdram_bankmachine6_cmd_buffer_valid_n);
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_source_first = ethernetsoc_sdram_bankmachine6_cmd_buffer_first_n;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_source_last = ethernetsoc_sdram_bankmachine6_cmd_buffer_last_n;
always @(*) begin
	ethernetsoc_sdram_bankmachine6_twtpcon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine6_twtpcon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine6_twtpcon_ready0 <= ethernetsoc_sdram_bankmachine6_twtpcon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine6_trccon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine6_trccon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine6_trccon_ready0 <= ethernetsoc_sdram_bankmachine6_trccon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine6_trascon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine6_trascon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine6_trascon_ready0 <= ethernetsoc_sdram_bankmachine6_trascon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine6_refresh_gnt <= 1'd0;
	ethernetsoc_sdram_bankmachine6_cmd_valid <= 1'd0;
	bankmachine6_next_state <= 3'd0;
	ethernetsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd0;
	ethernetsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd0;
	ethernetsoc_sdram_bankmachine6_cmd_payload_we <= 1'd0;
	ethernetsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	ethernetsoc_sdram_bankmachine6_row_open <= 1'd0;
	ethernetsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd0;
	ethernetsoc_sdram_bankmachine6_row_close <= 1'd0;
	ethernetsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd0;
	ethernetsoc_sdram_bankmachine6_req_wdata_ready <= 1'd0;
	ethernetsoc_sdram_bankmachine6_req_rdata_valid <= 1'd0;
	ethernetsoc_sdram_bankmachine6_row_col_n_addr_sel <= 1'd0;
	bankmachine6_next_state <= bankmachine6_state;
	case (bankmachine6_state)
		1'd1: begin
			if ((ethernetsoc_sdram_bankmachine6_twtpcon_ready0 & ethernetsoc_sdram_bankmachine6_trascon_ready0)) begin
				ethernetsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
				if (ethernetsoc_sdram_bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd5;
				end
				ethernetsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
				ethernetsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
				ethernetsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine6_row_close <= 1'd1;
		end
		2'd2: begin
			if ((ethernetsoc_sdram_bankmachine6_twtpcon_ready0 & ethernetsoc_sdram_bankmachine6_trascon_ready0)) begin
				bankmachine6_next_state <= 3'd5;
			end
			ethernetsoc_sdram_bankmachine6_row_close <= 1'd1;
		end
		2'd3: begin
			if (ethernetsoc_sdram_bankmachine6_trccon_ready0) begin
				ethernetsoc_sdram_bankmachine6_row_col_n_addr_sel <= 1'd1;
				ethernetsoc_sdram_bankmachine6_row_open <= 1'd1;
				ethernetsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
				ethernetsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
				if (ethernetsoc_sdram_bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd6;
				end
				ethernetsoc_sdram_bankmachine6_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (ethernetsoc_sdram_bankmachine6_twtpcon_ready0) begin
				ethernetsoc_sdram_bankmachine6_refresh_gnt <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine6_row_close <= 1'd1;
			ethernetsoc_sdram_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~ethernetsoc_sdram_bankmachine6_refresh_req)) begin
				bankmachine6_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine6_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (ethernetsoc_sdram_bankmachine6_refresh_req) begin
				bankmachine6_next_state <= 3'd4;
			end else begin
				if (ethernetsoc_sdram_bankmachine6_cmd_buffer_source_valid) begin
					if (ethernetsoc_sdram_bankmachine6_row_opened) begin
						if (ethernetsoc_sdram_bankmachine6_row_hit) begin
							ethernetsoc_sdram_bankmachine6_cmd_valid <= 1'd1;
							if (ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_we) begin
								ethernetsoc_sdram_bankmachine6_req_wdata_ready <= ethernetsoc_sdram_bankmachine6_cmd_ready;
								ethernetsoc_sdram_bankmachine6_cmd_payload_is_write <= 1'd1;
								ethernetsoc_sdram_bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								ethernetsoc_sdram_bankmachine6_req_rdata_valid <= ethernetsoc_sdram_bankmachine6_cmd_ready;
								ethernetsoc_sdram_bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							ethernetsoc_sdram_bankmachine6_cmd_payload_cas <= 1'd1;
							if ((ethernetsoc_sdram_bankmachine6_cmd_ready & ethernetsoc_sdram_bankmachine6_auto_precharge)) begin
								bankmachine6_next_state <= 2'd2;
							end
						end else begin
							bankmachine6_next_state <= 1'd1;
						end
					end else begin
						bankmachine6_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid = ethernetsoc_sdram_bankmachine7_req_valid;
assign ethernetsoc_sdram_bankmachine7_req_ready = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we = ethernetsoc_sdram_bankmachine7_req_we;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_addr = ethernetsoc_sdram_bankmachine7_req_addr;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_valid = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready = ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_ready;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_first = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_last = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_payload_we = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_payload_addr = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_source_ready = (ethernetsoc_sdram_bankmachine7_req_wdata_ready | ethernetsoc_sdram_bankmachine7_req_rdata_valid);
assign ethernetsoc_sdram_bankmachine7_req_lock = (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid | ethernetsoc_sdram_bankmachine7_cmd_buffer_source_valid);
assign ethernetsoc_sdram_bankmachine7_row_hit = (ethernetsoc_sdram_bankmachine7_row == ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[19:7]);
assign ethernetsoc_sdram_bankmachine7_cmd_payload_ba = 3'd7;
always @(*) begin
	ethernetsoc_sdram_bankmachine7_cmd_payload_a <= 13'd0;
	if (ethernetsoc_sdram_bankmachine7_row_col_n_addr_sel) begin
		ethernetsoc_sdram_bankmachine7_cmd_payload_a <= ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[19:7];
	end else begin
		ethernetsoc_sdram_bankmachine7_cmd_payload_a <= ((ethernetsoc_sdram_bankmachine7_auto_precharge <<< 4'd10) | {ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[6:0], {3{1'd0}}});
	end
end
assign ethernetsoc_sdram_bankmachine7_twtpcon_valid = ((ethernetsoc_sdram_bankmachine7_cmd_valid & ethernetsoc_sdram_bankmachine7_cmd_ready) & ethernetsoc_sdram_bankmachine7_cmd_payload_is_write);
assign ethernetsoc_sdram_bankmachine7_trccon_valid = ((ethernetsoc_sdram_bankmachine7_cmd_valid & ethernetsoc_sdram_bankmachine7_cmd_ready) & ethernetsoc_sdram_bankmachine7_row_open);
assign ethernetsoc_sdram_bankmachine7_trascon_valid = ((ethernetsoc_sdram_bankmachine7_cmd_valid & ethernetsoc_sdram_bankmachine7_cmd_ready) & ethernetsoc_sdram_bankmachine7_row_open);
always @(*) begin
	ethernetsoc_sdram_bankmachine7_auto_precharge <= 1'd0;
	if ((ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid & ethernetsoc_sdram_bankmachine7_cmd_buffer_source_valid)) begin
		if ((ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr[19:7] != ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[19:7])) begin
			ethernetsoc_sdram_bankmachine7_auto_precharge <= (ethernetsoc_sdram_bankmachine7_row_close == 1'd0);
		end
	end
end
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din = {ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last, ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first, ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr, ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we};
assign {ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last, ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first, ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr, ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we} = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_ready = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_valid;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_first = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_first;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_last = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_last;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_valid = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_first = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_last = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_we = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_payload_addr = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_source_ready;
always @(*) begin
	ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace) begin
		ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr <= ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce;
	end
end
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we = (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable | ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace));
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read = (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable & ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_re);
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout = ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable = (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_level != 4'd8);
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable = (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_level != 1'd0);
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_pipe_ce = (ethernetsoc_sdram_bankmachine7_cmd_buffer_source_ready | (~ethernetsoc_sdram_bankmachine7_cmd_buffer_valid_n));
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_ready = ethernetsoc_sdram_bankmachine7_cmd_buffer_pipe_ce;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_source_valid = ethernetsoc_sdram_bankmachine7_cmd_buffer_valid_n;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_busy = (1'd0 | ethernetsoc_sdram_bankmachine7_cmd_buffer_valid_n);
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_source_first = ethernetsoc_sdram_bankmachine7_cmd_buffer_first_n;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_source_last = ethernetsoc_sdram_bankmachine7_cmd_buffer_last_n;
always @(*) begin
	ethernetsoc_sdram_bankmachine7_twtpcon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine7_twtpcon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine7_twtpcon_ready0 <= ethernetsoc_sdram_bankmachine7_twtpcon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine7_trccon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine7_trccon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine7_trccon_ready0 <= ethernetsoc_sdram_bankmachine7_trccon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine7_trascon_ready0 <= 1'd0;
	ethernetsoc_sdram_bankmachine7_trascon_ready0 <= 1'd1;
	ethernetsoc_sdram_bankmachine7_trascon_ready0 <= ethernetsoc_sdram_bankmachine7_trascon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd0;
	bankmachine7_next_state <= 3'd0;
	ethernetsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd0;
	ethernetsoc_sdram_bankmachine7_cmd_payload_we <= 1'd0;
	ethernetsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	ethernetsoc_sdram_bankmachine7_row_open <= 1'd0;
	ethernetsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd0;
	ethernetsoc_sdram_bankmachine7_row_close <= 1'd0;
	ethernetsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd0;
	ethernetsoc_sdram_bankmachine7_req_wdata_ready <= 1'd0;
	ethernetsoc_sdram_bankmachine7_req_rdata_valid <= 1'd0;
	ethernetsoc_sdram_bankmachine7_row_col_n_addr_sel <= 1'd0;
	ethernetsoc_sdram_bankmachine7_refresh_gnt <= 1'd0;
	ethernetsoc_sdram_bankmachine7_cmd_valid <= 1'd0;
	bankmachine7_next_state <= bankmachine7_state;
	case (bankmachine7_state)
		1'd1: begin
			if ((ethernetsoc_sdram_bankmachine7_twtpcon_ready0 & ethernetsoc_sdram_bankmachine7_trascon_ready0)) begin
				ethernetsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
				if (ethernetsoc_sdram_bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd5;
				end
				ethernetsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
				ethernetsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
				ethernetsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine7_row_close <= 1'd1;
		end
		2'd2: begin
			if ((ethernetsoc_sdram_bankmachine7_twtpcon_ready0 & ethernetsoc_sdram_bankmachine7_trascon_ready0)) begin
				bankmachine7_next_state <= 3'd5;
			end
			ethernetsoc_sdram_bankmachine7_row_close <= 1'd1;
		end
		2'd3: begin
			if (ethernetsoc_sdram_bankmachine7_trccon_ready0) begin
				ethernetsoc_sdram_bankmachine7_row_col_n_addr_sel <= 1'd1;
				ethernetsoc_sdram_bankmachine7_row_open <= 1'd1;
				ethernetsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
				ethernetsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
				if (ethernetsoc_sdram_bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd6;
				end
				ethernetsoc_sdram_bankmachine7_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (ethernetsoc_sdram_bankmachine7_twtpcon_ready0) begin
				ethernetsoc_sdram_bankmachine7_refresh_gnt <= 1'd1;
			end
			ethernetsoc_sdram_bankmachine7_row_close <= 1'd1;
			ethernetsoc_sdram_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~ethernetsoc_sdram_bankmachine7_refresh_req)) begin
				bankmachine7_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine7_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (ethernetsoc_sdram_bankmachine7_refresh_req) begin
				bankmachine7_next_state <= 3'd4;
			end else begin
				if (ethernetsoc_sdram_bankmachine7_cmd_buffer_source_valid) begin
					if (ethernetsoc_sdram_bankmachine7_row_opened) begin
						if (ethernetsoc_sdram_bankmachine7_row_hit) begin
							ethernetsoc_sdram_bankmachine7_cmd_valid <= 1'd1;
							if (ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_we) begin
								ethernetsoc_sdram_bankmachine7_req_wdata_ready <= ethernetsoc_sdram_bankmachine7_cmd_ready;
								ethernetsoc_sdram_bankmachine7_cmd_payload_is_write <= 1'd1;
								ethernetsoc_sdram_bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								ethernetsoc_sdram_bankmachine7_req_rdata_valid <= ethernetsoc_sdram_bankmachine7_cmd_ready;
								ethernetsoc_sdram_bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							ethernetsoc_sdram_bankmachine7_cmd_payload_cas <= 1'd1;
							if ((ethernetsoc_sdram_bankmachine7_cmd_ready & ethernetsoc_sdram_bankmachine7_auto_precharge)) begin
								bankmachine7_next_state <= 2'd2;
							end
						end else begin
							bankmachine7_next_state <= 1'd1;
						end
					end else begin
						bankmachine7_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
end
assign ethernetsoc_sdram_trrdcon_valid = ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ((ethernetsoc_sdram_choose_cmd_cmd_payload_ras & (~ethernetsoc_sdram_choose_cmd_cmd_payload_cas)) & (~ethernetsoc_sdram_choose_cmd_cmd_payload_we)));
assign ethernetsoc_sdram_tfawcon_valid = ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ((ethernetsoc_sdram_choose_cmd_cmd_payload_ras & (~ethernetsoc_sdram_choose_cmd_cmd_payload_cas)) & (~ethernetsoc_sdram_choose_cmd_cmd_payload_we)));
assign ethernetsoc_sdram_ras_allowed = (ethernetsoc_sdram_trrdcon_ready0 & ethernetsoc_sdram_tfawcon_ready);
assign ethernetsoc_sdram_tccdcon_valid = ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & (ethernetsoc_sdram_choose_req_cmd_payload_is_write | ethernetsoc_sdram_choose_req_cmd_payload_is_read));
assign ethernetsoc_sdram_cas_allowed = ethernetsoc_sdram_tccdcon_ready0;
assign ethernetsoc_sdram_twtrcon_valid = ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_is_write);
assign ethernetsoc_sdram_read_available = ((((((((ethernetsoc_sdram_bankmachine0_cmd_valid & ethernetsoc_sdram_bankmachine0_cmd_payload_is_read) | (ethernetsoc_sdram_bankmachine1_cmd_valid & ethernetsoc_sdram_bankmachine1_cmd_payload_is_read)) | (ethernetsoc_sdram_bankmachine2_cmd_valid & ethernetsoc_sdram_bankmachine2_cmd_payload_is_read)) | (ethernetsoc_sdram_bankmachine3_cmd_valid & ethernetsoc_sdram_bankmachine3_cmd_payload_is_read)) | (ethernetsoc_sdram_bankmachine4_cmd_valid & ethernetsoc_sdram_bankmachine4_cmd_payload_is_read)) | (ethernetsoc_sdram_bankmachine5_cmd_valid & ethernetsoc_sdram_bankmachine5_cmd_payload_is_read)) | (ethernetsoc_sdram_bankmachine6_cmd_valid & ethernetsoc_sdram_bankmachine6_cmd_payload_is_read)) | (ethernetsoc_sdram_bankmachine7_cmd_valid & ethernetsoc_sdram_bankmachine7_cmd_payload_is_read));
assign ethernetsoc_sdram_write_available = ((((((((ethernetsoc_sdram_bankmachine0_cmd_valid & ethernetsoc_sdram_bankmachine0_cmd_payload_is_write) | (ethernetsoc_sdram_bankmachine1_cmd_valid & ethernetsoc_sdram_bankmachine1_cmd_payload_is_write)) | (ethernetsoc_sdram_bankmachine2_cmd_valid & ethernetsoc_sdram_bankmachine2_cmd_payload_is_write)) | (ethernetsoc_sdram_bankmachine3_cmd_valid & ethernetsoc_sdram_bankmachine3_cmd_payload_is_write)) | (ethernetsoc_sdram_bankmachine4_cmd_valid & ethernetsoc_sdram_bankmachine4_cmd_payload_is_write)) | (ethernetsoc_sdram_bankmachine5_cmd_valid & ethernetsoc_sdram_bankmachine5_cmd_payload_is_write)) | (ethernetsoc_sdram_bankmachine6_cmd_valid & ethernetsoc_sdram_bankmachine6_cmd_payload_is_write)) | (ethernetsoc_sdram_bankmachine7_cmd_valid & ethernetsoc_sdram_bankmachine7_cmd_payload_is_write));
assign ethernetsoc_sdram_max_time0 = (ethernetsoc_sdram_time0 == 1'd0);
assign ethernetsoc_sdram_max_time1 = (ethernetsoc_sdram_time1 == 1'd0);
assign ethernetsoc_sdram_bankmachine0_refresh_req = ethernetsoc_sdram_cmd_valid;
assign ethernetsoc_sdram_bankmachine1_refresh_req = ethernetsoc_sdram_cmd_valid;
assign ethernetsoc_sdram_bankmachine2_refresh_req = ethernetsoc_sdram_cmd_valid;
assign ethernetsoc_sdram_bankmachine3_refresh_req = ethernetsoc_sdram_cmd_valid;
assign ethernetsoc_sdram_bankmachine4_refresh_req = ethernetsoc_sdram_cmd_valid;
assign ethernetsoc_sdram_bankmachine5_refresh_req = ethernetsoc_sdram_cmd_valid;
assign ethernetsoc_sdram_bankmachine6_refresh_req = ethernetsoc_sdram_cmd_valid;
assign ethernetsoc_sdram_bankmachine7_refresh_req = ethernetsoc_sdram_cmd_valid;
assign ethernetsoc_sdram_go_to_refresh = (((((((ethernetsoc_sdram_bankmachine0_refresh_gnt & ethernetsoc_sdram_bankmachine1_refresh_gnt) & ethernetsoc_sdram_bankmachine2_refresh_gnt) & ethernetsoc_sdram_bankmachine3_refresh_gnt) & ethernetsoc_sdram_bankmachine4_refresh_gnt) & ethernetsoc_sdram_bankmachine5_refresh_gnt) & ethernetsoc_sdram_bankmachine6_refresh_gnt) & ethernetsoc_sdram_bankmachine7_refresh_gnt);
assign ethernetsoc_sdram_interface_rdata = {ethernetsoc_sdram_dfi_p1_rddata, ethernetsoc_sdram_dfi_p0_rddata};
assign {ethernetsoc_sdram_dfi_p1_wrdata, ethernetsoc_sdram_dfi_p0_wrdata} = ethernetsoc_sdram_interface_wdata;
assign {ethernetsoc_sdram_dfi_p1_wrdata_mask, ethernetsoc_sdram_dfi_p0_wrdata_mask} = (~ethernetsoc_sdram_interface_wdata_we);
always @(*) begin
	ethernetsoc_sdram_choose_cmd_valids <= 8'd0;
	ethernetsoc_sdram_choose_cmd_valids[0] <= (ethernetsoc_sdram_bankmachine0_cmd_valid & (((ethernetsoc_sdram_bankmachine0_cmd_payload_is_cmd & ethernetsoc_sdram_choose_cmd_want_cmds) & ((~((ethernetsoc_sdram_bankmachine0_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine0_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine0_cmd_payload_we))) | ethernetsoc_sdram_choose_cmd_want_activates)) | ((ethernetsoc_sdram_bankmachine0_cmd_payload_is_read == ethernetsoc_sdram_choose_cmd_want_reads) & (ethernetsoc_sdram_bankmachine0_cmd_payload_is_write == ethernetsoc_sdram_choose_cmd_want_writes))));
	ethernetsoc_sdram_choose_cmd_valids[1] <= (ethernetsoc_sdram_bankmachine1_cmd_valid & (((ethernetsoc_sdram_bankmachine1_cmd_payload_is_cmd & ethernetsoc_sdram_choose_cmd_want_cmds) & ((~((ethernetsoc_sdram_bankmachine1_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine1_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine1_cmd_payload_we))) | ethernetsoc_sdram_choose_cmd_want_activates)) | ((ethernetsoc_sdram_bankmachine1_cmd_payload_is_read == ethernetsoc_sdram_choose_cmd_want_reads) & (ethernetsoc_sdram_bankmachine1_cmd_payload_is_write == ethernetsoc_sdram_choose_cmd_want_writes))));
	ethernetsoc_sdram_choose_cmd_valids[2] <= (ethernetsoc_sdram_bankmachine2_cmd_valid & (((ethernetsoc_sdram_bankmachine2_cmd_payload_is_cmd & ethernetsoc_sdram_choose_cmd_want_cmds) & ((~((ethernetsoc_sdram_bankmachine2_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine2_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine2_cmd_payload_we))) | ethernetsoc_sdram_choose_cmd_want_activates)) | ((ethernetsoc_sdram_bankmachine2_cmd_payload_is_read == ethernetsoc_sdram_choose_cmd_want_reads) & (ethernetsoc_sdram_bankmachine2_cmd_payload_is_write == ethernetsoc_sdram_choose_cmd_want_writes))));
	ethernetsoc_sdram_choose_cmd_valids[3] <= (ethernetsoc_sdram_bankmachine3_cmd_valid & (((ethernetsoc_sdram_bankmachine3_cmd_payload_is_cmd & ethernetsoc_sdram_choose_cmd_want_cmds) & ((~((ethernetsoc_sdram_bankmachine3_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine3_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine3_cmd_payload_we))) | ethernetsoc_sdram_choose_cmd_want_activates)) | ((ethernetsoc_sdram_bankmachine3_cmd_payload_is_read == ethernetsoc_sdram_choose_cmd_want_reads) & (ethernetsoc_sdram_bankmachine3_cmd_payload_is_write == ethernetsoc_sdram_choose_cmd_want_writes))));
	ethernetsoc_sdram_choose_cmd_valids[4] <= (ethernetsoc_sdram_bankmachine4_cmd_valid & (((ethernetsoc_sdram_bankmachine4_cmd_payload_is_cmd & ethernetsoc_sdram_choose_cmd_want_cmds) & ((~((ethernetsoc_sdram_bankmachine4_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine4_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine4_cmd_payload_we))) | ethernetsoc_sdram_choose_cmd_want_activates)) | ((ethernetsoc_sdram_bankmachine4_cmd_payload_is_read == ethernetsoc_sdram_choose_cmd_want_reads) & (ethernetsoc_sdram_bankmachine4_cmd_payload_is_write == ethernetsoc_sdram_choose_cmd_want_writes))));
	ethernetsoc_sdram_choose_cmd_valids[5] <= (ethernetsoc_sdram_bankmachine5_cmd_valid & (((ethernetsoc_sdram_bankmachine5_cmd_payload_is_cmd & ethernetsoc_sdram_choose_cmd_want_cmds) & ((~((ethernetsoc_sdram_bankmachine5_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine5_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine5_cmd_payload_we))) | ethernetsoc_sdram_choose_cmd_want_activates)) | ((ethernetsoc_sdram_bankmachine5_cmd_payload_is_read == ethernetsoc_sdram_choose_cmd_want_reads) & (ethernetsoc_sdram_bankmachine5_cmd_payload_is_write == ethernetsoc_sdram_choose_cmd_want_writes))));
	ethernetsoc_sdram_choose_cmd_valids[6] <= (ethernetsoc_sdram_bankmachine6_cmd_valid & (((ethernetsoc_sdram_bankmachine6_cmd_payload_is_cmd & ethernetsoc_sdram_choose_cmd_want_cmds) & ((~((ethernetsoc_sdram_bankmachine6_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine6_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine6_cmd_payload_we))) | ethernetsoc_sdram_choose_cmd_want_activates)) | ((ethernetsoc_sdram_bankmachine6_cmd_payload_is_read == ethernetsoc_sdram_choose_cmd_want_reads) & (ethernetsoc_sdram_bankmachine6_cmd_payload_is_write == ethernetsoc_sdram_choose_cmd_want_writes))));
	ethernetsoc_sdram_choose_cmd_valids[7] <= (ethernetsoc_sdram_bankmachine7_cmd_valid & (((ethernetsoc_sdram_bankmachine7_cmd_payload_is_cmd & ethernetsoc_sdram_choose_cmd_want_cmds) & ((~((ethernetsoc_sdram_bankmachine7_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine7_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine7_cmd_payload_we))) | ethernetsoc_sdram_choose_cmd_want_activates)) | ((ethernetsoc_sdram_bankmachine7_cmd_payload_is_read == ethernetsoc_sdram_choose_cmd_want_reads) & (ethernetsoc_sdram_bankmachine7_cmd_payload_is_write == ethernetsoc_sdram_choose_cmd_want_writes))));
end
assign ethernetsoc_sdram_choose_cmd_request = ethernetsoc_sdram_choose_cmd_valids;
assign ethernetsoc_sdram_choose_cmd_cmd_valid = rhs_array_muxed0;
assign ethernetsoc_sdram_choose_cmd_cmd_payload_a = rhs_array_muxed1;
assign ethernetsoc_sdram_choose_cmd_cmd_payload_ba = rhs_array_muxed2;
assign ethernetsoc_sdram_choose_cmd_cmd_payload_is_read = rhs_array_muxed3;
assign ethernetsoc_sdram_choose_cmd_cmd_payload_is_write = rhs_array_muxed4;
assign ethernetsoc_sdram_choose_cmd_cmd_payload_is_cmd = rhs_array_muxed5;
always @(*) begin
	ethernetsoc_sdram_choose_cmd_cmd_payload_cas <= 1'd0;
	if (ethernetsoc_sdram_choose_cmd_cmd_valid) begin
		ethernetsoc_sdram_choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
end
always @(*) begin
	ethernetsoc_sdram_choose_cmd_cmd_payload_ras <= 1'd0;
	if (ethernetsoc_sdram_choose_cmd_cmd_valid) begin
		ethernetsoc_sdram_choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
end
always @(*) begin
	ethernetsoc_sdram_choose_cmd_cmd_payload_we <= 1'd0;
	if (ethernetsoc_sdram_choose_cmd_cmd_valid) begin
		ethernetsoc_sdram_choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
end
assign ethernetsoc_sdram_choose_cmd_ce = (ethernetsoc_sdram_choose_cmd_cmd_ready | (~ethernetsoc_sdram_choose_cmd_cmd_valid));
always @(*) begin
	ethernetsoc_sdram_choose_req_valids <= 8'd0;
	ethernetsoc_sdram_choose_req_valids[0] <= (ethernetsoc_sdram_bankmachine0_cmd_valid & (((ethernetsoc_sdram_bankmachine0_cmd_payload_is_cmd & ethernetsoc_sdram_choose_req_want_cmds) & ((~((ethernetsoc_sdram_bankmachine0_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine0_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine0_cmd_payload_we))) | ethernetsoc_sdram_choose_req_want_activates)) | ((ethernetsoc_sdram_bankmachine0_cmd_payload_is_read == ethernetsoc_sdram_choose_req_want_reads) & (ethernetsoc_sdram_bankmachine0_cmd_payload_is_write == ethernetsoc_sdram_choose_req_want_writes))));
	ethernetsoc_sdram_choose_req_valids[1] <= (ethernetsoc_sdram_bankmachine1_cmd_valid & (((ethernetsoc_sdram_bankmachine1_cmd_payload_is_cmd & ethernetsoc_sdram_choose_req_want_cmds) & ((~((ethernetsoc_sdram_bankmachine1_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine1_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine1_cmd_payload_we))) | ethernetsoc_sdram_choose_req_want_activates)) | ((ethernetsoc_sdram_bankmachine1_cmd_payload_is_read == ethernetsoc_sdram_choose_req_want_reads) & (ethernetsoc_sdram_bankmachine1_cmd_payload_is_write == ethernetsoc_sdram_choose_req_want_writes))));
	ethernetsoc_sdram_choose_req_valids[2] <= (ethernetsoc_sdram_bankmachine2_cmd_valid & (((ethernetsoc_sdram_bankmachine2_cmd_payload_is_cmd & ethernetsoc_sdram_choose_req_want_cmds) & ((~((ethernetsoc_sdram_bankmachine2_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine2_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine2_cmd_payload_we))) | ethernetsoc_sdram_choose_req_want_activates)) | ((ethernetsoc_sdram_bankmachine2_cmd_payload_is_read == ethernetsoc_sdram_choose_req_want_reads) & (ethernetsoc_sdram_bankmachine2_cmd_payload_is_write == ethernetsoc_sdram_choose_req_want_writes))));
	ethernetsoc_sdram_choose_req_valids[3] <= (ethernetsoc_sdram_bankmachine3_cmd_valid & (((ethernetsoc_sdram_bankmachine3_cmd_payload_is_cmd & ethernetsoc_sdram_choose_req_want_cmds) & ((~((ethernetsoc_sdram_bankmachine3_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine3_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine3_cmd_payload_we))) | ethernetsoc_sdram_choose_req_want_activates)) | ((ethernetsoc_sdram_bankmachine3_cmd_payload_is_read == ethernetsoc_sdram_choose_req_want_reads) & (ethernetsoc_sdram_bankmachine3_cmd_payload_is_write == ethernetsoc_sdram_choose_req_want_writes))));
	ethernetsoc_sdram_choose_req_valids[4] <= (ethernetsoc_sdram_bankmachine4_cmd_valid & (((ethernetsoc_sdram_bankmachine4_cmd_payload_is_cmd & ethernetsoc_sdram_choose_req_want_cmds) & ((~((ethernetsoc_sdram_bankmachine4_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine4_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine4_cmd_payload_we))) | ethernetsoc_sdram_choose_req_want_activates)) | ((ethernetsoc_sdram_bankmachine4_cmd_payload_is_read == ethernetsoc_sdram_choose_req_want_reads) & (ethernetsoc_sdram_bankmachine4_cmd_payload_is_write == ethernetsoc_sdram_choose_req_want_writes))));
	ethernetsoc_sdram_choose_req_valids[5] <= (ethernetsoc_sdram_bankmachine5_cmd_valid & (((ethernetsoc_sdram_bankmachine5_cmd_payload_is_cmd & ethernetsoc_sdram_choose_req_want_cmds) & ((~((ethernetsoc_sdram_bankmachine5_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine5_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine5_cmd_payload_we))) | ethernetsoc_sdram_choose_req_want_activates)) | ((ethernetsoc_sdram_bankmachine5_cmd_payload_is_read == ethernetsoc_sdram_choose_req_want_reads) & (ethernetsoc_sdram_bankmachine5_cmd_payload_is_write == ethernetsoc_sdram_choose_req_want_writes))));
	ethernetsoc_sdram_choose_req_valids[6] <= (ethernetsoc_sdram_bankmachine6_cmd_valid & (((ethernetsoc_sdram_bankmachine6_cmd_payload_is_cmd & ethernetsoc_sdram_choose_req_want_cmds) & ((~((ethernetsoc_sdram_bankmachine6_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine6_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine6_cmd_payload_we))) | ethernetsoc_sdram_choose_req_want_activates)) | ((ethernetsoc_sdram_bankmachine6_cmd_payload_is_read == ethernetsoc_sdram_choose_req_want_reads) & (ethernetsoc_sdram_bankmachine6_cmd_payload_is_write == ethernetsoc_sdram_choose_req_want_writes))));
	ethernetsoc_sdram_choose_req_valids[7] <= (ethernetsoc_sdram_bankmachine7_cmd_valid & (((ethernetsoc_sdram_bankmachine7_cmd_payload_is_cmd & ethernetsoc_sdram_choose_req_want_cmds) & ((~((ethernetsoc_sdram_bankmachine7_cmd_payload_ras & (~ethernetsoc_sdram_bankmachine7_cmd_payload_cas)) & (~ethernetsoc_sdram_bankmachine7_cmd_payload_we))) | ethernetsoc_sdram_choose_req_want_activates)) | ((ethernetsoc_sdram_bankmachine7_cmd_payload_is_read == ethernetsoc_sdram_choose_req_want_reads) & (ethernetsoc_sdram_bankmachine7_cmd_payload_is_write == ethernetsoc_sdram_choose_req_want_writes))));
end
assign ethernetsoc_sdram_choose_req_request = ethernetsoc_sdram_choose_req_valids;
assign ethernetsoc_sdram_choose_req_cmd_valid = rhs_array_muxed6;
assign ethernetsoc_sdram_choose_req_cmd_payload_a = rhs_array_muxed7;
assign ethernetsoc_sdram_choose_req_cmd_payload_ba = rhs_array_muxed8;
assign ethernetsoc_sdram_choose_req_cmd_payload_is_read = rhs_array_muxed9;
assign ethernetsoc_sdram_choose_req_cmd_payload_is_write = rhs_array_muxed10;
assign ethernetsoc_sdram_choose_req_cmd_payload_is_cmd = rhs_array_muxed11;
always @(*) begin
	ethernetsoc_sdram_choose_req_cmd_payload_cas <= 1'd0;
	if (ethernetsoc_sdram_choose_req_cmd_valid) begin
		ethernetsoc_sdram_choose_req_cmd_payload_cas <= t_array_muxed3;
	end
end
always @(*) begin
	ethernetsoc_sdram_choose_req_cmd_payload_ras <= 1'd0;
	if (ethernetsoc_sdram_choose_req_cmd_valid) begin
		ethernetsoc_sdram_choose_req_cmd_payload_ras <= t_array_muxed4;
	end
end
always @(*) begin
	ethernetsoc_sdram_choose_req_cmd_payload_we <= 1'd0;
	if (ethernetsoc_sdram_choose_req_cmd_valid) begin
		ethernetsoc_sdram_choose_req_cmd_payload_we <= t_array_muxed5;
	end
end
always @(*) begin
	ethernetsoc_sdram_bankmachine0_cmd_ready <= 1'd0;
	if (((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & (ethernetsoc_sdram_choose_cmd_grant == 1'd0))) begin
		ethernetsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & (ethernetsoc_sdram_choose_req_grant == 1'd0))) begin
		ethernetsoc_sdram_bankmachine0_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	ethernetsoc_sdram_bankmachine1_cmd_ready <= 1'd0;
	if (((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & (ethernetsoc_sdram_choose_cmd_grant == 1'd1))) begin
		ethernetsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & (ethernetsoc_sdram_choose_req_grant == 1'd1))) begin
		ethernetsoc_sdram_bankmachine1_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	ethernetsoc_sdram_bankmachine2_cmd_ready <= 1'd0;
	if (((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & (ethernetsoc_sdram_choose_cmd_grant == 2'd2))) begin
		ethernetsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & (ethernetsoc_sdram_choose_req_grant == 2'd2))) begin
		ethernetsoc_sdram_bankmachine2_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	ethernetsoc_sdram_bankmachine3_cmd_ready <= 1'd0;
	if (((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & (ethernetsoc_sdram_choose_cmd_grant == 2'd3))) begin
		ethernetsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & (ethernetsoc_sdram_choose_req_grant == 2'd3))) begin
		ethernetsoc_sdram_bankmachine3_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	ethernetsoc_sdram_bankmachine4_cmd_ready <= 1'd0;
	if (((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & (ethernetsoc_sdram_choose_cmd_grant == 3'd4))) begin
		ethernetsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & (ethernetsoc_sdram_choose_req_grant == 3'd4))) begin
		ethernetsoc_sdram_bankmachine4_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	ethernetsoc_sdram_bankmachine5_cmd_ready <= 1'd0;
	if (((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & (ethernetsoc_sdram_choose_cmd_grant == 3'd5))) begin
		ethernetsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & (ethernetsoc_sdram_choose_req_grant == 3'd5))) begin
		ethernetsoc_sdram_bankmachine5_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	ethernetsoc_sdram_bankmachine6_cmd_ready <= 1'd0;
	if (((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & (ethernetsoc_sdram_choose_cmd_grant == 3'd6))) begin
		ethernetsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & (ethernetsoc_sdram_choose_req_grant == 3'd6))) begin
		ethernetsoc_sdram_bankmachine6_cmd_ready <= 1'd1;
	end
end
always @(*) begin
	ethernetsoc_sdram_bankmachine7_cmd_ready <= 1'd0;
	if (((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & (ethernetsoc_sdram_choose_cmd_grant == 3'd7))) begin
		ethernetsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & (ethernetsoc_sdram_choose_req_grant == 3'd7))) begin
		ethernetsoc_sdram_bankmachine7_cmd_ready <= 1'd1;
	end
end
assign ethernetsoc_sdram_choose_req_ce = (ethernetsoc_sdram_choose_req_cmd_ready | (~ethernetsoc_sdram_choose_req_cmd_valid));
assign ethernetsoc_sdram_dfi_p0_reset_n = 1'd1;
assign ethernetsoc_sdram_dfi_p0_cke = {1{ethernetsoc_sdram_steerer0}};
assign ethernetsoc_sdram_dfi_p0_odt = {1{ethernetsoc_sdram_steerer1}};
assign ethernetsoc_sdram_dfi_p1_reset_n = 1'd1;
assign ethernetsoc_sdram_dfi_p1_cke = {1{ethernetsoc_sdram_steerer2}};
assign ethernetsoc_sdram_dfi_p1_odt = {1{ethernetsoc_sdram_steerer3}};
always @(*) begin
	ethernetsoc_sdram_trrdcon_ready0 <= 1'd0;
	ethernetsoc_sdram_trrdcon_ready0 <= 1'd1;
	ethernetsoc_sdram_trrdcon_ready0 <= ethernetsoc_sdram_trrdcon_ready1;
end
assign ethernetsoc_sdram_tfawcon_count = (((ethernetsoc_sdram_tfawcon_window[0] + ethernetsoc_sdram_tfawcon_window[1]) + ethernetsoc_sdram_tfawcon_window[2]) + ethernetsoc_sdram_tfawcon_window[3]);
always @(*) begin
	ethernetsoc_sdram_tccdcon_ready0 <= 1'd0;
	ethernetsoc_sdram_tccdcon_ready0 <= 1'd1;
	ethernetsoc_sdram_tccdcon_ready0 <= ethernetsoc_sdram_tccdcon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_twtrcon_ready0 <= 1'd0;
	ethernetsoc_sdram_twtrcon_ready0 <= 1'd1;
	ethernetsoc_sdram_twtrcon_ready0 <= ethernetsoc_sdram_twtrcon_ready1;
end
always @(*) begin
	ethernetsoc_sdram_steerer_sel1 <= 2'd0;
	multiplexer_next_state <= 5'd0;
	ethernetsoc_sdram_choose_cmd_want_activates <= 1'd0;
	ethernetsoc_sdram_en1 <= 1'd0;
	ethernetsoc_sdram_cmd_ready <= 1'd0;
	ethernetsoc_sdram_choose_cmd_cmd_ready <= 1'd0;
	ethernetsoc_sdram_choose_req_want_reads <= 1'd0;
	ethernetsoc_sdram_choose_req_want_writes <= 1'd0;
	ethernetsoc_sdram_choose_req_cmd_ready <= 1'd0;
	ethernetsoc_sdram_en0 <= 1'd0;
	ethernetsoc_sdram_steerer_sel0 <= 2'd0;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			ethernetsoc_sdram_en1 <= 1'd1;
			ethernetsoc_sdram_choose_req_want_writes <= 1'd1;
			if (1'd0) begin
				ethernetsoc_sdram_choose_req_cmd_ready <= (ethernetsoc_sdram_cas_allowed & ((~((ethernetsoc_sdram_choose_req_cmd_payload_ras & (~ethernetsoc_sdram_choose_req_cmd_payload_cas)) & (~ethernetsoc_sdram_choose_req_cmd_payload_we))) | ethernetsoc_sdram_ras_allowed));
			end else begin
				ethernetsoc_sdram_choose_cmd_want_activates <= ethernetsoc_sdram_ras_allowed;
				ethernetsoc_sdram_choose_cmd_cmd_ready <= ((~((ethernetsoc_sdram_choose_cmd_cmd_payload_ras & (~ethernetsoc_sdram_choose_cmd_cmd_payload_cas)) & (~ethernetsoc_sdram_choose_cmd_cmd_payload_we))) | ethernetsoc_sdram_ras_allowed);
				ethernetsoc_sdram_choose_req_cmd_ready <= ethernetsoc_sdram_cas_allowed;
			end
			ethernetsoc_sdram_steerer_sel0 <= 1'd1;
			ethernetsoc_sdram_steerer_sel1 <= 2'd2;
			if (ethernetsoc_sdram_read_available) begin
				if (((~ethernetsoc_sdram_write_available) | ethernetsoc_sdram_max_time1)) begin
					multiplexer_next_state <= 2'd3;
				end
			end
			if (ethernetsoc_sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			ethernetsoc_sdram_steerer_sel0 <= 2'd3;
			ethernetsoc_sdram_cmd_ready <= 1'd1;
			if (ethernetsoc_sdram_cmd_last) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			if (ethernetsoc_sdram_twtrcon_ready0) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		3'd4: begin
			multiplexer_next_state <= 3'd5;
		end
		3'd5: begin
			multiplexer_next_state <= 3'd6;
		end
		3'd6: begin
			multiplexer_next_state <= 3'd7;
		end
		3'd7: begin
			multiplexer_next_state <= 4'd8;
		end
		4'd8: begin
			multiplexer_next_state <= 4'd9;
		end
		4'd9: begin
			multiplexer_next_state <= 4'd10;
		end
		4'd10: begin
			multiplexer_next_state <= 4'd11;
		end
		4'd11: begin
			multiplexer_next_state <= 4'd12;
		end
		4'd12: begin
			multiplexer_next_state <= 4'd13;
		end
		4'd13: begin
			multiplexer_next_state <= 4'd14;
		end
		4'd14: begin
			multiplexer_next_state <= 4'd15;
		end
		4'd15: begin
			multiplexer_next_state <= 5'd16;
		end
		5'd16: begin
			multiplexer_next_state <= 1'd1;
		end
		default: begin
			ethernetsoc_sdram_en0 <= 1'd1;
			ethernetsoc_sdram_choose_req_want_reads <= 1'd1;
			if (1'd0) begin
				ethernetsoc_sdram_choose_req_cmd_ready <= (ethernetsoc_sdram_cas_allowed & ((~((ethernetsoc_sdram_choose_req_cmd_payload_ras & (~ethernetsoc_sdram_choose_req_cmd_payload_cas)) & (~ethernetsoc_sdram_choose_req_cmd_payload_we))) | ethernetsoc_sdram_ras_allowed));
			end else begin
				ethernetsoc_sdram_choose_cmd_want_activates <= ethernetsoc_sdram_ras_allowed;
				ethernetsoc_sdram_choose_cmd_cmd_ready <= ((~((ethernetsoc_sdram_choose_cmd_cmd_payload_ras & (~ethernetsoc_sdram_choose_cmd_cmd_payload_cas)) & (~ethernetsoc_sdram_choose_cmd_cmd_payload_we))) | ethernetsoc_sdram_ras_allowed);
				ethernetsoc_sdram_choose_req_cmd_ready <= ethernetsoc_sdram_cas_allowed;
			end
			ethernetsoc_sdram_steerer_sel0 <= 2'd2;
			ethernetsoc_sdram_steerer_sel1 <= 1'd1;
			if (ethernetsoc_sdram_write_available) begin
				if (((~ethernetsoc_sdram_read_available) | ethernetsoc_sdram_max_time0)) begin
					multiplexer_next_state <= 3'd4;
				end
			end
			if (ethernetsoc_sdram_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
	endcase
end
assign roundrobin0_request = {(((ethernetsoc_port_cmd_payload_addr[9:7] == 1'd0) & (~(((((((locked0 | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid)};
assign roundrobin0_ce = ((~ethernetsoc_sdram_interface_bank0_valid) & (~ethernetsoc_sdram_interface_bank0_lock));
assign ethernetsoc_sdram_interface_bank0_addr = rhs_array_muxed12;
assign ethernetsoc_sdram_interface_bank0_we = rhs_array_muxed13;
assign ethernetsoc_sdram_interface_bank0_valid = rhs_array_muxed14;
assign roundrobin1_request = {(((ethernetsoc_port_cmd_payload_addr[9:7] == 1'd1) & (~(((((((locked1 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid)};
assign roundrobin1_ce = ((~ethernetsoc_sdram_interface_bank1_valid) & (~ethernetsoc_sdram_interface_bank1_lock));
assign ethernetsoc_sdram_interface_bank1_addr = rhs_array_muxed15;
assign ethernetsoc_sdram_interface_bank1_we = rhs_array_muxed16;
assign ethernetsoc_sdram_interface_bank1_valid = rhs_array_muxed17;
assign roundrobin2_request = {(((ethernetsoc_port_cmd_payload_addr[9:7] == 2'd2) & (~(((((((locked2 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid)};
assign roundrobin2_ce = ((~ethernetsoc_sdram_interface_bank2_valid) & (~ethernetsoc_sdram_interface_bank2_lock));
assign ethernetsoc_sdram_interface_bank2_addr = rhs_array_muxed18;
assign ethernetsoc_sdram_interface_bank2_we = rhs_array_muxed19;
assign ethernetsoc_sdram_interface_bank2_valid = rhs_array_muxed20;
assign roundrobin3_request = {(((ethernetsoc_port_cmd_payload_addr[9:7] == 2'd3) & (~(((((((locked3 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid)};
assign roundrobin3_ce = ((~ethernetsoc_sdram_interface_bank3_valid) & (~ethernetsoc_sdram_interface_bank3_lock));
assign ethernetsoc_sdram_interface_bank3_addr = rhs_array_muxed21;
assign ethernetsoc_sdram_interface_bank3_we = rhs_array_muxed22;
assign ethernetsoc_sdram_interface_bank3_valid = rhs_array_muxed23;
assign roundrobin4_request = {(((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd4) & (~(((((((locked4 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid)};
assign roundrobin4_ce = ((~ethernetsoc_sdram_interface_bank4_valid) & (~ethernetsoc_sdram_interface_bank4_lock));
assign ethernetsoc_sdram_interface_bank4_addr = rhs_array_muxed24;
assign ethernetsoc_sdram_interface_bank4_we = rhs_array_muxed25;
assign ethernetsoc_sdram_interface_bank4_valid = rhs_array_muxed26;
assign roundrobin5_request = {(((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd5) & (~(((((((locked5 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid)};
assign roundrobin5_ce = ((~ethernetsoc_sdram_interface_bank5_valid) & (~ethernetsoc_sdram_interface_bank5_lock));
assign ethernetsoc_sdram_interface_bank5_addr = rhs_array_muxed27;
assign ethernetsoc_sdram_interface_bank5_we = rhs_array_muxed28;
assign ethernetsoc_sdram_interface_bank5_valid = rhs_array_muxed29;
assign roundrobin6_request = {(((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd6) & (~(((((((locked6 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid)};
assign roundrobin6_ce = ((~ethernetsoc_sdram_interface_bank6_valid) & (~ethernetsoc_sdram_interface_bank6_lock));
assign ethernetsoc_sdram_interface_bank6_addr = rhs_array_muxed30;
assign ethernetsoc_sdram_interface_bank6_we = rhs_array_muxed31;
assign ethernetsoc_sdram_interface_bank6_valid = rhs_array_muxed32;
assign roundrobin7_request = {(((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd7) & (~(((((((locked7 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & ethernetsoc_port_cmd_valid)};
assign roundrobin7_ce = ((~ethernetsoc_sdram_interface_bank7_valid) & (~ethernetsoc_sdram_interface_bank7_lock));
assign ethernetsoc_sdram_interface_bank7_addr = rhs_array_muxed33;
assign ethernetsoc_sdram_interface_bank7_we = rhs_array_muxed34;
assign ethernetsoc_sdram_interface_bank7_valid = rhs_array_muxed35;
assign ethernetsoc_port_cmd_ready = ((((((((1'd0 | (((roundrobin0_grant == 1'd0) & ((ethernetsoc_port_cmd_payload_addr[9:7] == 1'd0) & (~(((((((locked0 | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & ethernetsoc_sdram_interface_bank0_ready)) | (((roundrobin1_grant == 1'd0) & ((ethernetsoc_port_cmd_payload_addr[9:7] == 1'd1) & (~(((((((locked1 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & ethernetsoc_sdram_interface_bank1_ready)) | (((roundrobin2_grant == 1'd0) & ((ethernetsoc_port_cmd_payload_addr[9:7] == 2'd2) & (~(((((((locked2 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & ethernetsoc_sdram_interface_bank2_ready)) | (((roundrobin3_grant == 1'd0) & ((ethernetsoc_port_cmd_payload_addr[9:7] == 2'd3) & (~(((((((locked3 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & ethernetsoc_sdram_interface_bank3_ready)) | (((roundrobin4_grant == 1'd0) & ((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd4) & (~(((((((locked4 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & ethernetsoc_sdram_interface_bank4_ready)) | (((roundrobin5_grant == 1'd0) & ((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd5) & (~(((((((locked5 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & ethernetsoc_sdram_interface_bank5_ready)) | (((roundrobin6_grant == 1'd0) & ((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd6) & (~(((((((locked6 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & ethernetsoc_sdram_interface_bank6_ready)) | (((roundrobin7_grant == 1'd0) & ((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd7) & (~(((((((locked7 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0)))))) & ethernetsoc_sdram_interface_bank7_ready));
assign ethernetsoc_port_wdata_ready = new_master_wdata_ready3;
assign ethernetsoc_port_rdata_valid = new_master_rdata_valid14;
always @(*) begin
	ethernetsoc_sdram_interface_wdata <= 128'd0;
	ethernetsoc_sdram_interface_wdata_we <= 16'd0;
	case ({new_master_wdata_ready3})
		1'd1: begin
			ethernetsoc_sdram_interface_wdata <= ethernetsoc_port_wdata_payload_data;
			ethernetsoc_sdram_interface_wdata_we <= ethernetsoc_port_wdata_payload_we;
		end
		default: begin
			ethernetsoc_sdram_interface_wdata <= 1'd0;
			ethernetsoc_sdram_interface_wdata_we <= 1'd0;
		end
	endcase
end
assign ethernetsoc_port_rdata_payload_data = ethernetsoc_sdram_interface_rdata;
assign roundrobin0_grant = 1'd0;
assign roundrobin1_grant = 1'd0;
assign roundrobin2_grant = 1'd0;
assign roundrobin3_grant = 1'd0;
assign roundrobin4_grant = 1'd0;
assign roundrobin5_grant = 1'd0;
assign roundrobin6_grant = 1'd0;
assign roundrobin7_grant = 1'd0;
assign ethernetsoc_data_port_adr = ethernetsoc_interface0_wb_sdram_adr[10:2];
always @(*) begin
	ethernetsoc_data_port_dat_w <= 128'd0;
	ethernetsoc_data_port_we <= 16'd0;
	if (ethernetsoc_write_from_slave) begin
		ethernetsoc_data_port_dat_w <= ethernetsoc_dat_r;
		ethernetsoc_data_port_we <= {16{1'd1}};
	end else begin
		ethernetsoc_data_port_dat_w <= {4{ethernetsoc_interface0_wb_sdram_dat_w}};
		if ((((ethernetsoc_interface0_wb_sdram_cyc & ethernetsoc_interface0_wb_sdram_stb) & ethernetsoc_interface0_wb_sdram_we) & ethernetsoc_interface0_wb_sdram_ack)) begin
			ethernetsoc_data_port_we <= {({4{(ethernetsoc_interface0_wb_sdram_adr[1:0] == 1'd0)}} & ethernetsoc_interface0_wb_sdram_sel), ({4{(ethernetsoc_interface0_wb_sdram_adr[1:0] == 1'd1)}} & ethernetsoc_interface0_wb_sdram_sel), ({4{(ethernetsoc_interface0_wb_sdram_adr[1:0] == 2'd2)}} & ethernetsoc_interface0_wb_sdram_sel), ({4{(ethernetsoc_interface0_wb_sdram_adr[1:0] == 2'd3)}} & ethernetsoc_interface0_wb_sdram_sel)};
		end
	end
end
assign ethernetsoc_dat_w = ethernetsoc_data_port_dat_r;
assign ethernetsoc_sel = 16'd65535;
always @(*) begin
	ethernetsoc_interface0_wb_sdram_dat_r <= 32'd0;
	case (ethernetsoc_adr_offset_r)
		1'd0: begin
			ethernetsoc_interface0_wb_sdram_dat_r <= ethernetsoc_data_port_dat_r[127:96];
		end
		1'd1: begin
			ethernetsoc_interface0_wb_sdram_dat_r <= ethernetsoc_data_port_dat_r[95:64];
		end
		2'd2: begin
			ethernetsoc_interface0_wb_sdram_dat_r <= ethernetsoc_data_port_dat_r[63:32];
		end
		default: begin
			ethernetsoc_interface0_wb_sdram_dat_r <= ethernetsoc_data_port_dat_r[31:0];
		end
	endcase
end
assign {ethernetsoc_tag_do_dirty, ethernetsoc_tag_do_tag} = ethernetsoc_tag_port_dat_r;
assign ethernetsoc_tag_port_dat_w = {ethernetsoc_tag_di_dirty, ethernetsoc_tag_di_tag};
assign ethernetsoc_tag_port_adr = ethernetsoc_interface0_wb_sdram_adr[10:2];
assign ethernetsoc_tag_di_tag = ethernetsoc_interface0_wb_sdram_adr[29:11];
assign ethernetsoc_adr = {ethernetsoc_tag_do_tag, ethernetsoc_interface0_wb_sdram_adr[10:2]};
always @(*) begin
	cache_next_state <= 3'd0;
	ethernetsoc_tag_di_dirty <= 1'd0;
	ethernetsoc_word_clr <= 1'd0;
	ethernetsoc_interface0_wb_sdram_ack <= 1'd0;
	ethernetsoc_word_inc <= 1'd0;
	ethernetsoc_write_from_slave <= 1'd0;
	ethernetsoc_cyc <= 1'd0;
	ethernetsoc_stb <= 1'd0;
	ethernetsoc_tag_port_we <= 1'd0;
	ethernetsoc_we <= 1'd0;
	cache_next_state <= cache_state;
	case (cache_state)
		1'd1: begin
			ethernetsoc_word_clr <= 1'd1;
			if ((ethernetsoc_tag_do_tag == ethernetsoc_interface0_wb_sdram_adr[29:11])) begin
				ethernetsoc_interface0_wb_sdram_ack <= 1'd1;
				if (ethernetsoc_interface0_wb_sdram_we) begin
					ethernetsoc_tag_di_dirty <= 1'd1;
					ethernetsoc_tag_port_we <= 1'd1;
				end
				cache_next_state <= 1'd0;
			end else begin
				if (ethernetsoc_tag_do_dirty) begin
					cache_next_state <= 2'd2;
				end else begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			ethernetsoc_stb <= 1'd1;
			ethernetsoc_cyc <= 1'd1;
			ethernetsoc_we <= 1'd1;
			if (ethernetsoc_ack) begin
				ethernetsoc_word_inc <= 1'd1;
				if (1'd1) begin
					cache_next_state <= 2'd3;
				end
			end
		end
		2'd3: begin
			ethernetsoc_tag_port_we <= 1'd1;
			ethernetsoc_word_clr <= 1'd1;
			cache_next_state <= 3'd4;
		end
		3'd4: begin
			ethernetsoc_stb <= 1'd1;
			ethernetsoc_cyc <= 1'd1;
			ethernetsoc_we <= 1'd0;
			if (ethernetsoc_ack) begin
				ethernetsoc_write_from_slave <= 1'd1;
				ethernetsoc_word_inc <= 1'd1;
				if (1'd1) begin
					cache_next_state <= 1'd1;
				end else begin
					cache_next_state <= 3'd4;
				end
			end
		end
		default: begin
			if ((ethernetsoc_interface0_wb_sdram_cyc & ethernetsoc_interface0_wb_sdram_stb)) begin
				cache_next_state <= 1'd1;
			end
		end
	endcase
end
always @(*) begin
	ethernetsoc_port_cmd_valid <= 1'd0;
	ethernetsoc_port_cmd_payload_we <= 1'd0;
	ethernetsoc_dat_r <= 128'd0;
	ethernetsoc_port_cmd_payload_addr <= 23'd0;
	ethernetsoc_port_wdata_valid <= 1'd0;
	ethernetsoc_ack <= 1'd0;
	litedramwishbone2native_next_state <= 2'd0;
	ethernetsoc_port_wdata_payload_data <= 128'd0;
	ethernetsoc_port_wdata_payload_we <= 16'd0;
	ethernetsoc_port_rdata_ready <= 1'd0;
	litedramwishbone2native_next_state <= litedramwishbone2native_state;
	case (litedramwishbone2native_state)
		1'd1: begin
			ethernetsoc_port_cmd_valid <= 1'd1;
			ethernetsoc_port_cmd_payload_addr <= ethernetsoc_adr;
			ethernetsoc_port_cmd_payload_we <= ethernetsoc_we;
			if (ethernetsoc_port_cmd_ready) begin
				if (ethernetsoc_we) begin
					litedramwishbone2native_next_state <= 2'd2;
				end else begin
					litedramwishbone2native_next_state <= 2'd3;
				end
			end
		end
		2'd2: begin
			ethernetsoc_port_wdata_valid <= 1'd1;
			ethernetsoc_port_wdata_payload_we <= ethernetsoc_sel;
			ethernetsoc_port_wdata_payload_data <= ethernetsoc_dat_w;
			if (ethernetsoc_port_wdata_ready) begin
				ethernetsoc_ack <= 1'd1;
				litedramwishbone2native_next_state <= 1'd0;
			end
		end
		2'd3: begin
			ethernetsoc_port_rdata_ready <= 1'd1;
			if (ethernetsoc_port_rdata_valid) begin
				ethernetsoc_dat_r <= ethernetsoc_port_rdata_payload_data;
				ethernetsoc_ack <= 1'd1;
				litedramwishbone2native_next_state <= 1'd0;
			end
		end
		default: begin
			if ((ethernetsoc_cyc & ethernetsoc_stb)) begin
				litedramwishbone2native_next_state <= 1'd1;
			end
		end
	endcase
end
assign eth_tx_clk = eth_rx_clk;
assign eth_rx_clk = eth_clocks0_rx;
assign ethphy_reset0 = (ethphy_reset_storage | ethphy_reset1);
assign eth0_rst_n = (~ethphy_reset0);
assign ethphy_counter_done = (ethphy_counter == 9'd256);
assign ethphy_counter_ce = (~ethphy_counter_done);
assign ethphy_reset1 = (~ethphy_counter_done);
assign ethphy_sink_ready = 1'd1;
assign ethphy_last = ((~ethphy_rx_ctl_reg) & ethphy_rx_ctl_reg_d);
assign ethphy_source_last = ethphy_last;
assign eth0_mdc = ethphy_storage[0];
assign ethphy_data_oe = ethphy_storage[1];
assign ethphy_data_w = ethphy_storage[2];
assign ethmac_tx_cdc_sink_valid = ethmac_source_valid;
assign ethmac_source_ready = ethmac_tx_cdc_sink_ready;
assign ethmac_tx_cdc_sink_first = ethmac_source_first;
assign ethmac_tx_cdc_sink_last = ethmac_source_last;
assign ethmac_tx_cdc_sink_payload_data = ethmac_source_payload_data;
assign ethmac_tx_cdc_sink_payload_last_be = ethmac_source_payload_last_be;
assign ethmac_tx_cdc_sink_payload_error = ethmac_source_payload_error;
assign ethmac_sink_valid = ethmac_rx_cdc_source_valid;
assign ethmac_rx_cdc_source_ready = ethmac_sink_ready;
assign ethmac_sink_first = ethmac_rx_cdc_source_first;
assign ethmac_sink_last = ethmac_rx_cdc_source_last;
assign ethmac_sink_payload_data = ethmac_rx_cdc_source_payload_data;
assign ethmac_sink_payload_last_be = ethmac_rx_cdc_source_payload_last_be;
assign ethmac_sink_payload_error = ethmac_rx_cdc_source_payload_error;
assign ethmac_ps_preamble_error_i = ethmac_preamble_checker_error;
assign ethmac_ps_crc_error_i = ethmac_crc32_checker_error;
always @(*) begin
	ethmac_tx_gap_inserter_source_payload_error <= 1'd0;
	ethmac_tx_gap_inserter_counter_reset <= 1'd0;
	ethmac_tx_gap_inserter_counter_ce <= 1'd0;
	liteethmacgap_next_state <= 1'd0;
	ethmac_tx_gap_inserter_sink_ready <= 1'd0;
	ethmac_tx_gap_inserter_source_valid <= 1'd0;
	ethmac_tx_gap_inserter_source_first <= 1'd0;
	ethmac_tx_gap_inserter_source_last <= 1'd0;
	ethmac_tx_gap_inserter_source_payload_data <= 8'd0;
	ethmac_tx_gap_inserter_source_payload_last_be <= 1'd0;
	liteethmacgap_next_state <= liteethmacgap_state;
	case (liteethmacgap_state)
		1'd1: begin
			ethmac_tx_gap_inserter_counter_ce <= 1'd1;
			if ((ethmac_tx_gap_inserter_counter == 4'd11)) begin
				liteethmacgap_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_tx_gap_inserter_counter_reset <= 1'd1;
			ethmac_tx_gap_inserter_source_valid <= ethmac_tx_gap_inserter_sink_valid;
			ethmac_tx_gap_inserter_sink_ready <= ethmac_tx_gap_inserter_source_ready;
			ethmac_tx_gap_inserter_source_first <= ethmac_tx_gap_inserter_sink_first;
			ethmac_tx_gap_inserter_source_last <= ethmac_tx_gap_inserter_sink_last;
			ethmac_tx_gap_inserter_source_payload_data <= ethmac_tx_gap_inserter_sink_payload_data;
			ethmac_tx_gap_inserter_source_payload_last_be <= ethmac_tx_gap_inserter_sink_payload_last_be;
			ethmac_tx_gap_inserter_source_payload_error <= ethmac_tx_gap_inserter_sink_payload_error;
			if (((ethmac_tx_gap_inserter_sink_valid & ethmac_tx_gap_inserter_sink_last) & ethmac_tx_gap_inserter_sink_ready)) begin
				liteethmacgap_next_state <= 1'd1;
			end
		end
	endcase
end
assign ethmac_preamble_inserter_source_payload_last_be = ethmac_preamble_inserter_sink_payload_last_be;
always @(*) begin
	ethmac_preamble_inserter_source_valid <= 1'd0;
	ethmac_preamble_inserter_inc_cnt <= 1'd0;
	ethmac_preamble_inserter_source_first <= 1'd0;
	ethmac_preamble_inserter_source_last <= 1'd0;
	ethmac_preamble_inserter_source_payload_data <= 8'd0;
	ethmac_preamble_inserter_source_payload_error <= 1'd0;
	liteethmacpreambleinserter_next_state <= 2'd0;
	ethmac_preamble_inserter_clr_cnt <= 1'd0;
	ethmac_preamble_inserter_sink_ready <= 1'd0;
	ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_sink_payload_data;
	liteethmacpreambleinserter_next_state <= liteethmacpreambleinserter_state;
	case (liteethmacpreambleinserter_state)
		1'd1: begin
			ethmac_preamble_inserter_source_valid <= 1'd1;
			case (ethmac_preamble_inserter_cnt)
				1'd0: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[7:0];
				end
				1'd1: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[15:8];
				end
				2'd2: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[23:16];
				end
				2'd3: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[31:24];
				end
				3'd4: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[39:32];
				end
				3'd5: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[47:40];
				end
				3'd6: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[55:48];
				end
				default: begin
					ethmac_preamble_inserter_source_payload_data <= ethmac_preamble_inserter_preamble[63:56];
				end
			endcase
			if ((ethmac_preamble_inserter_cnt == 3'd7)) begin
				if (ethmac_preamble_inserter_source_ready) begin
					liteethmacpreambleinserter_next_state <= 2'd2;
				end
			end else begin
				ethmac_preamble_inserter_inc_cnt <= ethmac_preamble_inserter_source_ready;
			end
		end
		2'd2: begin
			ethmac_preamble_inserter_source_valid <= ethmac_preamble_inserter_sink_valid;
			ethmac_preamble_inserter_sink_ready <= ethmac_preamble_inserter_source_ready;
			ethmac_preamble_inserter_source_first <= ethmac_preamble_inserter_sink_first;
			ethmac_preamble_inserter_source_last <= ethmac_preamble_inserter_sink_last;
			ethmac_preamble_inserter_source_payload_error <= ethmac_preamble_inserter_sink_payload_error;
			if (((ethmac_preamble_inserter_sink_valid & ethmac_preamble_inserter_sink_last) & ethmac_preamble_inserter_source_ready)) begin
				liteethmacpreambleinserter_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_preamble_inserter_sink_ready <= 1'd1;
			ethmac_preamble_inserter_clr_cnt <= 1'd1;
			if (ethmac_preamble_inserter_sink_valid) begin
				ethmac_preamble_inserter_sink_ready <= 1'd0;
				liteethmacpreambleinserter_next_state <= 1'd1;
			end
		end
	endcase
end
assign ethmac_preamble_checker_source_payload_data = ethmac_preamble_checker_sink_payload_data;
assign ethmac_preamble_checker_source_payload_last_be = ethmac_preamble_checker_sink_payload_last_be;
always @(*) begin
	ethmac_preamble_checker_source_last <= 1'd0;
	ethmac_preamble_checker_source_payload_error <= 1'd0;
	ethmac_preamble_checker_sink_ready <= 1'd0;
	ethmac_preamble_checker_error <= 1'd0;
	ethmac_preamble_checker_source_valid <= 1'd0;
	ethmac_preamble_checker_source_first <= 1'd0;
	liteethmacpreamblechecker_next_state <= 1'd0;
	liteethmacpreamblechecker_next_state <= liteethmacpreamblechecker_state;
	case (liteethmacpreamblechecker_state)
		1'd1: begin
			ethmac_preamble_checker_source_valid <= ethmac_preamble_checker_sink_valid;
			ethmac_preamble_checker_sink_ready <= ethmac_preamble_checker_source_ready;
			ethmac_preamble_checker_source_first <= ethmac_preamble_checker_sink_first;
			ethmac_preamble_checker_source_last <= ethmac_preamble_checker_sink_last;
			ethmac_preamble_checker_source_payload_error <= ethmac_preamble_checker_sink_payload_error;
			if (((ethmac_preamble_checker_source_valid & ethmac_preamble_checker_source_last) & ethmac_preamble_checker_source_ready)) begin
				liteethmacpreamblechecker_next_state <= 1'd0;
			end
		end
		default: begin
			ethmac_preamble_checker_sink_ready <= 1'd1;
			if (((ethmac_preamble_checker_sink_valid & (~ethmac_preamble_checker_sink_last)) & (ethmac_preamble_checker_sink_payload_data == 8'd213))) begin
				liteethmacpreamblechecker_next_state <= 1'd1;
			end
			if ((ethmac_preamble_checker_sink_valid & ethmac_preamble_checker_sink_last)) begin
				ethmac_preamble_checker_error <= 1'd1;
			end
		end
	endcase
end
assign ethmac_crc32_inserter_cnt_done = (ethmac_crc32_inserter_cnt == 1'd0);
assign ethmac_crc32_inserter_data1 = ethmac_crc32_inserter_data0;
assign ethmac_crc32_inserter_last = ethmac_crc32_inserter_reg;
assign ethmac_crc32_inserter_value = (~{ethmac_crc32_inserter_reg[0], ethmac_crc32_inserter_reg[1], ethmac_crc32_inserter_reg[2], ethmac_crc32_inserter_reg[3], ethmac_crc32_inserter_reg[4], ethmac_crc32_inserter_reg[5], ethmac_crc32_inserter_reg[6], ethmac_crc32_inserter_reg[7], ethmac_crc32_inserter_reg[8], ethmac_crc32_inserter_reg[9], ethmac_crc32_inserter_reg[10], ethmac_crc32_inserter_reg[11], ethmac_crc32_inserter_reg[12], ethmac_crc32_inserter_reg[13], ethmac_crc32_inserter_reg[14], ethmac_crc32_inserter_reg[15], ethmac_crc32_inserter_reg[16], ethmac_crc32_inserter_reg[17], ethmac_crc32_inserter_reg[18], ethmac_crc32_inserter_reg[19], ethmac_crc32_inserter_reg[20], ethmac_crc32_inserter_reg[21], ethmac_crc32_inserter_reg[22], ethmac_crc32_inserter_reg[23], ethmac_crc32_inserter_reg[24], ethmac_crc32_inserter_reg[25], ethmac_crc32_inserter_reg[26], ethmac_crc32_inserter_reg[27], ethmac_crc32_inserter_reg[28], ethmac_crc32_inserter_reg[29], ethmac_crc32_inserter_reg[30], ethmac_crc32_inserter_reg[31]});
assign ethmac_crc32_inserter_error = (ethmac_crc32_inserter_next != 32'd3338984827);
always @(*) begin
	ethmac_crc32_inserter_next <= 32'd0;
	ethmac_crc32_inserter_next[0] <= (((ethmac_crc32_inserter_last[24] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[1] <= (((((((ethmac_crc32_inserter_last[25] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[2] <= (((((((((ethmac_crc32_inserter_last[26] ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[3] <= (((((((ethmac_crc32_inserter_last[27] ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[4] <= (((((((((ethmac_crc32_inserter_last[28] ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[5] <= (((((((((((((ethmac_crc32_inserter_last[29] ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[6] <= (((((((((((ethmac_crc32_inserter_last[30] ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[7] <= (((((((((ethmac_crc32_inserter_last[31] ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[8] <= ((((((((ethmac_crc32_inserter_last[0] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[9] <= ((((((((ethmac_crc32_inserter_last[1] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[10] <= ((((((((ethmac_crc32_inserter_last[2] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[11] <= ((((((((ethmac_crc32_inserter_last[3] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[12] <= ((((((((((((ethmac_crc32_inserter_last[4] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[13] <= ((((((((((((ethmac_crc32_inserter_last[5] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[14] <= ((((((((((ethmac_crc32_inserter_last[6] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[15] <= ((((((((ethmac_crc32_inserter_last[7] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]);
	ethmac_crc32_inserter_next[16] <= ((((((ethmac_crc32_inserter_last[8] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[17] <= ((((((ethmac_crc32_inserter_last[9] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[18] <= ((((((ethmac_crc32_inserter_last[10] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[19] <= ((((ethmac_crc32_inserter_last[11] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]);
	ethmac_crc32_inserter_next[20] <= ((ethmac_crc32_inserter_last[12] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]);
	ethmac_crc32_inserter_next[21] <= ((ethmac_crc32_inserter_last[13] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]);
	ethmac_crc32_inserter_next[22] <= ((ethmac_crc32_inserter_last[14] ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[23] <= ((((((ethmac_crc32_inserter_last[15] ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_data1[6]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[24] <= ((((((ethmac_crc32_inserter_last[16] ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[25] <= ((((ethmac_crc32_inserter_last[17] ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[26] <= ((((((((ethmac_crc32_inserter_last[18] ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]) ^ ethmac_crc32_inserter_last[24]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_data1[7]);
	ethmac_crc32_inserter_next[27] <= ((((((((ethmac_crc32_inserter_last[19] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]) ^ ethmac_crc32_inserter_last[25]) ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_data1[6]);
	ethmac_crc32_inserter_next[28] <= ((((((ethmac_crc32_inserter_last[20] ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]) ^ ethmac_crc32_inserter_last[26]) ^ ethmac_crc32_inserter_data1[5]);
	ethmac_crc32_inserter_next[29] <= ((((((ethmac_crc32_inserter_last[21] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[30]) ^ ethmac_crc32_inserter_data1[1]) ^ ethmac_crc32_inserter_last[27]) ^ ethmac_crc32_inserter_data1[4]);
	ethmac_crc32_inserter_next[30] <= ((((ethmac_crc32_inserter_last[22] ^ ethmac_crc32_inserter_last[31]) ^ ethmac_crc32_inserter_data1[0]) ^ ethmac_crc32_inserter_last[28]) ^ ethmac_crc32_inserter_data1[3]);
	ethmac_crc32_inserter_next[31] <= ((ethmac_crc32_inserter_last[23] ^ ethmac_crc32_inserter_last[29]) ^ ethmac_crc32_inserter_data1[2]);
end
always @(*) begin
	liteethmaccrc32inserter_next_state <= 2'd0;
	ethmac_crc32_inserter_is_ongoing0 <= 1'd0;
	ethmac_crc32_inserter_sink_ready <= 1'd0;
	ethmac_crc32_inserter_is_ongoing1 <= 1'd0;
	ethmac_crc32_inserter_ce <= 1'd0;
	ethmac_crc32_inserter_reset <= 1'd0;
	ethmac_crc32_inserter_source_valid <= 1'd0;
	ethmac_crc32_inserter_source_first <= 1'd0;
	ethmac_crc32_inserter_source_last <= 1'd0;
	ethmac_crc32_inserter_source_payload_data <= 8'd0;
	ethmac_crc32_inserter_source_payload_last_be <= 1'd0;
	ethmac_crc32_inserter_source_payload_error <= 1'd0;
	ethmac_crc32_inserter_data0 <= 8'd0;
	liteethmaccrc32inserter_next_state <= liteethmaccrc32inserter_state;
	case (liteethmaccrc32inserter_state)
		1'd1: begin
			ethmac_crc32_inserter_ce <= (ethmac_crc32_inserter_sink_valid & ethmac_crc32_inserter_source_ready);
			ethmac_crc32_inserter_data0 <= ethmac_crc32_inserter_sink_payload_data;
			ethmac_crc32_inserter_source_valid <= ethmac_crc32_inserter_sink_valid;
			ethmac_crc32_inserter_sink_ready <= ethmac_crc32_inserter_source_ready;
			ethmac_crc32_inserter_source_first <= ethmac_crc32_inserter_sink_first;
			ethmac_crc32_inserter_source_last <= ethmac_crc32_inserter_sink_last;
			ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_sink_payload_data;
			ethmac_crc32_inserter_source_payload_last_be <= ethmac_crc32_inserter_sink_payload_last_be;
			ethmac_crc32_inserter_source_payload_error <= ethmac_crc32_inserter_sink_payload_error;
			ethmac_crc32_inserter_source_last <= 1'd0;
			if (((ethmac_crc32_inserter_sink_valid & ethmac_crc32_inserter_sink_last) & ethmac_crc32_inserter_source_ready)) begin
				liteethmaccrc32inserter_next_state <= 2'd2;
			end
		end
		2'd2: begin
			ethmac_crc32_inserter_source_valid <= 1'd1;
			case (ethmac_crc32_inserter_cnt)
				1'd0: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[31:24];
				end
				1'd1: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[23:16];
				end
				2'd2: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[15:8];
				end
				default: begin
					ethmac_crc32_inserter_source_payload_data <= ethmac_crc32_inserter_value[7:0];
				end
			endcase
			if (ethmac_crc32_inserter_cnt_done) begin
				ethmac_crc32_inserter_source_last <= 1'd1;
				if (ethmac_crc32_inserter_source_ready) begin
					liteethmaccrc32inserter_next_state <= 1'd0;
				end
			end
			ethmac_crc32_inserter_is_ongoing1 <= 1'd1;
		end
		default: begin
			ethmac_crc32_inserter_reset <= 1'd1;
			ethmac_crc32_inserter_sink_ready <= 1'd1;
			if (ethmac_crc32_inserter_sink_valid) begin
				ethmac_crc32_inserter_sink_ready <= 1'd0;
				liteethmaccrc32inserter_next_state <= 1'd1;
			end
			ethmac_crc32_inserter_is_ongoing0 <= 1'd1;
		end
	endcase
end
assign ethmac_crc32_checker_fifo_full = (ethmac_crc32_checker_syncfifo_level == 3'd4);
assign ethmac_crc32_checker_fifo_in = (ethmac_crc32_checker_sink_sink_valid & ((~ethmac_crc32_checker_fifo_full) | ethmac_crc32_checker_fifo_out));
assign ethmac_crc32_checker_fifo_out = (ethmac_crc32_checker_source_source_valid & ethmac_crc32_checker_source_source_ready);
assign ethmac_crc32_checker_syncfifo_sink_first = ethmac_crc32_checker_sink_sink_first;
assign ethmac_crc32_checker_syncfifo_sink_last = ethmac_crc32_checker_sink_sink_last;
assign ethmac_crc32_checker_syncfifo_sink_payload_data = ethmac_crc32_checker_sink_sink_payload_data;
assign ethmac_crc32_checker_syncfifo_sink_payload_last_be = ethmac_crc32_checker_sink_sink_payload_last_be;
assign ethmac_crc32_checker_syncfifo_sink_payload_error = ethmac_crc32_checker_sink_sink_payload_error;
always @(*) begin
	ethmac_crc32_checker_syncfifo_sink_valid <= 1'd0;
	ethmac_crc32_checker_syncfifo_sink_valid <= ethmac_crc32_checker_sink_sink_valid;
	ethmac_crc32_checker_syncfifo_sink_valid <= ethmac_crc32_checker_fifo_in;
end
always @(*) begin
	ethmac_crc32_checker_sink_sink_ready <= 1'd0;
	ethmac_crc32_checker_sink_sink_ready <= ethmac_crc32_checker_syncfifo_sink_ready;
	ethmac_crc32_checker_sink_sink_ready <= ethmac_crc32_checker_fifo_in;
end
assign ethmac_crc32_checker_source_source_valid = (ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_fifo_full);
assign ethmac_crc32_checker_source_source_last = ethmac_crc32_checker_sink_sink_last;
assign ethmac_crc32_checker_syncfifo_source_ready = ethmac_crc32_checker_fifo_out;
assign ethmac_crc32_checker_source_source_payload_data = ethmac_crc32_checker_syncfifo_source_payload_data;
assign ethmac_crc32_checker_source_source_payload_last_be = ethmac_crc32_checker_syncfifo_source_payload_last_be;
always @(*) begin
	ethmac_crc32_checker_source_source_payload_error <= 1'd0;
	ethmac_crc32_checker_source_source_payload_error <= ethmac_crc32_checker_syncfifo_source_payload_error;
	ethmac_crc32_checker_source_source_payload_error <= (ethmac_crc32_checker_sink_sink_payload_error | ethmac_crc32_checker_crc_error);
end
assign ethmac_crc32_checker_error = ((ethmac_crc32_checker_source_source_valid & ethmac_crc32_checker_source_source_last) & ethmac_crc32_checker_crc_error);
assign ethmac_crc32_checker_crc_data0 = ethmac_crc32_checker_sink_sink_payload_data;
assign ethmac_crc32_checker_crc_data1 = ethmac_crc32_checker_crc_data0;
assign ethmac_crc32_checker_crc_last = ethmac_crc32_checker_crc_reg;
assign ethmac_crc32_checker_crc_value = (~{ethmac_crc32_checker_crc_reg[0], ethmac_crc32_checker_crc_reg[1], ethmac_crc32_checker_crc_reg[2], ethmac_crc32_checker_crc_reg[3], ethmac_crc32_checker_crc_reg[4], ethmac_crc32_checker_crc_reg[5], ethmac_crc32_checker_crc_reg[6], ethmac_crc32_checker_crc_reg[7], ethmac_crc32_checker_crc_reg[8], ethmac_crc32_checker_crc_reg[9], ethmac_crc32_checker_crc_reg[10], ethmac_crc32_checker_crc_reg[11], ethmac_crc32_checker_crc_reg[12], ethmac_crc32_checker_crc_reg[13], ethmac_crc32_checker_crc_reg[14], ethmac_crc32_checker_crc_reg[15], ethmac_crc32_checker_crc_reg[16], ethmac_crc32_checker_crc_reg[17], ethmac_crc32_checker_crc_reg[18], ethmac_crc32_checker_crc_reg[19], ethmac_crc32_checker_crc_reg[20], ethmac_crc32_checker_crc_reg[21], ethmac_crc32_checker_crc_reg[22], ethmac_crc32_checker_crc_reg[23], ethmac_crc32_checker_crc_reg[24], ethmac_crc32_checker_crc_reg[25], ethmac_crc32_checker_crc_reg[26], ethmac_crc32_checker_crc_reg[27], ethmac_crc32_checker_crc_reg[28], ethmac_crc32_checker_crc_reg[29], ethmac_crc32_checker_crc_reg[30], ethmac_crc32_checker_crc_reg[31]});
assign ethmac_crc32_checker_crc_error = (ethmac_crc32_checker_crc_next != 32'd3338984827);
always @(*) begin
	ethmac_crc32_checker_crc_next <= 32'd0;
	ethmac_crc32_checker_crc_next[0] <= (((ethmac_crc32_checker_crc_last[24] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[1] <= (((((((ethmac_crc32_checker_crc_last[25] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[2] <= (((((((((ethmac_crc32_checker_crc_last[26] ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[3] <= (((((((ethmac_crc32_checker_crc_last[27] ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[4] <= (((((((((ethmac_crc32_checker_crc_last[28] ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[5] <= (((((((((((((ethmac_crc32_checker_crc_last[29] ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[6] <= (((((((((((ethmac_crc32_checker_crc_last[30] ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[7] <= (((((((((ethmac_crc32_checker_crc_last[31] ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[8] <= ((((((((ethmac_crc32_checker_crc_last[0] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[9] <= ((((((((ethmac_crc32_checker_crc_last[1] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[10] <= ((((((((ethmac_crc32_checker_crc_last[2] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[11] <= ((((((((ethmac_crc32_checker_crc_last[3] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[12] <= ((((((((((((ethmac_crc32_checker_crc_last[4] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[13] <= ((((((((((((ethmac_crc32_checker_crc_last[5] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[14] <= ((((((((((ethmac_crc32_checker_crc_last[6] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[15] <= ((((((((ethmac_crc32_checker_crc_last[7] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]);
	ethmac_crc32_checker_crc_next[16] <= ((((((ethmac_crc32_checker_crc_last[8] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[17] <= ((((((ethmac_crc32_checker_crc_last[9] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[18] <= ((((((ethmac_crc32_checker_crc_last[10] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[19] <= ((((ethmac_crc32_checker_crc_last[11] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]);
	ethmac_crc32_checker_crc_next[20] <= ((ethmac_crc32_checker_crc_last[12] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]);
	ethmac_crc32_checker_crc_next[21] <= ((ethmac_crc32_checker_crc_last[13] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]);
	ethmac_crc32_checker_crc_next[22] <= ((ethmac_crc32_checker_crc_last[14] ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[23] <= ((((((ethmac_crc32_checker_crc_last[15] ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_data1[6]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[24] <= ((((((ethmac_crc32_checker_crc_last[16] ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[25] <= ((((ethmac_crc32_checker_crc_last[17] ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[26] <= ((((((((ethmac_crc32_checker_crc_last[18] ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]) ^ ethmac_crc32_checker_crc_last[24]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_data1[7]);
	ethmac_crc32_checker_crc_next[27] <= ((((((((ethmac_crc32_checker_crc_last[19] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]) ^ ethmac_crc32_checker_crc_last[25]) ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_data1[6]);
	ethmac_crc32_checker_crc_next[28] <= ((((((ethmac_crc32_checker_crc_last[20] ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]) ^ ethmac_crc32_checker_crc_last[26]) ^ ethmac_crc32_checker_crc_data1[5]);
	ethmac_crc32_checker_crc_next[29] <= ((((((ethmac_crc32_checker_crc_last[21] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[30]) ^ ethmac_crc32_checker_crc_data1[1]) ^ ethmac_crc32_checker_crc_last[27]) ^ ethmac_crc32_checker_crc_data1[4]);
	ethmac_crc32_checker_crc_next[30] <= ((((ethmac_crc32_checker_crc_last[22] ^ ethmac_crc32_checker_crc_last[31]) ^ ethmac_crc32_checker_crc_data1[0]) ^ ethmac_crc32_checker_crc_last[28]) ^ ethmac_crc32_checker_crc_data1[3]);
	ethmac_crc32_checker_crc_next[31] <= ((ethmac_crc32_checker_crc_last[23] ^ ethmac_crc32_checker_crc_last[29]) ^ ethmac_crc32_checker_crc_data1[2]);
end
assign ethmac_crc32_checker_syncfifo_syncfifo_din = {ethmac_crc32_checker_syncfifo_fifo_in_last, ethmac_crc32_checker_syncfifo_fifo_in_first, ethmac_crc32_checker_syncfifo_fifo_in_payload_error, ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be, ethmac_crc32_checker_syncfifo_fifo_in_payload_data};
assign {ethmac_crc32_checker_syncfifo_fifo_out_last, ethmac_crc32_checker_syncfifo_fifo_out_first, ethmac_crc32_checker_syncfifo_fifo_out_payload_error, ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be, ethmac_crc32_checker_syncfifo_fifo_out_payload_data} = ethmac_crc32_checker_syncfifo_syncfifo_dout;
assign ethmac_crc32_checker_syncfifo_sink_ready = ethmac_crc32_checker_syncfifo_syncfifo_writable;
assign ethmac_crc32_checker_syncfifo_syncfifo_we = ethmac_crc32_checker_syncfifo_sink_valid;
assign ethmac_crc32_checker_syncfifo_fifo_in_first = ethmac_crc32_checker_syncfifo_sink_first;
assign ethmac_crc32_checker_syncfifo_fifo_in_last = ethmac_crc32_checker_syncfifo_sink_last;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_data = ethmac_crc32_checker_syncfifo_sink_payload_data;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_last_be = ethmac_crc32_checker_syncfifo_sink_payload_last_be;
assign ethmac_crc32_checker_syncfifo_fifo_in_payload_error = ethmac_crc32_checker_syncfifo_sink_payload_error;
assign ethmac_crc32_checker_syncfifo_source_valid = ethmac_crc32_checker_syncfifo_syncfifo_readable;
assign ethmac_crc32_checker_syncfifo_source_first = ethmac_crc32_checker_syncfifo_fifo_out_first;
assign ethmac_crc32_checker_syncfifo_source_last = ethmac_crc32_checker_syncfifo_fifo_out_last;
assign ethmac_crc32_checker_syncfifo_source_payload_data = ethmac_crc32_checker_syncfifo_fifo_out_payload_data;
assign ethmac_crc32_checker_syncfifo_source_payload_last_be = ethmac_crc32_checker_syncfifo_fifo_out_payload_last_be;
assign ethmac_crc32_checker_syncfifo_source_payload_error = ethmac_crc32_checker_syncfifo_fifo_out_payload_error;
assign ethmac_crc32_checker_syncfifo_syncfifo_re = ethmac_crc32_checker_syncfifo_source_ready;
always @(*) begin
	ethmac_crc32_checker_syncfifo_wrport_adr <= 3'd0;
	if (ethmac_crc32_checker_syncfifo_replace) begin
		ethmac_crc32_checker_syncfifo_wrport_adr <= (ethmac_crc32_checker_syncfifo_produce - 1'd1);
	end else begin
		ethmac_crc32_checker_syncfifo_wrport_adr <= ethmac_crc32_checker_syncfifo_produce;
	end
end
assign ethmac_crc32_checker_syncfifo_wrport_dat_w = ethmac_crc32_checker_syncfifo_syncfifo_din;
assign ethmac_crc32_checker_syncfifo_wrport_we = (ethmac_crc32_checker_syncfifo_syncfifo_we & (ethmac_crc32_checker_syncfifo_syncfifo_writable | ethmac_crc32_checker_syncfifo_replace));
assign ethmac_crc32_checker_syncfifo_do_read = (ethmac_crc32_checker_syncfifo_syncfifo_readable & ethmac_crc32_checker_syncfifo_syncfifo_re);
assign ethmac_crc32_checker_syncfifo_rdport_adr = ethmac_crc32_checker_syncfifo_consume;
assign ethmac_crc32_checker_syncfifo_syncfifo_dout = ethmac_crc32_checker_syncfifo_rdport_dat_r;
assign ethmac_crc32_checker_syncfifo_syncfifo_writable = (ethmac_crc32_checker_syncfifo_level != 3'd5);
assign ethmac_crc32_checker_syncfifo_syncfifo_readable = (ethmac_crc32_checker_syncfifo_level != 1'd0);
always @(*) begin
	liteethmaccrc32checker_next_state <= 2'd0;
	ethmac_crc32_checker_crc_ce <= 1'd0;
	ethmac_crc32_checker_crc_reset <= 1'd0;
	ethmac_crc32_checker_fifo_reset <= 1'd0;
	liteethmaccrc32checker_next_state <= liteethmaccrc32checker_state;
	case (liteethmaccrc32checker_state)
		1'd1: begin
			if ((ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_sink_sink_ready)) begin
				ethmac_crc32_checker_crc_ce <= 1'd1;
				liteethmaccrc32checker_next_state <= 2'd2;
			end
		end
		2'd2: begin
			if ((ethmac_crc32_checker_sink_sink_valid & ethmac_crc32_checker_sink_sink_ready)) begin
				ethmac_crc32_checker_crc_ce <= 1'd1;
				if (ethmac_crc32_checker_sink_sink_last) begin
					liteethmaccrc32checker_next_state <= 1'd0;
				end
			end
		end
		default: begin
			ethmac_crc32_checker_crc_reset <= 1'd1;
			ethmac_crc32_checker_fifo_reset <= 1'd1;
			liteethmaccrc32checker_next_state <= 1'd1;
		end
	endcase
end
assign ethmac_ps_preamble_error_o = (ethmac_ps_preamble_error_toggle_o ^ ethmac_ps_preamble_error_toggle_o_r);
assign ethmac_ps_crc_error_o = (ethmac_ps_crc_error_toggle_o ^ ethmac_ps_crc_error_toggle_o_r);
assign ethmac_padding_inserter_counter_done = (ethmac_padding_inserter_counter >= 6'd59);
always @(*) begin
	liteethmacpaddinginserter_next_state <= 1'd0;
	ethmac_padding_inserter_counter_reset <= 1'd0;
	ethmac_padding_inserter_sink_ready <= 1'd0;
	ethmac_padding_inserter_counter_ce <= 1'd0;
	ethmac_padding_inserter_source_valid <= 1'd0;
	ethmac_padding_inserter_source_first <= 1'd0;
	ethmac_padding_inserter_source_last <= 1'd0;
	ethmac_padding_inserter_source_payload_data <= 8'd0;
	ethmac_padding_inserter_source_payload_last_be <= 1'd0;
	ethmac_padding_inserter_source_payload_error <= 1'd0;
	liteethmacpaddinginserter_next_state <= liteethmacpaddinginserter_state;
	case (liteethmacpaddinginserter_state)
		1'd1: begin
			ethmac_padding_inserter_source_valid <= 1'd1;
			ethmac_padding_inserter_source_last <= ethmac_padding_inserter_counter_done;
			ethmac_padding_inserter_source_payload_data <= 1'd0;
			if ((ethmac_padding_inserter_source_valid & ethmac_padding_inserter_source_ready)) begin
				ethmac_padding_inserter_counter_ce <= 1'd1;
				if (ethmac_padding_inserter_counter_done) begin
					ethmac_padding_inserter_counter_reset <= 1'd1;
					liteethmacpaddinginserter_next_state <= 1'd0;
				end
			end
		end
		default: begin
			ethmac_padding_inserter_source_valid <= ethmac_padding_inserter_sink_valid;
			ethmac_padding_inserter_sink_ready <= ethmac_padding_inserter_source_ready;
			ethmac_padding_inserter_source_first <= ethmac_padding_inserter_sink_first;
			ethmac_padding_inserter_source_last <= ethmac_padding_inserter_sink_last;
			ethmac_padding_inserter_source_payload_data <= ethmac_padding_inserter_sink_payload_data;
			ethmac_padding_inserter_source_payload_last_be <= ethmac_padding_inserter_sink_payload_last_be;
			ethmac_padding_inserter_source_payload_error <= ethmac_padding_inserter_sink_payload_error;
			if ((ethmac_padding_inserter_source_valid & ethmac_padding_inserter_source_ready)) begin
				ethmac_padding_inserter_counter_ce <= 1'd1;
				if (ethmac_padding_inserter_sink_last) begin
					if ((~ethmac_padding_inserter_counter_done)) begin
						ethmac_padding_inserter_source_last <= 1'd0;
						liteethmacpaddinginserter_next_state <= 1'd1;
					end else begin
						ethmac_padding_inserter_counter_reset <= 1'd1;
					end
				end
			end
		end
	endcase
end
assign ethmac_padding_checker_source_valid = ethmac_padding_checker_sink_valid;
assign ethmac_padding_checker_sink_ready = ethmac_padding_checker_source_ready;
assign ethmac_padding_checker_source_first = ethmac_padding_checker_sink_first;
assign ethmac_padding_checker_source_last = ethmac_padding_checker_sink_last;
assign ethmac_padding_checker_source_payload_data = ethmac_padding_checker_sink_payload_data;
assign ethmac_padding_checker_source_payload_last_be = ethmac_padding_checker_sink_payload_last_be;
assign ethmac_padding_checker_source_payload_error = ethmac_padding_checker_sink_payload_error;
assign ethmac_tx_last_be_source_valid = (ethmac_tx_last_be_sink_valid & ethmac_tx_last_be_ongoing);
assign ethmac_tx_last_be_source_last = ethmac_tx_last_be_sink_payload_last_be;
assign ethmac_tx_last_be_source_payload_data = ethmac_tx_last_be_sink_payload_data;
assign ethmac_tx_last_be_sink_ready = ethmac_tx_last_be_source_ready;
assign ethmac_rx_last_be_source_valid = ethmac_rx_last_be_sink_valid;
assign ethmac_rx_last_be_sink_ready = ethmac_rx_last_be_source_ready;
assign ethmac_rx_last_be_source_first = ethmac_rx_last_be_sink_first;
assign ethmac_rx_last_be_source_last = ethmac_rx_last_be_sink_last;
assign ethmac_rx_last_be_source_payload_data = ethmac_rx_last_be_sink_payload_data;
assign ethmac_rx_last_be_source_payload_error = ethmac_rx_last_be_sink_payload_error;
always @(*) begin
	ethmac_rx_last_be_source_payload_last_be <= 1'd0;
	ethmac_rx_last_be_source_payload_last_be <= ethmac_rx_last_be_sink_payload_last_be;
	ethmac_rx_last_be_source_payload_last_be <= ethmac_rx_last_be_sink_last;
end
assign ethmac_tx_converter_converter_sink_valid = ethmac_tx_converter_sink_valid;
assign ethmac_tx_converter_converter_sink_first = ethmac_tx_converter_sink_first;
assign ethmac_tx_converter_converter_sink_last = ethmac_tx_converter_sink_last;
assign ethmac_tx_converter_sink_ready = ethmac_tx_converter_converter_sink_ready;
always @(*) begin
	ethmac_tx_converter_converter_sink_payload_data <= 40'd0;
	ethmac_tx_converter_converter_sink_payload_data[7:0] <= ethmac_tx_converter_sink_payload_data[7:0];
	ethmac_tx_converter_converter_sink_payload_data[8] <= ethmac_tx_converter_sink_payload_last_be[0];
	ethmac_tx_converter_converter_sink_payload_data[9] <= ethmac_tx_converter_sink_payload_error[0];
	ethmac_tx_converter_converter_sink_payload_data[17:10] <= ethmac_tx_converter_sink_payload_data[15:8];
	ethmac_tx_converter_converter_sink_payload_data[18] <= ethmac_tx_converter_sink_payload_last_be[1];
	ethmac_tx_converter_converter_sink_payload_data[19] <= ethmac_tx_converter_sink_payload_error[1];
	ethmac_tx_converter_converter_sink_payload_data[27:20] <= ethmac_tx_converter_sink_payload_data[23:16];
	ethmac_tx_converter_converter_sink_payload_data[28] <= ethmac_tx_converter_sink_payload_last_be[2];
	ethmac_tx_converter_converter_sink_payload_data[29] <= ethmac_tx_converter_sink_payload_error[2];
	ethmac_tx_converter_converter_sink_payload_data[37:30] <= ethmac_tx_converter_sink_payload_data[31:24];
	ethmac_tx_converter_converter_sink_payload_data[38] <= ethmac_tx_converter_sink_payload_last_be[3];
	ethmac_tx_converter_converter_sink_payload_data[39] <= ethmac_tx_converter_sink_payload_error[3];
end
assign ethmac_tx_converter_source_valid = ethmac_tx_converter_source_source_valid;
assign ethmac_tx_converter_source_first = ethmac_tx_converter_source_source_first;
assign ethmac_tx_converter_source_last = ethmac_tx_converter_source_source_last;
assign ethmac_tx_converter_source_source_ready = ethmac_tx_converter_source_ready;
assign {ethmac_tx_converter_source_payload_error, ethmac_tx_converter_source_payload_last_be, ethmac_tx_converter_source_payload_data} = ethmac_tx_converter_source_source_payload_data;
assign ethmac_tx_converter_source_source_valid = ethmac_tx_converter_converter_source_valid;
assign ethmac_tx_converter_converter_source_ready = ethmac_tx_converter_source_source_ready;
assign ethmac_tx_converter_source_source_first = ethmac_tx_converter_converter_source_first;
assign ethmac_tx_converter_source_source_last = ethmac_tx_converter_converter_source_last;
assign ethmac_tx_converter_source_source_payload_data = ethmac_tx_converter_converter_source_payload_data;
assign ethmac_tx_converter_converter_first = (ethmac_tx_converter_converter_mux == 1'd0);
assign ethmac_tx_converter_converter_last = (ethmac_tx_converter_converter_mux == 2'd3);
assign ethmac_tx_converter_converter_source_valid = ethmac_tx_converter_converter_sink_valid;
assign ethmac_tx_converter_converter_source_first = (ethmac_tx_converter_converter_sink_first & ethmac_tx_converter_converter_first);
assign ethmac_tx_converter_converter_source_last = (ethmac_tx_converter_converter_sink_last & ethmac_tx_converter_converter_last);
assign ethmac_tx_converter_converter_sink_ready = (ethmac_tx_converter_converter_last & ethmac_tx_converter_converter_source_ready);
always @(*) begin
	ethmac_tx_converter_converter_source_payload_data <= 10'd0;
	case (ethmac_tx_converter_converter_mux)
		1'd0: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[9:0];
		end
		1'd1: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[19:10];
		end
		2'd2: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[29:20];
		end
		default: begin
			ethmac_tx_converter_converter_source_payload_data <= ethmac_tx_converter_converter_sink_payload_data[39:30];
		end
	endcase
end
assign ethmac_tx_converter_converter_source_payload_valid_token_count = ethmac_tx_converter_converter_last;
assign ethmac_rx_converter_converter_sink_valid = ethmac_rx_converter_sink_valid;
assign ethmac_rx_converter_converter_sink_first = ethmac_rx_converter_sink_first;
assign ethmac_rx_converter_converter_sink_last = ethmac_rx_converter_sink_last;
assign ethmac_rx_converter_sink_ready = ethmac_rx_converter_converter_sink_ready;
assign ethmac_rx_converter_converter_sink_payload_data = {ethmac_rx_converter_sink_payload_error, ethmac_rx_converter_sink_payload_last_be, ethmac_rx_converter_sink_payload_data};
assign ethmac_rx_converter_source_valid = ethmac_rx_converter_source_source_valid;
assign ethmac_rx_converter_source_first = ethmac_rx_converter_source_source_first;
assign ethmac_rx_converter_source_last = ethmac_rx_converter_source_source_last;
assign ethmac_rx_converter_source_source_ready = ethmac_rx_converter_source_ready;
always @(*) begin
	ethmac_rx_converter_source_payload_data <= 32'd0;
	ethmac_rx_converter_source_payload_data[7:0] <= ethmac_rx_converter_source_source_payload_data[7:0];
	ethmac_rx_converter_source_payload_data[15:8] <= ethmac_rx_converter_source_source_payload_data[17:10];
	ethmac_rx_converter_source_payload_data[23:16] <= ethmac_rx_converter_source_source_payload_data[27:20];
	ethmac_rx_converter_source_payload_data[31:24] <= ethmac_rx_converter_source_source_payload_data[37:30];
end
always @(*) begin
	ethmac_rx_converter_source_payload_last_be <= 4'd0;
	ethmac_rx_converter_source_payload_last_be[0] <= ethmac_rx_converter_source_source_payload_data[8];
	ethmac_rx_converter_source_payload_last_be[1] <= ethmac_rx_converter_source_source_payload_data[18];
	ethmac_rx_converter_source_payload_last_be[2] <= ethmac_rx_converter_source_source_payload_data[28];
	ethmac_rx_converter_source_payload_last_be[3] <= ethmac_rx_converter_source_source_payload_data[38];
end
always @(*) begin
	ethmac_rx_converter_source_payload_error <= 4'd0;
	ethmac_rx_converter_source_payload_error[0] <= ethmac_rx_converter_source_source_payload_data[9];
	ethmac_rx_converter_source_payload_error[1] <= ethmac_rx_converter_source_source_payload_data[19];
	ethmac_rx_converter_source_payload_error[2] <= ethmac_rx_converter_source_source_payload_data[29];
	ethmac_rx_converter_source_payload_error[3] <= ethmac_rx_converter_source_source_payload_data[39];
end
assign ethmac_rx_converter_source_source_valid = ethmac_rx_converter_converter_source_valid;
assign ethmac_rx_converter_converter_source_ready = ethmac_rx_converter_source_source_ready;
assign ethmac_rx_converter_source_source_first = ethmac_rx_converter_converter_source_first;
assign ethmac_rx_converter_source_source_last = ethmac_rx_converter_converter_source_last;
assign ethmac_rx_converter_source_source_payload_data = ethmac_rx_converter_converter_source_payload_data;
assign ethmac_rx_converter_converter_sink_ready = ((~ethmac_rx_converter_converter_strobe_all) | ethmac_rx_converter_converter_source_ready);
assign ethmac_rx_converter_converter_source_valid = ethmac_rx_converter_converter_strobe_all;
assign ethmac_rx_converter_converter_load_part = (ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready);
assign ethmac_tx_cdc_asyncfifo_din = {ethmac_tx_cdc_fifo_in_last, ethmac_tx_cdc_fifo_in_first, ethmac_tx_cdc_fifo_in_payload_error, ethmac_tx_cdc_fifo_in_payload_last_be, ethmac_tx_cdc_fifo_in_payload_data};
assign {ethmac_tx_cdc_fifo_out_last, ethmac_tx_cdc_fifo_out_first, ethmac_tx_cdc_fifo_out_payload_error, ethmac_tx_cdc_fifo_out_payload_last_be, ethmac_tx_cdc_fifo_out_payload_data} = ethmac_tx_cdc_asyncfifo_dout;
assign ethmac_tx_cdc_sink_ready = ethmac_tx_cdc_asyncfifo_writable;
assign ethmac_tx_cdc_asyncfifo_we = ethmac_tx_cdc_sink_valid;
assign ethmac_tx_cdc_fifo_in_first = ethmac_tx_cdc_sink_first;
assign ethmac_tx_cdc_fifo_in_last = ethmac_tx_cdc_sink_last;
assign ethmac_tx_cdc_fifo_in_payload_data = ethmac_tx_cdc_sink_payload_data;
assign ethmac_tx_cdc_fifo_in_payload_last_be = ethmac_tx_cdc_sink_payload_last_be;
assign ethmac_tx_cdc_fifo_in_payload_error = ethmac_tx_cdc_sink_payload_error;
assign ethmac_tx_cdc_source_valid = ethmac_tx_cdc_asyncfifo_readable;
assign ethmac_tx_cdc_source_first = ethmac_tx_cdc_fifo_out_first;
assign ethmac_tx_cdc_source_last = ethmac_tx_cdc_fifo_out_last;
assign ethmac_tx_cdc_source_payload_data = ethmac_tx_cdc_fifo_out_payload_data;
assign ethmac_tx_cdc_source_payload_last_be = ethmac_tx_cdc_fifo_out_payload_last_be;
assign ethmac_tx_cdc_source_payload_error = ethmac_tx_cdc_fifo_out_payload_error;
assign ethmac_tx_cdc_asyncfifo_re = ethmac_tx_cdc_source_ready;
assign ethmac_tx_cdc_graycounter0_ce = (ethmac_tx_cdc_asyncfifo_writable & ethmac_tx_cdc_asyncfifo_we);
assign ethmac_tx_cdc_graycounter1_ce = (ethmac_tx_cdc_asyncfifo_readable & ethmac_tx_cdc_asyncfifo_re);
assign ethmac_tx_cdc_asyncfifo_writable = (((ethmac_tx_cdc_graycounter0_q[6] == ethmac_tx_cdc_consume_wdomain[6]) | (ethmac_tx_cdc_graycounter0_q[5] == ethmac_tx_cdc_consume_wdomain[5])) | (ethmac_tx_cdc_graycounter0_q[4:0] != ethmac_tx_cdc_consume_wdomain[4:0]));
assign ethmac_tx_cdc_asyncfifo_readable = (ethmac_tx_cdc_graycounter1_q != ethmac_tx_cdc_produce_rdomain);
assign ethmac_tx_cdc_wrport_adr = ethmac_tx_cdc_graycounter0_q_binary[5:0];
assign ethmac_tx_cdc_wrport_dat_w = ethmac_tx_cdc_asyncfifo_din;
assign ethmac_tx_cdc_wrport_we = ethmac_tx_cdc_graycounter0_ce;
assign ethmac_tx_cdc_rdport_adr = ethmac_tx_cdc_graycounter1_q_next_binary[5:0];
assign ethmac_tx_cdc_asyncfifo_dout = ethmac_tx_cdc_rdport_dat_r;
always @(*) begin
	ethmac_tx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (ethmac_tx_cdc_graycounter0_ce) begin
		ethmac_tx_cdc_graycounter0_q_next_binary <= (ethmac_tx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		ethmac_tx_cdc_graycounter0_q_next_binary <= ethmac_tx_cdc_graycounter0_q_binary;
	end
end
assign ethmac_tx_cdc_graycounter0_q_next = (ethmac_tx_cdc_graycounter0_q_next_binary ^ ethmac_tx_cdc_graycounter0_q_next_binary[6:1]);
always @(*) begin
	ethmac_tx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (ethmac_tx_cdc_graycounter1_ce) begin
		ethmac_tx_cdc_graycounter1_q_next_binary <= (ethmac_tx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		ethmac_tx_cdc_graycounter1_q_next_binary <= ethmac_tx_cdc_graycounter1_q_binary;
	end
end
assign ethmac_tx_cdc_graycounter1_q_next = (ethmac_tx_cdc_graycounter1_q_next_binary ^ ethmac_tx_cdc_graycounter1_q_next_binary[6:1]);
assign ethmac_rx_cdc_asyncfifo_din = {ethmac_rx_cdc_fifo_in_last, ethmac_rx_cdc_fifo_in_first, ethmac_rx_cdc_fifo_in_payload_error, ethmac_rx_cdc_fifo_in_payload_last_be, ethmac_rx_cdc_fifo_in_payload_data};
assign {ethmac_rx_cdc_fifo_out_last, ethmac_rx_cdc_fifo_out_first, ethmac_rx_cdc_fifo_out_payload_error, ethmac_rx_cdc_fifo_out_payload_last_be, ethmac_rx_cdc_fifo_out_payload_data} = ethmac_rx_cdc_asyncfifo_dout;
assign ethmac_rx_cdc_sink_ready = ethmac_rx_cdc_asyncfifo_writable;
assign ethmac_rx_cdc_asyncfifo_we = ethmac_rx_cdc_sink_valid;
assign ethmac_rx_cdc_fifo_in_first = ethmac_rx_cdc_sink_first;
assign ethmac_rx_cdc_fifo_in_last = ethmac_rx_cdc_sink_last;
assign ethmac_rx_cdc_fifo_in_payload_data = ethmac_rx_cdc_sink_payload_data;
assign ethmac_rx_cdc_fifo_in_payload_last_be = ethmac_rx_cdc_sink_payload_last_be;
assign ethmac_rx_cdc_fifo_in_payload_error = ethmac_rx_cdc_sink_payload_error;
assign ethmac_rx_cdc_source_valid = ethmac_rx_cdc_asyncfifo_readable;
assign ethmac_rx_cdc_source_first = ethmac_rx_cdc_fifo_out_first;
assign ethmac_rx_cdc_source_last = ethmac_rx_cdc_fifo_out_last;
assign ethmac_rx_cdc_source_payload_data = ethmac_rx_cdc_fifo_out_payload_data;
assign ethmac_rx_cdc_source_payload_last_be = ethmac_rx_cdc_fifo_out_payload_last_be;
assign ethmac_rx_cdc_source_payload_error = ethmac_rx_cdc_fifo_out_payload_error;
assign ethmac_rx_cdc_asyncfifo_re = ethmac_rx_cdc_source_ready;
assign ethmac_rx_cdc_graycounter0_ce = (ethmac_rx_cdc_asyncfifo_writable & ethmac_rx_cdc_asyncfifo_we);
assign ethmac_rx_cdc_graycounter1_ce = (ethmac_rx_cdc_asyncfifo_readable & ethmac_rx_cdc_asyncfifo_re);
assign ethmac_rx_cdc_asyncfifo_writable = (((ethmac_rx_cdc_graycounter0_q[6] == ethmac_rx_cdc_consume_wdomain[6]) | (ethmac_rx_cdc_graycounter0_q[5] == ethmac_rx_cdc_consume_wdomain[5])) | (ethmac_rx_cdc_graycounter0_q[4:0] != ethmac_rx_cdc_consume_wdomain[4:0]));
assign ethmac_rx_cdc_asyncfifo_readable = (ethmac_rx_cdc_graycounter1_q != ethmac_rx_cdc_produce_rdomain);
assign ethmac_rx_cdc_wrport_adr = ethmac_rx_cdc_graycounter0_q_binary[5:0];
assign ethmac_rx_cdc_wrport_dat_w = ethmac_rx_cdc_asyncfifo_din;
assign ethmac_rx_cdc_wrport_we = ethmac_rx_cdc_graycounter0_ce;
assign ethmac_rx_cdc_rdport_adr = ethmac_rx_cdc_graycounter1_q_next_binary[5:0];
assign ethmac_rx_cdc_asyncfifo_dout = ethmac_rx_cdc_rdport_dat_r;
always @(*) begin
	ethmac_rx_cdc_graycounter0_q_next_binary <= 7'd0;
	if (ethmac_rx_cdc_graycounter0_ce) begin
		ethmac_rx_cdc_graycounter0_q_next_binary <= (ethmac_rx_cdc_graycounter0_q_binary + 1'd1);
	end else begin
		ethmac_rx_cdc_graycounter0_q_next_binary <= ethmac_rx_cdc_graycounter0_q_binary;
	end
end
assign ethmac_rx_cdc_graycounter0_q_next = (ethmac_rx_cdc_graycounter0_q_next_binary ^ ethmac_rx_cdc_graycounter0_q_next_binary[6:1]);
always @(*) begin
	ethmac_rx_cdc_graycounter1_q_next_binary <= 7'd0;
	if (ethmac_rx_cdc_graycounter1_ce) begin
		ethmac_rx_cdc_graycounter1_q_next_binary <= (ethmac_rx_cdc_graycounter1_q_binary + 1'd1);
	end else begin
		ethmac_rx_cdc_graycounter1_q_next_binary <= ethmac_rx_cdc_graycounter1_q_binary;
	end
end
assign ethmac_rx_cdc_graycounter1_q_next = (ethmac_rx_cdc_graycounter1_q_next_binary ^ ethmac_rx_cdc_graycounter1_q_next_binary[6:1]);
assign ethmac_tx_converter_sink_valid = ethmac_tx_cdc_source_valid;
assign ethmac_tx_cdc_source_ready = ethmac_tx_converter_sink_ready;
assign ethmac_tx_converter_sink_first = ethmac_tx_cdc_source_first;
assign ethmac_tx_converter_sink_last = ethmac_tx_cdc_source_last;
assign ethmac_tx_converter_sink_payload_data = ethmac_tx_cdc_source_payload_data;
assign ethmac_tx_converter_sink_payload_last_be = ethmac_tx_cdc_source_payload_last_be;
assign ethmac_tx_converter_sink_payload_error = ethmac_tx_cdc_source_payload_error;
assign ethmac_tx_last_be_sink_valid = ethmac_tx_converter_source_valid;
assign ethmac_tx_converter_source_ready = ethmac_tx_last_be_sink_ready;
assign ethmac_tx_last_be_sink_first = ethmac_tx_converter_source_first;
assign ethmac_tx_last_be_sink_last = ethmac_tx_converter_source_last;
assign ethmac_tx_last_be_sink_payload_data = ethmac_tx_converter_source_payload_data;
assign ethmac_tx_last_be_sink_payload_last_be = ethmac_tx_converter_source_payload_last_be;
assign ethmac_tx_last_be_sink_payload_error = ethmac_tx_converter_source_payload_error;
assign ethmac_padding_inserter_sink_valid = ethmac_tx_last_be_source_valid;
assign ethmac_tx_last_be_source_ready = ethmac_padding_inserter_sink_ready;
assign ethmac_padding_inserter_sink_first = ethmac_tx_last_be_source_first;
assign ethmac_padding_inserter_sink_last = ethmac_tx_last_be_source_last;
assign ethmac_padding_inserter_sink_payload_data = ethmac_tx_last_be_source_payload_data;
assign ethmac_padding_inserter_sink_payload_last_be = ethmac_tx_last_be_source_payload_last_be;
assign ethmac_padding_inserter_sink_payload_error = ethmac_tx_last_be_source_payload_error;
assign ethmac_crc32_inserter_sink_valid = ethmac_padding_inserter_source_valid;
assign ethmac_padding_inserter_source_ready = ethmac_crc32_inserter_sink_ready;
assign ethmac_crc32_inserter_sink_first = ethmac_padding_inserter_source_first;
assign ethmac_crc32_inserter_sink_last = ethmac_padding_inserter_source_last;
assign ethmac_crc32_inserter_sink_payload_data = ethmac_padding_inserter_source_payload_data;
assign ethmac_crc32_inserter_sink_payload_last_be = ethmac_padding_inserter_source_payload_last_be;
assign ethmac_crc32_inserter_sink_payload_error = ethmac_padding_inserter_source_payload_error;
assign ethmac_preamble_inserter_sink_valid = ethmac_crc32_inserter_source_valid;
assign ethmac_crc32_inserter_source_ready = ethmac_preamble_inserter_sink_ready;
assign ethmac_preamble_inserter_sink_first = ethmac_crc32_inserter_source_first;
assign ethmac_preamble_inserter_sink_last = ethmac_crc32_inserter_source_last;
assign ethmac_preamble_inserter_sink_payload_data = ethmac_crc32_inserter_source_payload_data;
assign ethmac_preamble_inserter_sink_payload_last_be = ethmac_crc32_inserter_source_payload_last_be;
assign ethmac_preamble_inserter_sink_payload_error = ethmac_crc32_inserter_source_payload_error;
assign ethmac_tx_gap_inserter_sink_valid = ethmac_preamble_inserter_source_valid;
assign ethmac_preamble_inserter_source_ready = ethmac_tx_gap_inserter_sink_ready;
assign ethmac_tx_gap_inserter_sink_first = ethmac_preamble_inserter_source_first;
assign ethmac_tx_gap_inserter_sink_last = ethmac_preamble_inserter_source_last;
assign ethmac_tx_gap_inserter_sink_payload_data = ethmac_preamble_inserter_source_payload_data;
assign ethmac_tx_gap_inserter_sink_payload_last_be = ethmac_preamble_inserter_source_payload_last_be;
assign ethmac_tx_gap_inserter_sink_payload_error = ethmac_preamble_inserter_source_payload_error;
assign ethphy_sink_valid = ethmac_tx_gap_inserter_source_valid;
assign ethmac_tx_gap_inserter_source_ready = ethphy_sink_ready;
assign ethphy_sink_first = ethmac_tx_gap_inserter_source_first;
assign ethphy_sink_last = ethmac_tx_gap_inserter_source_last;
assign ethphy_sink_payload_data = ethmac_tx_gap_inserter_source_payload_data;
assign ethphy_sink_payload_last_be = ethmac_tx_gap_inserter_source_payload_last_be;
assign ethphy_sink_payload_error = ethmac_tx_gap_inserter_source_payload_error;
assign ethmac_preamble_checker_sink_valid = ethphy_source_valid;
assign ethphy_source_ready = ethmac_preamble_checker_sink_ready;
assign ethmac_preamble_checker_sink_first = ethphy_source_first;
assign ethmac_preamble_checker_sink_last = ethphy_source_last;
assign ethmac_preamble_checker_sink_payload_data = ethphy_source_payload_data;
assign ethmac_preamble_checker_sink_payload_last_be = ethphy_source_payload_last_be;
assign ethmac_preamble_checker_sink_payload_error = ethphy_source_payload_error;
assign ethmac_crc32_checker_sink_sink_valid = ethmac_preamble_checker_source_valid;
assign ethmac_preamble_checker_source_ready = ethmac_crc32_checker_sink_sink_ready;
assign ethmac_crc32_checker_sink_sink_first = ethmac_preamble_checker_source_first;
assign ethmac_crc32_checker_sink_sink_last = ethmac_preamble_checker_source_last;
assign ethmac_crc32_checker_sink_sink_payload_data = ethmac_preamble_checker_source_payload_data;
assign ethmac_crc32_checker_sink_sink_payload_last_be = ethmac_preamble_checker_source_payload_last_be;
assign ethmac_crc32_checker_sink_sink_payload_error = ethmac_preamble_checker_source_payload_error;
assign ethmac_padding_checker_sink_valid = ethmac_crc32_checker_source_source_valid;
assign ethmac_crc32_checker_source_source_ready = ethmac_padding_checker_sink_ready;
assign ethmac_padding_checker_sink_first = ethmac_crc32_checker_source_source_first;
assign ethmac_padding_checker_sink_last = ethmac_crc32_checker_source_source_last;
assign ethmac_padding_checker_sink_payload_data = ethmac_crc32_checker_source_source_payload_data;
assign ethmac_padding_checker_sink_payload_last_be = ethmac_crc32_checker_source_source_payload_last_be;
assign ethmac_padding_checker_sink_payload_error = ethmac_crc32_checker_source_source_payload_error;
assign ethmac_rx_last_be_sink_valid = ethmac_padding_checker_source_valid;
assign ethmac_padding_checker_source_ready = ethmac_rx_last_be_sink_ready;
assign ethmac_rx_last_be_sink_first = ethmac_padding_checker_source_first;
assign ethmac_rx_last_be_sink_last = ethmac_padding_checker_source_last;
assign ethmac_rx_last_be_sink_payload_data = ethmac_padding_checker_source_payload_data;
assign ethmac_rx_last_be_sink_payload_last_be = ethmac_padding_checker_source_payload_last_be;
assign ethmac_rx_last_be_sink_payload_error = ethmac_padding_checker_source_payload_error;
assign ethmac_rx_converter_sink_valid = ethmac_rx_last_be_source_valid;
assign ethmac_rx_last_be_source_ready = ethmac_rx_converter_sink_ready;
assign ethmac_rx_converter_sink_first = ethmac_rx_last_be_source_first;
assign ethmac_rx_converter_sink_last = ethmac_rx_last_be_source_last;
assign ethmac_rx_converter_sink_payload_data = ethmac_rx_last_be_source_payload_data;
assign ethmac_rx_converter_sink_payload_last_be = ethmac_rx_last_be_source_payload_last_be;
assign ethmac_rx_converter_sink_payload_error = ethmac_rx_last_be_source_payload_error;
assign ethmac_rx_cdc_sink_valid = ethmac_rx_converter_source_valid;
assign ethmac_rx_converter_source_ready = ethmac_rx_cdc_sink_ready;
assign ethmac_rx_cdc_sink_first = ethmac_rx_converter_source_first;
assign ethmac_rx_cdc_sink_last = ethmac_rx_converter_source_last;
assign ethmac_rx_cdc_sink_payload_data = ethmac_rx_converter_source_payload_data;
assign ethmac_rx_cdc_sink_payload_last_be = ethmac_rx_converter_source_payload_last_be;
assign ethmac_rx_cdc_sink_payload_error = ethmac_rx_converter_source_payload_error;
assign ethmac_writer_sink_sink_valid = ethmac_sink_valid;
assign ethmac_sink_ready = ethmac_writer_sink_sink_ready;
assign ethmac_writer_sink_sink_first = ethmac_sink_first;
assign ethmac_writer_sink_sink_last = ethmac_sink_last;
assign ethmac_writer_sink_sink_payload_data = ethmac_sink_payload_data;
assign ethmac_writer_sink_sink_payload_last_be = ethmac_sink_payload_last_be;
assign ethmac_writer_sink_sink_payload_error = ethmac_sink_payload_error;
assign ethmac_source_valid = ethmac_reader_source_source_valid;
assign ethmac_reader_source_source_ready = ethmac_source_ready;
assign ethmac_source_first = ethmac_reader_source_source_first;
assign ethmac_source_last = ethmac_reader_source_source_last;
assign ethmac_source_payload_data = ethmac_reader_source_source_payload_data;
assign ethmac_source_payload_last_be = ethmac_reader_source_source_payload_last_be;
assign ethmac_source_payload_error = ethmac_reader_source_source_payload_error;
always @(*) begin
	ethmac_writer_inc <= 3'd0;
	case (ethmac_writer_sink_sink_payload_last_be)
		1'd1: begin
			ethmac_writer_inc <= 1'd1;
		end
		2'd2: begin
			ethmac_writer_inc <= 2'd2;
		end
		3'd4: begin
			ethmac_writer_inc <= 2'd3;
		end
		default: begin
			ethmac_writer_inc <= 3'd4;
		end
	endcase
end
assign ethmac_writer_fifo_sink_payload_slot = ethmac_writer_slot;
assign ethmac_writer_fifo_sink_payload_length = ethmac_writer_counter;
assign ethmac_writer_fifo_source_ready = ethmac_writer_available_clear;
assign ethmac_writer_available_trigger = ethmac_writer_fifo_source_valid;
assign ethmac_writer_slot_status = ethmac_writer_fifo_source_payload_slot;
assign ethmac_writer_length_status = ethmac_writer_fifo_source_payload_length;
always @(*) begin
	ethmac_writer_memory0_dat_w <= 32'd0;
	ethmac_writer_memory1_adr <= 9'd0;
	ethmac_writer_memory1_we <= 1'd0;
	ethmac_writer_memory0_adr <= 9'd0;
	ethmac_writer_memory1_dat_w <= 32'd0;
	ethmac_writer_memory0_we <= 1'd0;
	case (ethmac_writer_slot)
		1'd0: begin
			ethmac_writer_memory0_adr <= ethmac_writer_counter[31:2];
			ethmac_writer_memory0_dat_w <= ethmac_writer_sink_sink_payload_data;
			if ((ethmac_writer_sink_sink_valid & ethmac_writer_ongoing)) begin
				ethmac_writer_memory0_we <= 4'd15;
			end
		end
		1'd1: begin
			ethmac_writer_memory1_adr <= ethmac_writer_counter[31:2];
			ethmac_writer_memory1_dat_w <= ethmac_writer_sink_sink_payload_data;
			if ((ethmac_writer_sink_sink_valid & ethmac_writer_ongoing)) begin
				ethmac_writer_memory1_we <= 4'd15;
			end
		end
	endcase
end
assign ethmac_writer_status_w = ethmac_writer_available_status;
always @(*) begin
	ethmac_writer_available_clear <= 1'd0;
	if ((ethmac_writer_pending_re & ethmac_writer_pending_r)) begin
		ethmac_writer_available_clear <= 1'd1;
	end
end
assign ethmac_writer_pending_w = ethmac_writer_available_pending;
assign ethmac_writer_irq = (ethmac_writer_pending_w & ethmac_writer_storage);
assign ethmac_writer_available_status = ethmac_writer_available_trigger;
assign ethmac_writer_available_pending = ethmac_writer_available_trigger;
assign ethmac_writer_fifo_syncfifo_din = {ethmac_writer_fifo_fifo_in_last, ethmac_writer_fifo_fifo_in_first, ethmac_writer_fifo_fifo_in_payload_length, ethmac_writer_fifo_fifo_in_payload_slot};
assign {ethmac_writer_fifo_fifo_out_last, ethmac_writer_fifo_fifo_out_first, ethmac_writer_fifo_fifo_out_payload_length, ethmac_writer_fifo_fifo_out_payload_slot} = ethmac_writer_fifo_syncfifo_dout;
assign ethmac_writer_fifo_sink_ready = ethmac_writer_fifo_syncfifo_writable;
assign ethmac_writer_fifo_syncfifo_we = ethmac_writer_fifo_sink_valid;
assign ethmac_writer_fifo_fifo_in_first = ethmac_writer_fifo_sink_first;
assign ethmac_writer_fifo_fifo_in_last = ethmac_writer_fifo_sink_last;
assign ethmac_writer_fifo_fifo_in_payload_slot = ethmac_writer_fifo_sink_payload_slot;
assign ethmac_writer_fifo_fifo_in_payload_length = ethmac_writer_fifo_sink_payload_length;
assign ethmac_writer_fifo_source_valid = ethmac_writer_fifo_syncfifo_readable;
assign ethmac_writer_fifo_source_first = ethmac_writer_fifo_fifo_out_first;
assign ethmac_writer_fifo_source_last = ethmac_writer_fifo_fifo_out_last;
assign ethmac_writer_fifo_source_payload_slot = ethmac_writer_fifo_fifo_out_payload_slot;
assign ethmac_writer_fifo_source_payload_length = ethmac_writer_fifo_fifo_out_payload_length;
assign ethmac_writer_fifo_syncfifo_re = ethmac_writer_fifo_source_ready;
always @(*) begin
	ethmac_writer_fifo_wrport_adr <= 1'd0;
	if (ethmac_writer_fifo_replace) begin
		ethmac_writer_fifo_wrport_adr <= (ethmac_writer_fifo_produce - 1'd1);
	end else begin
		ethmac_writer_fifo_wrport_adr <= ethmac_writer_fifo_produce;
	end
end
assign ethmac_writer_fifo_wrport_dat_w = ethmac_writer_fifo_syncfifo_din;
assign ethmac_writer_fifo_wrport_we = (ethmac_writer_fifo_syncfifo_we & (ethmac_writer_fifo_syncfifo_writable | ethmac_writer_fifo_replace));
assign ethmac_writer_fifo_do_read = (ethmac_writer_fifo_syncfifo_readable & ethmac_writer_fifo_syncfifo_re);
assign ethmac_writer_fifo_rdport_adr = ethmac_writer_fifo_consume;
assign ethmac_writer_fifo_syncfifo_dout = ethmac_writer_fifo_rdport_dat_r;
assign ethmac_writer_fifo_syncfifo_writable = (ethmac_writer_fifo_level != 2'd2);
assign ethmac_writer_fifo_syncfifo_readable = (ethmac_writer_fifo_level != 1'd0);
always @(*) begin
	ethmac_writer_counter_reset <= 1'd0;
	ethmac_writer_counter_ce <= 1'd0;
	ethmac_writer_slot_ce <= 1'd0;
	ethmac_writer_ongoing <= 1'd0;
	liteethmacsramwriter_next_state <= 3'd0;
	ethmac_writer_fifo_sink_valid <= 1'd0;
	ethmac_writer_errors_status_next_value <= 32'd0;
	ethmac_writer_errors_status_next_value_ce <= 1'd0;
	liteethmacsramwriter_next_state <= liteethmacsramwriter_state;
	case (liteethmacsramwriter_state)
		1'd1: begin
			if (ethmac_writer_sink_sink_valid) begin
				if ((ethmac_writer_counter == 11'd1530)) begin
					liteethmacsramwriter_next_state <= 2'd3;
				end else begin
					ethmac_writer_counter_ce <= 1'd1;
					ethmac_writer_ongoing <= 1'd1;
				end
				if (ethmac_writer_sink_sink_last) begin
					if (((ethmac_writer_sink_sink_payload_error & ethmac_writer_sink_sink_payload_last_be) != 1'd0)) begin
						liteethmacsramwriter_next_state <= 2'd2;
					end else begin
						liteethmacsramwriter_next_state <= 3'd4;
					end
				end
			end
		end
		2'd2: begin
			ethmac_writer_counter_reset <= 1'd1;
			liteethmacsramwriter_next_state <= 1'd0;
		end
		2'd3: begin
			if ((ethmac_writer_sink_sink_valid & ethmac_writer_sink_sink_last)) begin
				liteethmacsramwriter_next_state <= 3'd4;
			end
		end
		3'd4: begin
			ethmac_writer_counter_reset <= 1'd1;
			ethmac_writer_slot_ce <= 1'd1;
			ethmac_writer_fifo_sink_valid <= 1'd1;
			liteethmacsramwriter_next_state <= 1'd0;
		end
		default: begin
			if (ethmac_writer_sink_sink_valid) begin
				if (ethmac_writer_fifo_sink_ready) begin
					ethmac_writer_ongoing <= 1'd1;
					ethmac_writer_counter_ce <= 1'd1;
					liteethmacsramwriter_next_state <= 1'd1;
				end else begin
					ethmac_writer_errors_status_next_value <= (ethmac_writer_errors_status + 1'd1);
					ethmac_writer_errors_status_next_value_ce <= 1'd1;
					liteethmacsramwriter_next_state <= 2'd3;
				end
			end
		end
	endcase
end
assign ethmac_reader_fifo_sink_valid = ethmac_reader_start_re;
assign ethmac_reader_fifo_sink_payload_slot = ethmac_reader_slot_storage;
assign ethmac_reader_fifo_sink_payload_length = ethmac_reader_length_storage;
assign ethmac_reader_ready_status = ethmac_reader_fifo_sink_ready;
assign ethmac_reader_level_status = ethmac_reader_fifo_level;
always @(*) begin
	ethmac_reader_source_source_payload_last_be <= 4'd0;
	if (ethmac_reader_last) begin
		case (ethmac_reader_fifo_source_payload_length[1:0])
			1'd0: begin
				ethmac_reader_source_source_payload_last_be <= 4'd8;
			end
			1'd1: begin
				ethmac_reader_source_source_payload_last_be <= 1'd1;
			end
			2'd2: begin
				ethmac_reader_source_source_payload_last_be <= 2'd2;
			end
			2'd3: begin
				ethmac_reader_source_source_payload_last_be <= 3'd4;
			end
		endcase
	end
end
assign ethmac_reader_last = ((ethmac_reader_counter + 3'd4) >= ethmac_reader_fifo_source_payload_length);
assign ethmac_reader_memory0_adr = ethmac_reader_counter[10:2];
assign ethmac_reader_memory1_adr = ethmac_reader_counter[10:2];
always @(*) begin
	ethmac_reader_source_source_payload_data <= 32'd0;
	case (ethmac_reader_fifo_source_payload_slot)
		1'd0: begin
			ethmac_reader_source_source_payload_data <= ethmac_reader_memory0_dat_r;
		end
		1'd1: begin
			ethmac_reader_source_source_payload_data <= ethmac_reader_memory1_dat_r;
		end
	endcase
end
assign ethmac_reader_eventmanager_status_w = ethmac_reader_done_status;
always @(*) begin
	ethmac_reader_done_clear <= 1'd0;
	if ((ethmac_reader_eventmanager_pending_re & ethmac_reader_eventmanager_pending_r)) begin
		ethmac_reader_done_clear <= 1'd1;
	end
end
assign ethmac_reader_eventmanager_pending_w = ethmac_reader_done_pending;
assign ethmac_reader_irq = (ethmac_reader_eventmanager_pending_w & ethmac_reader_eventmanager_storage);
assign ethmac_reader_done_status = 1'd0;
assign ethmac_reader_fifo_syncfifo_din = {ethmac_reader_fifo_fifo_in_last, ethmac_reader_fifo_fifo_in_first, ethmac_reader_fifo_fifo_in_payload_length, ethmac_reader_fifo_fifo_in_payload_slot};
assign {ethmac_reader_fifo_fifo_out_last, ethmac_reader_fifo_fifo_out_first, ethmac_reader_fifo_fifo_out_payload_length, ethmac_reader_fifo_fifo_out_payload_slot} = ethmac_reader_fifo_syncfifo_dout;
assign ethmac_reader_fifo_sink_ready = ethmac_reader_fifo_syncfifo_writable;
assign ethmac_reader_fifo_syncfifo_we = ethmac_reader_fifo_sink_valid;
assign ethmac_reader_fifo_fifo_in_first = ethmac_reader_fifo_sink_first;
assign ethmac_reader_fifo_fifo_in_last = ethmac_reader_fifo_sink_last;
assign ethmac_reader_fifo_fifo_in_payload_slot = ethmac_reader_fifo_sink_payload_slot;
assign ethmac_reader_fifo_fifo_in_payload_length = ethmac_reader_fifo_sink_payload_length;
assign ethmac_reader_fifo_source_valid = ethmac_reader_fifo_syncfifo_readable;
assign ethmac_reader_fifo_source_first = ethmac_reader_fifo_fifo_out_first;
assign ethmac_reader_fifo_source_last = ethmac_reader_fifo_fifo_out_last;
assign ethmac_reader_fifo_source_payload_slot = ethmac_reader_fifo_fifo_out_payload_slot;
assign ethmac_reader_fifo_source_payload_length = ethmac_reader_fifo_fifo_out_payload_length;
assign ethmac_reader_fifo_syncfifo_re = ethmac_reader_fifo_source_ready;
always @(*) begin
	ethmac_reader_fifo_wrport_adr <= 1'd0;
	if (ethmac_reader_fifo_replace) begin
		ethmac_reader_fifo_wrport_adr <= (ethmac_reader_fifo_produce - 1'd1);
	end else begin
		ethmac_reader_fifo_wrport_adr <= ethmac_reader_fifo_produce;
	end
end
assign ethmac_reader_fifo_wrport_dat_w = ethmac_reader_fifo_syncfifo_din;
assign ethmac_reader_fifo_wrport_we = (ethmac_reader_fifo_syncfifo_we & (ethmac_reader_fifo_syncfifo_writable | ethmac_reader_fifo_replace));
assign ethmac_reader_fifo_do_read = (ethmac_reader_fifo_syncfifo_readable & ethmac_reader_fifo_syncfifo_re);
assign ethmac_reader_fifo_rdport_adr = ethmac_reader_fifo_consume;
assign ethmac_reader_fifo_syncfifo_dout = ethmac_reader_fifo_rdport_dat_r;
assign ethmac_reader_fifo_syncfifo_writable = (ethmac_reader_fifo_level != 2'd2);
assign ethmac_reader_fifo_syncfifo_readable = (ethmac_reader_fifo_level != 1'd0);
always @(*) begin
	liteethmacsramreader_next_state <= 2'd0;
	ethmac_reader_done_trigger <= 1'd0;
	ethmac_reader_source_source_valid <= 1'd0;
	ethmac_reader_counter_reset <= 1'd0;
	ethmac_reader_counter_ce <= 1'd0;
	ethmac_reader_fifo_source_ready <= 1'd0;
	ethmac_reader_source_source_last <= 1'd0;
	liteethmacsramreader_next_state <= liteethmacsramreader_state;
	case (liteethmacsramreader_state)
		1'd1: begin
			if ((~ethmac_reader_last_d)) begin
				liteethmacsramreader_next_state <= 2'd2;
			end else begin
				liteethmacsramreader_next_state <= 2'd3;
			end
		end
		2'd2: begin
			ethmac_reader_source_source_valid <= 1'd1;
			ethmac_reader_source_source_last <= ethmac_reader_last;
			if (ethmac_reader_source_source_ready) begin
				ethmac_reader_counter_ce <= (~ethmac_reader_last);
				liteethmacsramreader_next_state <= 1'd1;
			end
		end
		2'd3: begin
			ethmac_reader_fifo_source_ready <= 1'd1;
			ethmac_reader_done_trigger <= 1'd1;
			liteethmacsramreader_next_state <= 1'd0;
		end
		default: begin
			ethmac_reader_counter_reset <= 1'd1;
			if (ethmac_reader_fifo_source_valid) begin
				liteethmacsramreader_next_state <= 1'd1;
			end
		end
	endcase
end
assign ethmac_ev_irq = (ethmac_writer_irq | ethmac_reader_irq);
assign ethmac_sram0_adr0 = ethmac_sram0_bus_adr0[8:0];
assign ethmac_sram0_bus_dat_r0 = ethmac_sram0_dat_r0;
assign ethmac_sram1_adr0 = ethmac_sram1_bus_adr0[8:0];
assign ethmac_sram1_bus_dat_r0 = ethmac_sram1_dat_r0;
always @(*) begin
	ethmac_sram0_we <= 4'd0;
	ethmac_sram0_we[0] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[0]);
	ethmac_sram0_we[1] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[1]);
	ethmac_sram0_we[2] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[2]);
	ethmac_sram0_we[3] <= (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & ethmac_sram0_bus_we1) & ethmac_sram0_bus_sel1[3]);
end
assign ethmac_sram0_adr1 = ethmac_sram0_bus_adr1[8:0];
assign ethmac_sram0_bus_dat_r1 = ethmac_sram0_dat_r1;
assign ethmac_sram0_dat_w = ethmac_sram0_bus_dat_w1;
always @(*) begin
	ethmac_sram1_we <= 4'd0;
	ethmac_sram1_we[0] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[0]);
	ethmac_sram1_we[1] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[1]);
	ethmac_sram1_we[2] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[2]);
	ethmac_sram1_we[3] <= (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & ethmac_sram1_bus_we1) & ethmac_sram1_bus_sel1[3]);
end
assign ethmac_sram1_adr1 = ethmac_sram1_bus_adr1[8:0];
assign ethmac_sram1_bus_dat_r1 = ethmac_sram1_dat_r1;
assign ethmac_sram1_dat_w = ethmac_sram1_bus_dat_w1;
always @(*) begin
	ethmac_slave_sel <= 4'd0;
	ethmac_slave_sel[0] <= (ethmac_bus_adr[10:9] == 1'd0);
	ethmac_slave_sel[1] <= (ethmac_bus_adr[10:9] == 1'd1);
	ethmac_slave_sel[2] <= (ethmac_bus_adr[10:9] == 2'd2);
	ethmac_slave_sel[3] <= (ethmac_bus_adr[10:9] == 2'd3);
end
assign ethmac_sram0_bus_adr0 = ethmac_bus_adr;
assign ethmac_sram0_bus_dat_w0 = ethmac_bus_dat_w;
assign ethmac_sram0_bus_sel0 = ethmac_bus_sel;
assign ethmac_sram0_bus_stb0 = ethmac_bus_stb;
assign ethmac_sram0_bus_we0 = ethmac_bus_we;
assign ethmac_sram0_bus_cti0 = ethmac_bus_cti;
assign ethmac_sram0_bus_bte0 = ethmac_bus_bte;
assign ethmac_sram1_bus_adr0 = ethmac_bus_adr;
assign ethmac_sram1_bus_dat_w0 = ethmac_bus_dat_w;
assign ethmac_sram1_bus_sel0 = ethmac_bus_sel;
assign ethmac_sram1_bus_stb0 = ethmac_bus_stb;
assign ethmac_sram1_bus_we0 = ethmac_bus_we;
assign ethmac_sram1_bus_cti0 = ethmac_bus_cti;
assign ethmac_sram1_bus_bte0 = ethmac_bus_bte;
assign ethmac_sram0_bus_adr1 = ethmac_bus_adr;
assign ethmac_sram0_bus_dat_w1 = ethmac_bus_dat_w;
assign ethmac_sram0_bus_sel1 = ethmac_bus_sel;
assign ethmac_sram0_bus_stb1 = ethmac_bus_stb;
assign ethmac_sram0_bus_we1 = ethmac_bus_we;
assign ethmac_sram0_bus_cti1 = ethmac_bus_cti;
assign ethmac_sram0_bus_bte1 = ethmac_bus_bte;
assign ethmac_sram1_bus_adr1 = ethmac_bus_adr;
assign ethmac_sram1_bus_dat_w1 = ethmac_bus_dat_w;
assign ethmac_sram1_bus_sel1 = ethmac_bus_sel;
assign ethmac_sram1_bus_stb1 = ethmac_bus_stb;
assign ethmac_sram1_bus_we1 = ethmac_bus_we;
assign ethmac_sram1_bus_cti1 = ethmac_bus_cti;
assign ethmac_sram1_bus_bte1 = ethmac_bus_bte;
assign ethmac_sram0_bus_cyc0 = (ethmac_bus_cyc & ethmac_slave_sel[0]);
assign ethmac_sram1_bus_cyc0 = (ethmac_bus_cyc & ethmac_slave_sel[1]);
assign ethmac_sram0_bus_cyc1 = (ethmac_bus_cyc & ethmac_slave_sel[2]);
assign ethmac_sram1_bus_cyc1 = (ethmac_bus_cyc & ethmac_slave_sel[3]);
assign ethmac_bus_ack = (((ethmac_sram0_bus_ack0 | ethmac_sram1_bus_ack0) | ethmac_sram0_bus_ack1) | ethmac_sram1_bus_ack1);
assign ethmac_bus_err = (((ethmac_sram0_bus_err0 | ethmac_sram1_bus_err0) | ethmac_sram0_bus_err1) | ethmac_sram1_bus_err1);
assign ethmac_bus_dat_r = (((({32{ethmac_slave_sel_r[0]}} & ethmac_sram0_bus_dat_r0) | ({32{ethmac_slave_sel_r[1]}} & ethmac_sram1_bus_dat_r0)) | ({32{ethmac_slave_sel_r[2]}} & ethmac_sram0_bus_dat_r1)) | ({32{ethmac_slave_sel_r[3]}} & ethmac_sram1_bus_dat_r1));
assign ice_gpo = ice_gpo_storage;
assign maxusb_o = max_spi_o_storage;
assign max_spi_irq_trigger = (~maxusb_irq);
assign max_spi_irq_status_w = max_spi_irq_status;
always @(*) begin
	max_spi_irq_clear <= 1'd0;
	if ((max_spi_irq_pending_re & max_spi_irq_pending_r)) begin
		max_spi_irq_clear <= 1'd1;
	end
end
assign max_spi_irq_pending_w = max_spi_irq_pending;
assign max_spi_irq_irq = (max_spi_irq_pending_w & max_spi_irq_storage);
assign max_spi_irq_status = max_spi_irq_trigger;
assign max_spi_irq_pending = max_spi_irq_trigger;
assign ethernetsoc_interface0_wb_sdram_adr = rhs_array_muxed36;
assign ethernetsoc_interface0_wb_sdram_dat_w = rhs_array_muxed37;
assign ethernetsoc_interface0_wb_sdram_sel = rhs_array_muxed38;
assign ethernetsoc_interface0_wb_sdram_cyc = rhs_array_muxed39;
assign ethernetsoc_interface0_wb_sdram_stb = rhs_array_muxed40;
assign ethernetsoc_interface0_wb_sdram_we = rhs_array_muxed41;
assign ethernetsoc_interface0_wb_sdram_cti = rhs_array_muxed42;
assign ethernetsoc_interface0_wb_sdram_bte = rhs_array_muxed43;
assign ethernetsoc_interface1_wb_sdram_dat_r = ethernetsoc_interface0_wb_sdram_dat_r;
assign ethernetsoc_interface1_wb_sdram_ack = (ethernetsoc_interface0_wb_sdram_ack & (wb_sdram_con_grant == 1'd0));
assign ethernetsoc_interface1_wb_sdram_err = (ethernetsoc_interface0_wb_sdram_err & (wb_sdram_con_grant == 1'd0));
assign wb_sdram_con_request = {ethernetsoc_interface1_wb_sdram_cyc};
assign wb_sdram_con_grant = 1'd0;
assign ethernetsoc_shared_adr = rhs_array_muxed44;
assign ethernetsoc_shared_dat_w = rhs_array_muxed45;
assign ethernetsoc_shared_sel = rhs_array_muxed46;
assign ethernetsoc_shared_cyc = rhs_array_muxed47;
assign ethernetsoc_shared_stb = rhs_array_muxed48;
assign ethernetsoc_shared_we = rhs_array_muxed49;
assign ethernetsoc_shared_cti = rhs_array_muxed50;
assign ethernetsoc_shared_bte = rhs_array_muxed51;
assign ethernetsoc_vexriscv_ibus_dat_r = ethernetsoc_shared_dat_r;
assign ethernetsoc_vexriscv_dbus_dat_r = ethernetsoc_shared_dat_r;
assign ethernetsoc_vexriscv_ibus_ack = (ethernetsoc_shared_ack & (ethernetsoc_grant == 1'd0));
assign ethernetsoc_vexriscv_dbus_ack = (ethernetsoc_shared_ack & (ethernetsoc_grant == 1'd1));
always @(*) begin
	ethernetsoc_vexriscv_ibus_err <= 1'd0;
	ethernetsoc_vexriscv_ibus_err <= ethernetsoc_vexriscv_i_err;
	ethernetsoc_vexriscv_ibus_err <= (ethernetsoc_shared_err & (ethernetsoc_grant == 1'd0));
end
always @(*) begin
	ethernetsoc_vexriscv_dbus_err <= 1'd0;
	ethernetsoc_vexriscv_dbus_err <= ethernetsoc_vexriscv_d_err;
	ethernetsoc_vexriscv_dbus_err <= (ethernetsoc_shared_err & (ethernetsoc_grant == 1'd1));
end
assign ethernetsoc_request = {ethernetsoc_vexriscv_dbus_cyc, ethernetsoc_vexriscv_ibus_cyc};
always @(*) begin
	ethernetsoc_slave_sel <= 5'd0;
	ethernetsoc_slave_sel[0] <= (ethernetsoc_shared_adr[28:26] == 1'd0);
	ethernetsoc_slave_sel[1] <= (ethernetsoc_shared_adr[28:26] == 1'd1);
	ethernetsoc_slave_sel[2] <= (ethernetsoc_shared_adr[28:26] == 3'd6);
	ethernetsoc_slave_sel[3] <= (ethernetsoc_shared_adr[28:26] == 3'd4);
	ethernetsoc_slave_sel[4] <= (ethernetsoc_shared_adr[28:26] == 3'd5);
end
assign ethernetsoc_rom_bus_adr = ethernetsoc_shared_adr;
assign ethernetsoc_rom_bus_dat_w = ethernetsoc_shared_dat_w;
assign ethernetsoc_rom_bus_sel = ethernetsoc_shared_sel;
assign ethernetsoc_rom_bus_stb = ethernetsoc_shared_stb;
assign ethernetsoc_rom_bus_we = ethernetsoc_shared_we;
assign ethernetsoc_rom_bus_cti = ethernetsoc_shared_cti;
assign ethernetsoc_rom_bus_bte = ethernetsoc_shared_bte;
assign ethernetsoc_sram_bus_adr = ethernetsoc_shared_adr;
assign ethernetsoc_sram_bus_dat_w = ethernetsoc_shared_dat_w;
assign ethernetsoc_sram_bus_sel = ethernetsoc_shared_sel;
assign ethernetsoc_sram_bus_stb = ethernetsoc_shared_stb;
assign ethernetsoc_sram_bus_we = ethernetsoc_shared_we;
assign ethernetsoc_sram_bus_cti = ethernetsoc_shared_cti;
assign ethernetsoc_sram_bus_bte = ethernetsoc_shared_bte;
assign ethernetsoc_bus_wishbone_adr = ethernetsoc_shared_adr;
assign ethernetsoc_bus_wishbone_dat_w = ethernetsoc_shared_dat_w;
assign ethernetsoc_bus_wishbone_sel = ethernetsoc_shared_sel;
assign ethernetsoc_bus_wishbone_stb = ethernetsoc_shared_stb;
assign ethernetsoc_bus_wishbone_we = ethernetsoc_shared_we;
assign ethernetsoc_bus_wishbone_cti = ethernetsoc_shared_cti;
assign ethernetsoc_bus_wishbone_bte = ethernetsoc_shared_bte;
assign ethernetsoc_interface1_wb_sdram_adr = ethernetsoc_shared_adr;
assign ethernetsoc_interface1_wb_sdram_dat_w = ethernetsoc_shared_dat_w;
assign ethernetsoc_interface1_wb_sdram_sel = ethernetsoc_shared_sel;
assign ethernetsoc_interface1_wb_sdram_stb = ethernetsoc_shared_stb;
assign ethernetsoc_interface1_wb_sdram_we = ethernetsoc_shared_we;
assign ethernetsoc_interface1_wb_sdram_cti = ethernetsoc_shared_cti;
assign ethernetsoc_interface1_wb_sdram_bte = ethernetsoc_shared_bte;
assign ethmac_bus_adr = ethernetsoc_shared_adr;
assign ethmac_bus_dat_w = ethernetsoc_shared_dat_w;
assign ethmac_bus_sel = ethernetsoc_shared_sel;
assign ethmac_bus_stb = ethernetsoc_shared_stb;
assign ethmac_bus_we = ethernetsoc_shared_we;
assign ethmac_bus_cti = ethernetsoc_shared_cti;
assign ethmac_bus_bte = ethernetsoc_shared_bte;
assign ethernetsoc_rom_bus_cyc = (ethernetsoc_shared_cyc & ethernetsoc_slave_sel[0]);
assign ethernetsoc_sram_bus_cyc = (ethernetsoc_shared_cyc & ethernetsoc_slave_sel[1]);
assign ethernetsoc_bus_wishbone_cyc = (ethernetsoc_shared_cyc & ethernetsoc_slave_sel[2]);
assign ethernetsoc_interface1_wb_sdram_cyc = (ethernetsoc_shared_cyc & ethernetsoc_slave_sel[3]);
assign ethmac_bus_cyc = (ethernetsoc_shared_cyc & ethernetsoc_slave_sel[4]);
assign ethernetsoc_shared_err = ((((ethernetsoc_rom_bus_err | ethernetsoc_sram_bus_err) | ethernetsoc_bus_wishbone_err) | ethernetsoc_interface1_wb_sdram_err) | ethmac_bus_err);
assign ethernetsoc_wait = ((ethernetsoc_shared_stb & ethernetsoc_shared_cyc) & (~ethernetsoc_shared_ack));
always @(*) begin
	ethernetsoc_error <= 1'd0;
	ethernetsoc_shared_ack <= 1'd0;
	ethernetsoc_shared_dat_r <= 32'd0;
	ethernetsoc_shared_ack <= ((((ethernetsoc_rom_bus_ack | ethernetsoc_sram_bus_ack) | ethernetsoc_bus_wishbone_ack) | ethernetsoc_interface1_wb_sdram_ack) | ethmac_bus_ack);
	ethernetsoc_shared_dat_r <= ((((({32{ethernetsoc_slave_sel_r[0]}} & ethernetsoc_rom_bus_dat_r) | ({32{ethernetsoc_slave_sel_r[1]}} & ethernetsoc_sram_bus_dat_r)) | ({32{ethernetsoc_slave_sel_r[2]}} & ethernetsoc_bus_wishbone_dat_r)) | ({32{ethernetsoc_slave_sel_r[3]}} & ethernetsoc_interface1_wb_sdram_dat_r)) | ({32{ethernetsoc_slave_sel_r[4]}} & ethmac_bus_dat_r));
	if (ethernetsoc_done) begin
		ethernetsoc_shared_dat_r <= 32'd4294967295;
		ethernetsoc_shared_ack <= 1'd1;
		ethernetsoc_error <= 1'd1;
	end
end
assign ethernetsoc_done = (ethernetsoc_count == 1'd0);
assign ethernetsoc_csrbank0_sel = (ethernetsoc_interface0_bank_bus_adr[13:9] == 1'd0);
assign ethernetsoc_ctrl_reset_reset_r = ethernetsoc_interface0_bank_bus_dat_w[0];
assign ethernetsoc_ctrl_reset_reset_re = ((ethernetsoc_csrbank0_sel & ethernetsoc_interface0_bank_bus_we) & (ethernetsoc_interface0_bank_bus_adr[3:0] == 1'd0));
assign ethernetsoc_csrbank0_scratch3_r = ethernetsoc_interface0_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank0_scratch3_re = ((ethernetsoc_csrbank0_sel & ethernetsoc_interface0_bank_bus_we) & (ethernetsoc_interface0_bank_bus_adr[3:0] == 1'd1));
assign ethernetsoc_csrbank0_scratch2_r = ethernetsoc_interface0_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank0_scratch2_re = ((ethernetsoc_csrbank0_sel & ethernetsoc_interface0_bank_bus_we) & (ethernetsoc_interface0_bank_bus_adr[3:0] == 2'd2));
assign ethernetsoc_csrbank0_scratch1_r = ethernetsoc_interface0_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank0_scratch1_re = ((ethernetsoc_csrbank0_sel & ethernetsoc_interface0_bank_bus_we) & (ethernetsoc_interface0_bank_bus_adr[3:0] == 2'd3));
assign ethernetsoc_csrbank0_scratch0_r = ethernetsoc_interface0_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank0_scratch0_re = ((ethernetsoc_csrbank0_sel & ethernetsoc_interface0_bank_bus_we) & (ethernetsoc_interface0_bank_bus_adr[3:0] == 3'd4));
assign ethernetsoc_csrbank0_bus_errors3_r = ethernetsoc_interface0_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank0_bus_errors3_re = ((ethernetsoc_csrbank0_sel & ethernetsoc_interface0_bank_bus_we) & (ethernetsoc_interface0_bank_bus_adr[3:0] == 3'd5));
assign ethernetsoc_csrbank0_bus_errors2_r = ethernetsoc_interface0_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank0_bus_errors2_re = ((ethernetsoc_csrbank0_sel & ethernetsoc_interface0_bank_bus_we) & (ethernetsoc_interface0_bank_bus_adr[3:0] == 3'd6));
assign ethernetsoc_csrbank0_bus_errors1_r = ethernetsoc_interface0_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank0_bus_errors1_re = ((ethernetsoc_csrbank0_sel & ethernetsoc_interface0_bank_bus_we) & (ethernetsoc_interface0_bank_bus_adr[3:0] == 3'd7));
assign ethernetsoc_csrbank0_bus_errors0_r = ethernetsoc_interface0_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank0_bus_errors0_re = ((ethernetsoc_csrbank0_sel & ethernetsoc_interface0_bank_bus_we) & (ethernetsoc_interface0_bank_bus_adr[3:0] == 4'd8));
assign ethernetsoc_ctrl_storage = ethernetsoc_ctrl_storage_full[31:0];
assign ethernetsoc_csrbank0_scratch3_w = ethernetsoc_ctrl_storage_full[31:24];
assign ethernetsoc_csrbank0_scratch2_w = ethernetsoc_ctrl_storage_full[23:16];
assign ethernetsoc_csrbank0_scratch1_w = ethernetsoc_ctrl_storage_full[15:8];
assign ethernetsoc_csrbank0_scratch0_w = ethernetsoc_ctrl_storage_full[7:0];
assign ethernetsoc_csrbank0_bus_errors3_w = ethernetsoc_ctrl_bus_errors_status[31:24];
assign ethernetsoc_csrbank0_bus_errors2_w = ethernetsoc_ctrl_bus_errors_status[23:16];
assign ethernetsoc_csrbank0_bus_errors1_w = ethernetsoc_ctrl_bus_errors_status[15:8];
assign ethernetsoc_csrbank0_bus_errors0_w = ethernetsoc_ctrl_bus_errors_status[7:0];
assign ethernetsoc_csrbank1_sel = (ethernetsoc_interface1_bank_bus_adr[13:9] == 5'd16);
assign ethernetsoc_csrbank1_dly_sel0_r = ethernetsoc_interface1_bank_bus_dat_w[1:0];
assign ethernetsoc_csrbank1_dly_sel0_re = ((ethernetsoc_csrbank1_sel & ethernetsoc_interface1_bank_bus_we) & (ethernetsoc_interface1_bank_bus_adr[2:0] == 1'd0));
assign ethernetsoc_ecp5ddrphy_rdly_dq_rst_r = ethernetsoc_interface1_bank_bus_dat_w[0];
assign ethernetsoc_ecp5ddrphy_rdly_dq_rst_re = ((ethernetsoc_csrbank1_sel & ethernetsoc_interface1_bank_bus_we) & (ethernetsoc_interface1_bank_bus_adr[2:0] == 1'd1));
assign ethernetsoc_ecp5ddrphy_rdly_dq_inc_r = ethernetsoc_interface1_bank_bus_dat_w[0];
assign ethernetsoc_ecp5ddrphy_rdly_dq_inc_re = ((ethernetsoc_csrbank1_sel & ethernetsoc_interface1_bank_bus_we) & (ethernetsoc_interface1_bank_bus_adr[2:0] == 2'd2));
assign ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_r = ethernetsoc_interface1_bank_bus_dat_w[0];
assign ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re = ((ethernetsoc_csrbank1_sel & ethernetsoc_interface1_bank_bus_we) & (ethernetsoc_interface1_bank_bus_adr[2:0] == 2'd3));
assign ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_r = ethernetsoc_interface1_bank_bus_dat_w[0];
assign ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re = ((ethernetsoc_csrbank1_sel & ethernetsoc_interface1_bank_bus_we) & (ethernetsoc_interface1_bank_bus_adr[2:0] == 3'd4));
assign ethernetsoc_ecp5ddrphy_burstdet_clr_r = ethernetsoc_interface1_bank_bus_dat_w[0];
assign ethernetsoc_ecp5ddrphy_burstdet_clr_re = ((ethernetsoc_csrbank1_sel & ethernetsoc_interface1_bank_bus_we) & (ethernetsoc_interface1_bank_bus_adr[2:0] == 3'd5));
assign ethernetsoc_csrbank1_burstdet_seen_r = ethernetsoc_interface1_bank_bus_dat_w[1:0];
assign ethernetsoc_csrbank1_burstdet_seen_re = ((ethernetsoc_csrbank1_sel & ethernetsoc_interface1_bank_bus_we) & (ethernetsoc_interface1_bank_bus_adr[2:0] == 3'd6));
assign ethernetsoc_ecp5ddrphy_storage = ethernetsoc_ecp5ddrphy_storage_full[1:0];
assign ethernetsoc_csrbank1_dly_sel0_w = ethernetsoc_ecp5ddrphy_storage_full[1:0];
assign ethernetsoc_csrbank1_burstdet_seen_w = ethernetsoc_ecp5ddrphy_status[1:0];
assign ethernetsoc_csrbank2_sel = (ethernetsoc_interface2_bank_bus_adr[13:9] == 5'd19);
assign ethernetsoc_csrbank2_sram_writer_slot_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethernetsoc_csrbank2_sram_writer_slot_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 1'd0));
assign ethernetsoc_csrbank2_sram_writer_length3_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_sram_writer_length3_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 1'd1));
assign ethernetsoc_csrbank2_sram_writer_length2_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_sram_writer_length2_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 2'd2));
assign ethernetsoc_csrbank2_sram_writer_length1_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_sram_writer_length1_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 2'd3));
assign ethernetsoc_csrbank2_sram_writer_length0_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_sram_writer_length0_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 3'd4));
assign ethernetsoc_csrbank2_sram_writer_errors3_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_sram_writer_errors3_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 3'd5));
assign ethernetsoc_csrbank2_sram_writer_errors2_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_sram_writer_errors2_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 3'd6));
assign ethernetsoc_csrbank2_sram_writer_errors1_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_sram_writer_errors1_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 3'd7));
assign ethernetsoc_csrbank2_sram_writer_errors0_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_sram_writer_errors0_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 4'd8));
assign ethmac_writer_status_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethmac_writer_status_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 4'd9));
assign ethmac_writer_pending_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethmac_writer_pending_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 4'd10));
assign ethernetsoc_csrbank2_sram_writer_ev_enable0_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethernetsoc_csrbank2_sram_writer_ev_enable0_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 4'd11));
assign ethmac_reader_start_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethmac_reader_start_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 4'd12));
assign ethernetsoc_csrbank2_sram_reader_ready_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethernetsoc_csrbank2_sram_reader_ready_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 4'd13));
assign ethernetsoc_csrbank2_sram_reader_level_r = ethernetsoc_interface2_bank_bus_dat_w[1:0];
assign ethernetsoc_csrbank2_sram_reader_level_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 4'd14));
assign ethernetsoc_csrbank2_sram_reader_slot0_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethernetsoc_csrbank2_sram_reader_slot0_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 4'd15));
assign ethernetsoc_csrbank2_sram_reader_length1_r = ethernetsoc_interface2_bank_bus_dat_w[2:0];
assign ethernetsoc_csrbank2_sram_reader_length1_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd16));
assign ethernetsoc_csrbank2_sram_reader_length0_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_sram_reader_length0_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd17));
assign ethmac_reader_eventmanager_status_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethmac_reader_eventmanager_status_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd18));
assign ethmac_reader_eventmanager_pending_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethmac_reader_eventmanager_pending_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd19));
assign ethernetsoc_csrbank2_sram_reader_ev_enable0_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethernetsoc_csrbank2_sram_reader_ev_enable0_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd20));
assign ethernetsoc_csrbank2_preamble_crc_r = ethernetsoc_interface2_bank_bus_dat_w[0];
assign ethernetsoc_csrbank2_preamble_crc_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd21));
assign ethernetsoc_csrbank2_preamble_errors3_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_preamble_errors3_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd22));
assign ethernetsoc_csrbank2_preamble_errors2_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_preamble_errors2_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd23));
assign ethernetsoc_csrbank2_preamble_errors1_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_preamble_errors1_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd24));
assign ethernetsoc_csrbank2_preamble_errors0_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_preamble_errors0_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd25));
assign ethernetsoc_csrbank2_crc_errors3_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_crc_errors3_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd26));
assign ethernetsoc_csrbank2_crc_errors2_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_crc_errors2_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd27));
assign ethernetsoc_csrbank2_crc_errors1_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_crc_errors1_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd28));
assign ethernetsoc_csrbank2_crc_errors0_r = ethernetsoc_interface2_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank2_crc_errors0_re = ((ethernetsoc_csrbank2_sel & ethernetsoc_interface2_bank_bus_we) & (ethernetsoc_interface2_bank_bus_adr[4:0] == 5'd29));
assign ethernetsoc_csrbank2_sram_writer_slot_w = ethmac_writer_slot_status;
assign ethernetsoc_csrbank2_sram_writer_length3_w = ethmac_writer_length_status[31:24];
assign ethernetsoc_csrbank2_sram_writer_length2_w = ethmac_writer_length_status[23:16];
assign ethernetsoc_csrbank2_sram_writer_length1_w = ethmac_writer_length_status[15:8];
assign ethernetsoc_csrbank2_sram_writer_length0_w = ethmac_writer_length_status[7:0];
assign ethernetsoc_csrbank2_sram_writer_errors3_w = ethmac_writer_errors_status[31:24];
assign ethernetsoc_csrbank2_sram_writer_errors2_w = ethmac_writer_errors_status[23:16];
assign ethernetsoc_csrbank2_sram_writer_errors1_w = ethmac_writer_errors_status[15:8];
assign ethernetsoc_csrbank2_sram_writer_errors0_w = ethmac_writer_errors_status[7:0];
assign ethmac_writer_storage = ethmac_writer_storage_full;
assign ethernetsoc_csrbank2_sram_writer_ev_enable0_w = ethmac_writer_storage_full;
assign ethernetsoc_csrbank2_sram_reader_ready_w = ethmac_reader_ready_status;
assign ethernetsoc_csrbank2_sram_reader_level_w = ethmac_reader_level_status[1:0];
assign ethmac_reader_slot_storage = ethmac_reader_slot_storage_full;
assign ethernetsoc_csrbank2_sram_reader_slot0_w = ethmac_reader_slot_storage_full;
assign ethmac_reader_length_storage = ethmac_reader_length_storage_full[10:0];
assign ethernetsoc_csrbank2_sram_reader_length1_w = ethmac_reader_length_storage_full[10:8];
assign ethernetsoc_csrbank2_sram_reader_length0_w = ethmac_reader_length_storage_full[7:0];
assign ethmac_reader_eventmanager_storage = ethmac_reader_eventmanager_storage_full;
assign ethernetsoc_csrbank2_sram_reader_ev_enable0_w = ethmac_reader_eventmanager_storage_full;
assign ethernetsoc_csrbank2_preamble_crc_w = ethmac_preamble_crc_status;
assign ethernetsoc_csrbank2_preamble_errors3_w = ethmac_preamble_errors_status[31:24];
assign ethernetsoc_csrbank2_preamble_errors2_w = ethmac_preamble_errors_status[23:16];
assign ethernetsoc_csrbank2_preamble_errors1_w = ethmac_preamble_errors_status[15:8];
assign ethernetsoc_csrbank2_preamble_errors0_w = ethmac_preamble_errors_status[7:0];
assign ethernetsoc_csrbank2_crc_errors3_w = ethmac_crc_errors_status[31:24];
assign ethernetsoc_csrbank2_crc_errors2_w = ethmac_crc_errors_status[23:16];
assign ethernetsoc_csrbank2_crc_errors1_w = ethmac_crc_errors_status[15:8];
assign ethernetsoc_csrbank2_crc_errors0_w = ethmac_crc_errors_status[7:0];
assign ethernetsoc_csrbank3_sel = (ethernetsoc_interface3_bank_bus_adr[13:9] == 5'd18);
assign ethernetsoc_csrbank3_crg_reset0_r = ethernetsoc_interface3_bank_bus_dat_w[0];
assign ethernetsoc_csrbank3_crg_reset0_re = ((ethernetsoc_csrbank3_sel & ethernetsoc_interface3_bank_bus_we) & (ethernetsoc_interface3_bank_bus_adr[1:0] == 1'd0));
assign ethernetsoc_csrbank3_mdio_w0_r = ethernetsoc_interface3_bank_bus_dat_w[2:0];
assign ethernetsoc_csrbank3_mdio_w0_re = ((ethernetsoc_csrbank3_sel & ethernetsoc_interface3_bank_bus_we) & (ethernetsoc_interface3_bank_bus_adr[1:0] == 1'd1));
assign ethernetsoc_csrbank3_mdio_r_r = ethernetsoc_interface3_bank_bus_dat_w[0];
assign ethernetsoc_csrbank3_mdio_r_re = ((ethernetsoc_csrbank3_sel & ethernetsoc_interface3_bank_bus_we) & (ethernetsoc_interface3_bank_bus_adr[1:0] == 2'd2));
assign ethphy_reset_storage = ethphy_reset_storage_full;
assign ethernetsoc_csrbank3_crg_reset0_w = ethphy_reset_storage_full;
assign ethphy_storage = ethphy_storage_full[2:0];
assign ethernetsoc_csrbank3_mdio_w0_w = ethphy_storage_full[2:0];
assign ethernetsoc_csrbank3_mdio_r_w = ethphy_status;
assign ethernetsoc_csrbank4_sel = (ethernetsoc_interface4_bank_bus_adr[13:9] == 5'd30);
assign ethernetsoc_csrbank4_out0_r = ethernetsoc_interface4_bank_bus_dat_w[3:0];
assign ethernetsoc_csrbank4_out0_re = ((ethernetsoc_csrbank4_sel & ethernetsoc_interface4_bank_bus_we) & (ethernetsoc_interface4_bank_bus_adr[0] == 1'd0));
assign ice_gpo_storage = ice_gpo_storage_full[3:0];
assign ethernetsoc_csrbank4_out0_w = ice_gpo_storage_full[3:0];
assign ethernetsoc_csrbank5_sel = (ethernetsoc_interface5_bank_bus_adr[13:9] == 5'd21);
assign ethernetsoc_csrbank5_in_r = ethernetsoc_interface5_bank_bus_dat_w[0];
assign ethernetsoc_csrbank5_in_re = ((ethernetsoc_csrbank5_sel & ethernetsoc_interface5_bank_bus_we) & (ethernetsoc_interface5_bank_bus_adr[0] == 1'd0));
assign ethernetsoc_csrbank5_in_w = max_spi_i_status;
assign ethernetsoc_csrbank6_sel = (ethernetsoc_interface6_bank_bus_adr[13:9] == 5'd22);
assign max_spi_irq_status_r = ethernetsoc_interface6_bank_bus_dat_w[0];
assign max_spi_irq_status_re = ((ethernetsoc_csrbank6_sel & ethernetsoc_interface6_bank_bus_we) & (ethernetsoc_interface6_bank_bus_adr[1:0] == 1'd0));
assign max_spi_irq_pending_r = ethernetsoc_interface6_bank_bus_dat_w[0];
assign max_spi_irq_pending_re = ((ethernetsoc_csrbank6_sel & ethernetsoc_interface6_bank_bus_we) & (ethernetsoc_interface6_bank_bus_adr[1:0] == 1'd1));
assign ethernetsoc_csrbank6_ev_enable0_r = ethernetsoc_interface6_bank_bus_dat_w[0];
assign ethernetsoc_csrbank6_ev_enable0_re = ((ethernetsoc_csrbank6_sel & ethernetsoc_interface6_bank_bus_we) & (ethernetsoc_interface6_bank_bus_adr[1:0] == 2'd2));
assign max_spi_irq_storage = max_spi_irq_storage_full;
assign ethernetsoc_csrbank6_ev_enable0_w = max_spi_irq_storage_full;
assign ethernetsoc_csrbank7_sel = (ethernetsoc_interface7_bank_bus_adr[13:9] == 5'd20);
assign ethernetsoc_csrbank7_out0_r = ethernetsoc_interface7_bank_bus_dat_w[2:0];
assign ethernetsoc_csrbank7_out0_re = ((ethernetsoc_csrbank7_sel & ethernetsoc_interface7_bank_bus_we) & (ethernetsoc_interface7_bank_bus_adr[0] == 1'd0));
assign max_spi_o_storage = max_spi_o_storage_full[2:0];
assign ethernetsoc_csrbank7_out0_w = max_spi_o_storage_full[2:0];
assign ethernetsoc_csrbank8_sel = (ethernetsoc_interface8_bank_bus_adr[13:9] == 4'd8);
assign ethernetsoc_csrbank8_dfii_control0_r = ethernetsoc_interface8_bank_bus_dat_w[3:0];
assign ethernetsoc_csrbank8_dfii_control0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 1'd0));
assign ethernetsoc_csrbank8_dfii_pi0_command0_r = ethernetsoc_interface8_bank_bus_dat_w[5:0];
assign ethernetsoc_csrbank8_dfii_pi0_command0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 1'd1));
assign ethernetsoc_sdram_phaseinjector0_command_issue_r = ethernetsoc_interface8_bank_bus_dat_w[0];
assign ethernetsoc_sdram_phaseinjector0_command_issue_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 2'd2));
assign ethernetsoc_csrbank8_dfii_pi0_address1_r = ethernetsoc_interface8_bank_bus_dat_w[4:0];
assign ethernetsoc_csrbank8_dfii_pi0_address1_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 2'd3));
assign ethernetsoc_csrbank8_dfii_pi0_address0_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_address0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 3'd4));
assign ethernetsoc_csrbank8_dfii_pi0_baddress0_r = ethernetsoc_interface8_bank_bus_dat_w[2:0];
assign ethernetsoc_csrbank8_dfii_pi0_baddress0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 3'd5));
assign ethernetsoc_csrbank8_dfii_pi0_wrdata7_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata7_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 3'd6));
assign ethernetsoc_csrbank8_dfii_pi0_wrdata6_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata6_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 3'd7));
assign ethernetsoc_csrbank8_dfii_pi0_wrdata5_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata5_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 4'd8));
assign ethernetsoc_csrbank8_dfii_pi0_wrdata4_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata4_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 4'd9));
assign ethernetsoc_csrbank8_dfii_pi0_wrdata3_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata3_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 4'd10));
assign ethernetsoc_csrbank8_dfii_pi0_wrdata2_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata2_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 4'd11));
assign ethernetsoc_csrbank8_dfii_pi0_wrdata1_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata1_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 4'd12));
assign ethernetsoc_csrbank8_dfii_pi0_wrdata0_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 4'd13));
assign ethernetsoc_csrbank8_dfii_pi0_rddata7_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_rddata7_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 4'd14));
assign ethernetsoc_csrbank8_dfii_pi0_rddata6_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_rddata6_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 4'd15));
assign ethernetsoc_csrbank8_dfii_pi0_rddata5_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_rddata5_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd16));
assign ethernetsoc_csrbank8_dfii_pi0_rddata4_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_rddata4_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd17));
assign ethernetsoc_csrbank8_dfii_pi0_rddata3_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_rddata3_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd18));
assign ethernetsoc_csrbank8_dfii_pi0_rddata2_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_rddata2_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd19));
assign ethernetsoc_csrbank8_dfii_pi0_rddata1_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_rddata1_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd20));
assign ethernetsoc_csrbank8_dfii_pi0_rddata0_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_rddata0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd21));
assign ethernetsoc_csrbank8_dfii_pi1_command0_r = ethernetsoc_interface8_bank_bus_dat_w[5:0];
assign ethernetsoc_csrbank8_dfii_pi1_command0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd22));
assign ethernetsoc_sdram_phaseinjector1_command_issue_r = ethernetsoc_interface8_bank_bus_dat_w[0];
assign ethernetsoc_sdram_phaseinjector1_command_issue_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd23));
assign ethernetsoc_csrbank8_dfii_pi1_address1_r = ethernetsoc_interface8_bank_bus_dat_w[4:0];
assign ethernetsoc_csrbank8_dfii_pi1_address1_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd24));
assign ethernetsoc_csrbank8_dfii_pi1_address0_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_address0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd25));
assign ethernetsoc_csrbank8_dfii_pi1_baddress0_r = ethernetsoc_interface8_bank_bus_dat_w[2:0];
assign ethernetsoc_csrbank8_dfii_pi1_baddress0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd26));
assign ethernetsoc_csrbank8_dfii_pi1_wrdata7_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata7_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd27));
assign ethernetsoc_csrbank8_dfii_pi1_wrdata6_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata6_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd28));
assign ethernetsoc_csrbank8_dfii_pi1_wrdata5_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata5_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd29));
assign ethernetsoc_csrbank8_dfii_pi1_wrdata4_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata4_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd30));
assign ethernetsoc_csrbank8_dfii_pi1_wrdata3_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata3_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 5'd31));
assign ethernetsoc_csrbank8_dfii_pi1_wrdata2_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata2_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd32));
assign ethernetsoc_csrbank8_dfii_pi1_wrdata1_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata1_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd33));
assign ethernetsoc_csrbank8_dfii_pi1_wrdata0_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd34));
assign ethernetsoc_csrbank8_dfii_pi1_rddata7_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_rddata7_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd35));
assign ethernetsoc_csrbank8_dfii_pi1_rddata6_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_rddata6_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd36));
assign ethernetsoc_csrbank8_dfii_pi1_rddata5_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_rddata5_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd37));
assign ethernetsoc_csrbank8_dfii_pi1_rddata4_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_rddata4_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd38));
assign ethernetsoc_csrbank8_dfii_pi1_rddata3_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_rddata3_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd39));
assign ethernetsoc_csrbank8_dfii_pi1_rddata2_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_rddata2_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd40));
assign ethernetsoc_csrbank8_dfii_pi1_rddata1_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_rddata1_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd41));
assign ethernetsoc_csrbank8_dfii_pi1_rddata0_r = ethernetsoc_interface8_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_rddata0_re = ((ethernetsoc_csrbank8_sel & ethernetsoc_interface8_bank_bus_we) & (ethernetsoc_interface8_bank_bus_adr[5:0] == 6'd42));
assign ethernetsoc_sdram_storage = ethernetsoc_sdram_storage_full[3:0];
assign ethernetsoc_csrbank8_dfii_control0_w = ethernetsoc_sdram_storage_full[3:0];
assign ethernetsoc_sdram_phaseinjector0_command_storage = ethernetsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign ethernetsoc_csrbank8_dfii_pi0_command0_w = ethernetsoc_sdram_phaseinjector0_command_storage_full[5:0];
assign ethernetsoc_sdram_phaseinjector0_address_storage = ethernetsoc_sdram_phaseinjector0_address_storage_full[12:0];
assign ethernetsoc_csrbank8_dfii_pi0_address1_w = ethernetsoc_sdram_phaseinjector0_address_storage_full[12:8];
assign ethernetsoc_csrbank8_dfii_pi0_address0_w = ethernetsoc_sdram_phaseinjector0_address_storage_full[7:0];
assign ethernetsoc_sdram_phaseinjector0_baddress_storage = ethernetsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign ethernetsoc_csrbank8_dfii_pi0_baddress0_w = ethernetsoc_sdram_phaseinjector0_baddress_storage_full[2:0];
assign ethernetsoc_sdram_phaseinjector0_wrdata_storage = ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[63:0];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata7_w = ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[63:56];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata6_w = ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[55:48];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata5_w = ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[47:40];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata4_w = ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[39:32];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata3_w = ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[31:24];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata2_w = ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[23:16];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata1_w = ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[15:8];
assign ethernetsoc_csrbank8_dfii_pi0_wrdata0_w = ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[7:0];
assign ethernetsoc_csrbank8_dfii_pi0_rddata7_w = ethernetsoc_sdram_phaseinjector0_status[63:56];
assign ethernetsoc_csrbank8_dfii_pi0_rddata6_w = ethernetsoc_sdram_phaseinjector0_status[55:48];
assign ethernetsoc_csrbank8_dfii_pi0_rddata5_w = ethernetsoc_sdram_phaseinjector0_status[47:40];
assign ethernetsoc_csrbank8_dfii_pi0_rddata4_w = ethernetsoc_sdram_phaseinjector0_status[39:32];
assign ethernetsoc_csrbank8_dfii_pi0_rddata3_w = ethernetsoc_sdram_phaseinjector0_status[31:24];
assign ethernetsoc_csrbank8_dfii_pi0_rddata2_w = ethernetsoc_sdram_phaseinjector0_status[23:16];
assign ethernetsoc_csrbank8_dfii_pi0_rddata1_w = ethernetsoc_sdram_phaseinjector0_status[15:8];
assign ethernetsoc_csrbank8_dfii_pi0_rddata0_w = ethernetsoc_sdram_phaseinjector0_status[7:0];
assign ethernetsoc_sdram_phaseinjector1_command_storage = ethernetsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign ethernetsoc_csrbank8_dfii_pi1_command0_w = ethernetsoc_sdram_phaseinjector1_command_storage_full[5:0];
assign ethernetsoc_sdram_phaseinjector1_address_storage = ethernetsoc_sdram_phaseinjector1_address_storage_full[12:0];
assign ethernetsoc_csrbank8_dfii_pi1_address1_w = ethernetsoc_sdram_phaseinjector1_address_storage_full[12:8];
assign ethernetsoc_csrbank8_dfii_pi1_address0_w = ethernetsoc_sdram_phaseinjector1_address_storage_full[7:0];
assign ethernetsoc_sdram_phaseinjector1_baddress_storage = ethernetsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign ethernetsoc_csrbank8_dfii_pi1_baddress0_w = ethernetsoc_sdram_phaseinjector1_baddress_storage_full[2:0];
assign ethernetsoc_sdram_phaseinjector1_wrdata_storage = ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[63:0];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata7_w = ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[63:56];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata6_w = ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[55:48];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata5_w = ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[47:40];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata4_w = ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[39:32];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata3_w = ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[31:24];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata2_w = ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[23:16];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata1_w = ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[15:8];
assign ethernetsoc_csrbank8_dfii_pi1_wrdata0_w = ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[7:0];
assign ethernetsoc_csrbank8_dfii_pi1_rddata7_w = ethernetsoc_sdram_phaseinjector1_status[63:56];
assign ethernetsoc_csrbank8_dfii_pi1_rddata6_w = ethernetsoc_sdram_phaseinjector1_status[55:48];
assign ethernetsoc_csrbank8_dfii_pi1_rddata5_w = ethernetsoc_sdram_phaseinjector1_status[47:40];
assign ethernetsoc_csrbank8_dfii_pi1_rddata4_w = ethernetsoc_sdram_phaseinjector1_status[39:32];
assign ethernetsoc_csrbank8_dfii_pi1_rddata3_w = ethernetsoc_sdram_phaseinjector1_status[31:24];
assign ethernetsoc_csrbank8_dfii_pi1_rddata2_w = ethernetsoc_sdram_phaseinjector1_status[23:16];
assign ethernetsoc_csrbank8_dfii_pi1_rddata1_w = ethernetsoc_sdram_phaseinjector1_status[15:8];
assign ethernetsoc_csrbank8_dfii_pi1_rddata0_w = ethernetsoc_sdram_phaseinjector1_status[7:0];
assign ethernetsoc_csrbank9_sel = (ethernetsoc_interface9_bank_bus_adr[13:9] == 3'd5);
assign ethernetsoc_csrbank9_load3_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_load3_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 1'd0));
assign ethernetsoc_csrbank9_load2_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_load2_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 1'd1));
assign ethernetsoc_csrbank9_load1_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_load1_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 2'd2));
assign ethernetsoc_csrbank9_load0_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_load0_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 2'd3));
assign ethernetsoc_csrbank9_reload3_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_reload3_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 3'd4));
assign ethernetsoc_csrbank9_reload2_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_reload2_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 3'd5));
assign ethernetsoc_csrbank9_reload1_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_reload1_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 3'd6));
assign ethernetsoc_csrbank9_reload0_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_reload0_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 3'd7));
assign ethernetsoc_csrbank9_en0_r = ethernetsoc_interface9_bank_bus_dat_w[0];
assign ethernetsoc_csrbank9_en0_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 4'd8));
assign ethernetsoc_timer0_update_value_r = ethernetsoc_interface9_bank_bus_dat_w[0];
assign ethernetsoc_timer0_update_value_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 4'd9));
assign ethernetsoc_csrbank9_value3_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_value3_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 4'd10));
assign ethernetsoc_csrbank9_value2_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_value2_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 4'd11));
assign ethernetsoc_csrbank9_value1_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_value1_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 4'd12));
assign ethernetsoc_csrbank9_value0_r = ethernetsoc_interface9_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank9_value0_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 4'd13));
assign ethernetsoc_timer0_eventmanager_status_r = ethernetsoc_interface9_bank_bus_dat_w[0];
assign ethernetsoc_timer0_eventmanager_status_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 4'd14));
assign ethernetsoc_timer0_eventmanager_pending_r = ethernetsoc_interface9_bank_bus_dat_w[0];
assign ethernetsoc_timer0_eventmanager_pending_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 4'd15));
assign ethernetsoc_csrbank9_ev_enable0_r = ethernetsoc_interface9_bank_bus_dat_w[0];
assign ethernetsoc_csrbank9_ev_enable0_re = ((ethernetsoc_csrbank9_sel & ethernetsoc_interface9_bank_bus_we) & (ethernetsoc_interface9_bank_bus_adr[4:0] == 5'd16));
assign ethernetsoc_timer0_load_storage = ethernetsoc_timer0_load_storage_full[31:0];
assign ethernetsoc_csrbank9_load3_w = ethernetsoc_timer0_load_storage_full[31:24];
assign ethernetsoc_csrbank9_load2_w = ethernetsoc_timer0_load_storage_full[23:16];
assign ethernetsoc_csrbank9_load1_w = ethernetsoc_timer0_load_storage_full[15:8];
assign ethernetsoc_csrbank9_load0_w = ethernetsoc_timer0_load_storage_full[7:0];
assign ethernetsoc_timer0_reload_storage = ethernetsoc_timer0_reload_storage_full[31:0];
assign ethernetsoc_csrbank9_reload3_w = ethernetsoc_timer0_reload_storage_full[31:24];
assign ethernetsoc_csrbank9_reload2_w = ethernetsoc_timer0_reload_storage_full[23:16];
assign ethernetsoc_csrbank9_reload1_w = ethernetsoc_timer0_reload_storage_full[15:8];
assign ethernetsoc_csrbank9_reload0_w = ethernetsoc_timer0_reload_storage_full[7:0];
assign ethernetsoc_timer0_en_storage = ethernetsoc_timer0_en_storage_full;
assign ethernetsoc_csrbank9_en0_w = ethernetsoc_timer0_en_storage_full;
assign ethernetsoc_csrbank9_value3_w = ethernetsoc_timer0_value_status[31:24];
assign ethernetsoc_csrbank9_value2_w = ethernetsoc_timer0_value_status[23:16];
assign ethernetsoc_csrbank9_value1_w = ethernetsoc_timer0_value_status[15:8];
assign ethernetsoc_csrbank9_value0_w = ethernetsoc_timer0_value_status[7:0];
assign ethernetsoc_timer0_eventmanager_storage = ethernetsoc_timer0_eventmanager_storage_full;
assign ethernetsoc_csrbank9_ev_enable0_w = ethernetsoc_timer0_eventmanager_storage_full;
assign ethernetsoc_csrbank10_sel = (ethernetsoc_interface10_bank_bus_adr[13:9] == 2'd3);
assign ethernetsoc_uart_rxtx_r = ethernetsoc_interface10_bank_bus_dat_w[7:0];
assign ethernetsoc_uart_rxtx_re = ((ethernetsoc_csrbank10_sel & ethernetsoc_interface10_bank_bus_we) & (ethernetsoc_interface10_bank_bus_adr[2:0] == 1'd0));
assign ethernetsoc_csrbank10_txfull_r = ethernetsoc_interface10_bank_bus_dat_w[0];
assign ethernetsoc_csrbank10_txfull_re = ((ethernetsoc_csrbank10_sel & ethernetsoc_interface10_bank_bus_we) & (ethernetsoc_interface10_bank_bus_adr[2:0] == 1'd1));
assign ethernetsoc_csrbank10_rxempty_r = ethernetsoc_interface10_bank_bus_dat_w[0];
assign ethernetsoc_csrbank10_rxempty_re = ((ethernetsoc_csrbank10_sel & ethernetsoc_interface10_bank_bus_we) & (ethernetsoc_interface10_bank_bus_adr[2:0] == 2'd2));
assign ethernetsoc_uart_eventmanager_status_r = ethernetsoc_interface10_bank_bus_dat_w[1:0];
assign ethernetsoc_uart_eventmanager_status_re = ((ethernetsoc_csrbank10_sel & ethernetsoc_interface10_bank_bus_we) & (ethernetsoc_interface10_bank_bus_adr[2:0] == 2'd3));
assign ethernetsoc_uart_eventmanager_pending_r = ethernetsoc_interface10_bank_bus_dat_w[1:0];
assign ethernetsoc_uart_eventmanager_pending_re = ((ethernetsoc_csrbank10_sel & ethernetsoc_interface10_bank_bus_we) & (ethernetsoc_interface10_bank_bus_adr[2:0] == 3'd4));
assign ethernetsoc_csrbank10_ev_enable0_r = ethernetsoc_interface10_bank_bus_dat_w[1:0];
assign ethernetsoc_csrbank10_ev_enable0_re = ((ethernetsoc_csrbank10_sel & ethernetsoc_interface10_bank_bus_we) & (ethernetsoc_interface10_bank_bus_adr[2:0] == 3'd5));
assign ethernetsoc_csrbank10_txfull_w = ethernetsoc_uart_txfull_status;
assign ethernetsoc_csrbank10_rxempty_w = ethernetsoc_uart_rxempty_status;
assign ethernetsoc_uart_eventmanager_storage = ethernetsoc_uart_eventmanager_storage_full[1:0];
assign ethernetsoc_csrbank10_ev_enable0_w = ethernetsoc_uart_eventmanager_storage_full[1:0];
assign ethernetsoc_csrbank11_sel = (ethernetsoc_interface11_bank_bus_adr[13:9] == 2'd2);
assign ethernetsoc_csrbank11_tuning_word3_r = ethernetsoc_interface11_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank11_tuning_word3_re = ((ethernetsoc_csrbank11_sel & ethernetsoc_interface11_bank_bus_we) & (ethernetsoc_interface11_bank_bus_adr[1:0] == 1'd0));
assign ethernetsoc_csrbank11_tuning_word2_r = ethernetsoc_interface11_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank11_tuning_word2_re = ((ethernetsoc_csrbank11_sel & ethernetsoc_interface11_bank_bus_we) & (ethernetsoc_interface11_bank_bus_adr[1:0] == 1'd1));
assign ethernetsoc_csrbank11_tuning_word1_r = ethernetsoc_interface11_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank11_tuning_word1_re = ((ethernetsoc_csrbank11_sel & ethernetsoc_interface11_bank_bus_we) & (ethernetsoc_interface11_bank_bus_adr[1:0] == 2'd2));
assign ethernetsoc_csrbank11_tuning_word0_r = ethernetsoc_interface11_bank_bus_dat_w[7:0];
assign ethernetsoc_csrbank11_tuning_word0_re = ((ethernetsoc_csrbank11_sel & ethernetsoc_interface11_bank_bus_we) & (ethernetsoc_interface11_bank_bus_adr[1:0] == 2'd3));
assign ethernetsoc_uart_phy_storage = ethernetsoc_uart_phy_storage_full[31:0];
assign ethernetsoc_csrbank11_tuning_word3_w = ethernetsoc_uart_phy_storage_full[31:24];
assign ethernetsoc_csrbank11_tuning_word2_w = ethernetsoc_uart_phy_storage_full[23:16];
assign ethernetsoc_csrbank11_tuning_word1_w = ethernetsoc_uart_phy_storage_full[15:8];
assign ethernetsoc_csrbank11_tuning_word0_w = ethernetsoc_uart_phy_storage_full[7:0];
assign ethernetsoc_interface0_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface1_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface2_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface3_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface4_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface5_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface6_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface7_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface8_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface9_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface10_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface11_bank_bus_adr = ethernetsoc_interface_adr;
assign ethernetsoc_interface0_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface1_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface2_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface3_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface4_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface5_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface6_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface7_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface8_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface9_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface10_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface11_bank_bus_we = ethernetsoc_interface_we;
assign ethernetsoc_interface0_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface1_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface2_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface3_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface4_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface5_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface6_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface7_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface8_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface9_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface10_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface11_bank_bus_dat_w = ethernetsoc_interface_dat_w;
assign ethernetsoc_interface_dat_r = (((((((((((ethernetsoc_interface0_bank_bus_dat_r | ethernetsoc_interface1_bank_bus_dat_r) | ethernetsoc_interface2_bank_bus_dat_r) | ethernetsoc_interface3_bank_bus_dat_r) | ethernetsoc_interface4_bank_bus_dat_r) | ethernetsoc_interface5_bank_bus_dat_r) | ethernetsoc_interface6_bank_bus_dat_r) | ethernetsoc_interface7_bank_bus_dat_r) | ethernetsoc_interface8_bank_bus_dat_r) | ethernetsoc_interface9_bank_bus_dat_r) | ethernetsoc_interface10_bank_bus_dat_r) | ethernetsoc_interface11_bank_bus_dat_r);
always @(*) begin
	rhs_array_muxed0 <= 1'd0;
	case (ethernetsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed0 <= ethernetsoc_sdram_choose_cmd_valids[0];
		end
		1'd1: begin
			rhs_array_muxed0 <= ethernetsoc_sdram_choose_cmd_valids[1];
		end
		2'd2: begin
			rhs_array_muxed0 <= ethernetsoc_sdram_choose_cmd_valids[2];
		end
		2'd3: begin
			rhs_array_muxed0 <= ethernetsoc_sdram_choose_cmd_valids[3];
		end
		3'd4: begin
			rhs_array_muxed0 <= ethernetsoc_sdram_choose_cmd_valids[4];
		end
		3'd5: begin
			rhs_array_muxed0 <= ethernetsoc_sdram_choose_cmd_valids[5];
		end
		3'd6: begin
			rhs_array_muxed0 <= ethernetsoc_sdram_choose_cmd_valids[6];
		end
		default: begin
			rhs_array_muxed0 <= ethernetsoc_sdram_choose_cmd_valids[7];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed1 <= 13'd0;
	case (ethernetsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed1 <= ethernetsoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed1 <= ethernetsoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed1 <= ethernetsoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed1 <= ethernetsoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed1 <= ethernetsoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed1 <= ethernetsoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed1 <= ethernetsoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed1 <= ethernetsoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed2 <= 3'd0;
	case (ethernetsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed2 <= ethernetsoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed2 <= ethernetsoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed2 <= ethernetsoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed2 <= ethernetsoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed2 <= ethernetsoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed2 <= ethernetsoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed2 <= ethernetsoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed2 <= ethernetsoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed3 <= 1'd0;
	case (ethernetsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed3 <= ethernetsoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed3 <= ethernetsoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed3 <= ethernetsoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed3 <= ethernetsoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed3 <= ethernetsoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed3 <= ethernetsoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed3 <= ethernetsoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed3 <= ethernetsoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed4 <= 1'd0;
	case (ethernetsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed4 <= ethernetsoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed4 <= ethernetsoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed4 <= ethernetsoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed4 <= ethernetsoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed4 <= ethernetsoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed4 <= ethernetsoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed4 <= ethernetsoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed4 <= ethernetsoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed5 <= 1'd0;
	case (ethernetsoc_sdram_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed5 <= ethernetsoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed5 <= ethernetsoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed5 <= ethernetsoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed5 <= ethernetsoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed5 <= ethernetsoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed5 <= ethernetsoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed5 <= ethernetsoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed5 <= ethernetsoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed0 <= 1'd0;
	case (ethernetsoc_sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed0 <= ethernetsoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed0 <= ethernetsoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed0 <= ethernetsoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed0 <= ethernetsoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed0 <= ethernetsoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed0 <= ethernetsoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed0 <= ethernetsoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed0 <= ethernetsoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed1 <= 1'd0;
	case (ethernetsoc_sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed1 <= ethernetsoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed1 <= ethernetsoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed1 <= ethernetsoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed1 <= ethernetsoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed1 <= ethernetsoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed1 <= ethernetsoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed1 <= ethernetsoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed1 <= ethernetsoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed2 <= 1'd0;
	case (ethernetsoc_sdram_choose_cmd_grant)
		1'd0: begin
			t_array_muxed2 <= ethernetsoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed2 <= ethernetsoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed2 <= ethernetsoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed2 <= ethernetsoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed2 <= ethernetsoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed2 <= ethernetsoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed2 <= ethernetsoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed2 <= ethernetsoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed6 <= 1'd0;
	case (ethernetsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed6 <= ethernetsoc_sdram_choose_req_valids[0];
		end
		1'd1: begin
			rhs_array_muxed6 <= ethernetsoc_sdram_choose_req_valids[1];
		end
		2'd2: begin
			rhs_array_muxed6 <= ethernetsoc_sdram_choose_req_valids[2];
		end
		2'd3: begin
			rhs_array_muxed6 <= ethernetsoc_sdram_choose_req_valids[3];
		end
		3'd4: begin
			rhs_array_muxed6 <= ethernetsoc_sdram_choose_req_valids[4];
		end
		3'd5: begin
			rhs_array_muxed6 <= ethernetsoc_sdram_choose_req_valids[5];
		end
		3'd6: begin
			rhs_array_muxed6 <= ethernetsoc_sdram_choose_req_valids[6];
		end
		default: begin
			rhs_array_muxed6 <= ethernetsoc_sdram_choose_req_valids[7];
		end
	endcase
end
always @(*) begin
	rhs_array_muxed7 <= 13'd0;
	case (ethernetsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed7 <= ethernetsoc_sdram_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed7 <= ethernetsoc_sdram_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed7 <= ethernetsoc_sdram_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed7 <= ethernetsoc_sdram_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed7 <= ethernetsoc_sdram_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed7 <= ethernetsoc_sdram_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed7 <= ethernetsoc_sdram_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed7 <= ethernetsoc_sdram_bankmachine7_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed8 <= 3'd0;
	case (ethernetsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed8 <= ethernetsoc_sdram_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed8 <= ethernetsoc_sdram_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed8 <= ethernetsoc_sdram_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed8 <= ethernetsoc_sdram_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed8 <= ethernetsoc_sdram_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed8 <= ethernetsoc_sdram_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed8 <= ethernetsoc_sdram_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed8 <= ethernetsoc_sdram_bankmachine7_cmd_payload_ba;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed9 <= 1'd0;
	case (ethernetsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed9 <= ethernetsoc_sdram_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed9 <= ethernetsoc_sdram_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed9 <= ethernetsoc_sdram_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed9 <= ethernetsoc_sdram_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed9 <= ethernetsoc_sdram_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed9 <= ethernetsoc_sdram_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed9 <= ethernetsoc_sdram_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed9 <= ethernetsoc_sdram_bankmachine7_cmd_payload_is_read;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed10 <= 1'd0;
	case (ethernetsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed10 <= ethernetsoc_sdram_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed10 <= ethernetsoc_sdram_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed10 <= ethernetsoc_sdram_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed10 <= ethernetsoc_sdram_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed10 <= ethernetsoc_sdram_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed10 <= ethernetsoc_sdram_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed10 <= ethernetsoc_sdram_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed10 <= ethernetsoc_sdram_bankmachine7_cmd_payload_is_write;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed11 <= 1'd0;
	case (ethernetsoc_sdram_choose_req_grant)
		1'd0: begin
			rhs_array_muxed11 <= ethernetsoc_sdram_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed11 <= ethernetsoc_sdram_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed11 <= ethernetsoc_sdram_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed11 <= ethernetsoc_sdram_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed11 <= ethernetsoc_sdram_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed11 <= ethernetsoc_sdram_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed11 <= ethernetsoc_sdram_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed11 <= ethernetsoc_sdram_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
end
always @(*) begin
	t_array_muxed3 <= 1'd0;
	case (ethernetsoc_sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed3 <= ethernetsoc_sdram_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed3 <= ethernetsoc_sdram_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed3 <= ethernetsoc_sdram_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed3 <= ethernetsoc_sdram_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed3 <= ethernetsoc_sdram_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed3 <= ethernetsoc_sdram_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed3 <= ethernetsoc_sdram_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed3 <= ethernetsoc_sdram_bankmachine7_cmd_payload_cas;
		end
	endcase
end
always @(*) begin
	t_array_muxed4 <= 1'd0;
	case (ethernetsoc_sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed4 <= ethernetsoc_sdram_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed4 <= ethernetsoc_sdram_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed4 <= ethernetsoc_sdram_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed4 <= ethernetsoc_sdram_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed4 <= ethernetsoc_sdram_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed4 <= ethernetsoc_sdram_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed4 <= ethernetsoc_sdram_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed4 <= ethernetsoc_sdram_bankmachine7_cmd_payload_ras;
		end
	endcase
end
always @(*) begin
	t_array_muxed5 <= 1'd0;
	case (ethernetsoc_sdram_choose_req_grant)
		1'd0: begin
			t_array_muxed5 <= ethernetsoc_sdram_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed5 <= ethernetsoc_sdram_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed5 <= ethernetsoc_sdram_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed5 <= ethernetsoc_sdram_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed5 <= ethernetsoc_sdram_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed5 <= ethernetsoc_sdram_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed5 <= ethernetsoc_sdram_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed5 <= ethernetsoc_sdram_bankmachine7_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed12 <= 20'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed12 <= {ethernetsoc_port_cmd_payload_addr[22:10], ethernetsoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed13 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed13 <= ethernetsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed14 <= 1'd0;
	case (roundrobin0_grant)
		default: begin
			rhs_array_muxed14 <= (((ethernetsoc_port_cmd_payload_addr[9:7] == 1'd0) & (~(((((((locked0 | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed15 <= 20'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed15 <= {ethernetsoc_port_cmd_payload_addr[22:10], ethernetsoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed16 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed16 <= ethernetsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed17 <= 1'd0;
	case (roundrobin1_grant)
		default: begin
			rhs_array_muxed17 <= (((ethernetsoc_port_cmd_payload_addr[9:7] == 1'd1) & (~(((((((locked1 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed18 <= 20'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed18 <= {ethernetsoc_port_cmd_payload_addr[22:10], ethernetsoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed19 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed19 <= ethernetsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed20 <= 1'd0;
	case (roundrobin2_grant)
		default: begin
			rhs_array_muxed20 <= (((ethernetsoc_port_cmd_payload_addr[9:7] == 2'd2) & (~(((((((locked2 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed21 <= 20'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed21 <= {ethernetsoc_port_cmd_payload_addr[22:10], ethernetsoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed22 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed22 <= ethernetsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed23 <= 1'd0;
	case (roundrobin3_grant)
		default: begin
			rhs_array_muxed23 <= (((ethernetsoc_port_cmd_payload_addr[9:7] == 2'd3) & (~(((((((locked3 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed24 <= 20'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed24 <= {ethernetsoc_port_cmd_payload_addr[22:10], ethernetsoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed25 <= 1'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed25 <= ethernetsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed26 <= 1'd0;
	case (roundrobin4_grant)
		default: begin
			rhs_array_muxed26 <= (((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd4) & (~(((((((locked4 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed27 <= 20'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed27 <= {ethernetsoc_port_cmd_payload_addr[22:10], ethernetsoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed28 <= 1'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed28 <= ethernetsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed29 <= 1'd0;
	case (roundrobin5_grant)
		default: begin
			rhs_array_muxed29 <= (((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd5) & (~(((((((locked5 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed30 <= 20'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed30 <= {ethernetsoc_port_cmd_payload_addr[22:10], ethernetsoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed31 <= 1'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed31 <= ethernetsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed32 <= 1'd0;
	case (roundrobin6_grant)
		default: begin
			rhs_array_muxed32 <= (((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd6) & (~(((((((locked6 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & ethernetsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed33 <= 20'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed33 <= {ethernetsoc_port_cmd_payload_addr[22:10], ethernetsoc_port_cmd_payload_addr[6:0]};
		end
	endcase
end
always @(*) begin
	rhs_array_muxed34 <= 1'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed34 <= ethernetsoc_port_cmd_payload_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed35 <= 1'd0;
	case (roundrobin7_grant)
		default: begin
			rhs_array_muxed35 <= (((ethernetsoc_port_cmd_payload_addr[9:7] == 3'd7) & (~(((((((locked7 | (ethernetsoc_sdram_interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (ethernetsoc_sdram_interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & ethernetsoc_port_cmd_valid);
		end
	endcase
end
always @(*) begin
	rhs_array_muxed36 <= 30'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed36 <= ethernetsoc_interface1_wb_sdram_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed37 <= 32'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed37 <= ethernetsoc_interface1_wb_sdram_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed38 <= 4'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed38 <= ethernetsoc_interface1_wb_sdram_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed39 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed39 <= ethernetsoc_interface1_wb_sdram_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed40 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed40 <= ethernetsoc_interface1_wb_sdram_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed41 <= 1'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed41 <= ethernetsoc_interface1_wb_sdram_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed42 <= 3'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed42 <= ethernetsoc_interface1_wb_sdram_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed43 <= 2'd0;
	case (wb_sdram_con_grant)
		default: begin
			rhs_array_muxed43 <= ethernetsoc_interface1_wb_sdram_bte;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed44 <= 30'd0;
	case (ethernetsoc_grant)
		1'd0: begin
			rhs_array_muxed44 <= ethernetsoc_vexriscv_ibus_adr;
		end
		default: begin
			rhs_array_muxed44 <= ethernetsoc_vexriscv_dbus_adr;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed45 <= 32'd0;
	case (ethernetsoc_grant)
		1'd0: begin
			rhs_array_muxed45 <= ethernetsoc_vexriscv_ibus_dat_w;
		end
		default: begin
			rhs_array_muxed45 <= ethernetsoc_vexriscv_dbus_dat_w;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed46 <= 4'd0;
	case (ethernetsoc_grant)
		1'd0: begin
			rhs_array_muxed46 <= ethernetsoc_vexriscv_ibus_sel;
		end
		default: begin
			rhs_array_muxed46 <= ethernetsoc_vexriscv_dbus_sel;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed47 <= 1'd0;
	case (ethernetsoc_grant)
		1'd0: begin
			rhs_array_muxed47 <= ethernetsoc_vexriscv_ibus_cyc;
		end
		default: begin
			rhs_array_muxed47 <= ethernetsoc_vexriscv_dbus_cyc;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed48 <= 1'd0;
	case (ethernetsoc_grant)
		1'd0: begin
			rhs_array_muxed48 <= ethernetsoc_vexriscv_ibus_stb;
		end
		default: begin
			rhs_array_muxed48 <= ethernetsoc_vexriscv_dbus_stb;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed49 <= 1'd0;
	case (ethernetsoc_grant)
		1'd0: begin
			rhs_array_muxed49 <= ethernetsoc_vexriscv_ibus_we;
		end
		default: begin
			rhs_array_muxed49 <= ethernetsoc_vexriscv_dbus_we;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed50 <= 3'd0;
	case (ethernetsoc_grant)
		1'd0: begin
			rhs_array_muxed50 <= ethernetsoc_vexriscv_ibus_cti;
		end
		default: begin
			rhs_array_muxed50 <= ethernetsoc_vexriscv_dbus_cti;
		end
	endcase
end
always @(*) begin
	rhs_array_muxed51 <= 2'd0;
	case (ethernetsoc_grant)
		1'd0: begin
			rhs_array_muxed51 <= ethernetsoc_vexriscv_ibus_bte;
		end
		default: begin
			rhs_array_muxed51 <= ethernetsoc_vexriscv_dbus_bte;
		end
	endcase
end
always @(*) begin
	array_muxed0 <= 3'd0;
	case (ethernetsoc_sdram_steerer_sel0)
		1'd0: begin
			array_muxed0 <= ethernetsoc_sdram_nop_ba[2:0];
		end
		1'd1: begin
			array_muxed0 <= ethernetsoc_sdram_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed0 <= ethernetsoc_sdram_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed0 <= ethernetsoc_sdram_cmd_payload_ba[2:0];
		end
	endcase
end
always @(*) begin
	array_muxed1 <= 13'd0;
	case (ethernetsoc_sdram_steerer_sel0)
		1'd0: begin
			array_muxed1 <= ethernetsoc_sdram_nop_a;
		end
		1'd1: begin
			array_muxed1 <= ethernetsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed1 <= ethernetsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed1 <= ethernetsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed2 <= 1'd0;
	case (ethernetsoc_sdram_steerer_sel0)
		1'd0: begin
			array_muxed2 <= 1'd0;
		end
		1'd1: begin
			array_muxed2 <= ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ethernetsoc_sdram_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed2 <= ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed2 <= ((ethernetsoc_sdram_cmd_valid & ethernetsoc_sdram_cmd_ready) & ethernetsoc_sdram_cmd_payload_cas);
		end
	endcase
end
always @(*) begin
	array_muxed3 <= 1'd0;
	case (ethernetsoc_sdram_steerer_sel0)
		1'd0: begin
			array_muxed3 <= 1'd0;
		end
		1'd1: begin
			array_muxed3 <= ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ethernetsoc_sdram_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed3 <= ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed3 <= ((ethernetsoc_sdram_cmd_valid & ethernetsoc_sdram_cmd_ready) & ethernetsoc_sdram_cmd_payload_ras);
		end
	endcase
end
always @(*) begin
	array_muxed4 <= 1'd0;
	case (ethernetsoc_sdram_steerer_sel0)
		1'd0: begin
			array_muxed4 <= 1'd0;
		end
		1'd1: begin
			array_muxed4 <= ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ethernetsoc_sdram_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed4 <= ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed4 <= ((ethernetsoc_sdram_cmd_valid & ethernetsoc_sdram_cmd_ready) & ethernetsoc_sdram_cmd_payload_we);
		end
	endcase
end
always @(*) begin
	array_muxed5 <= 1'd0;
	case (ethernetsoc_sdram_steerer_sel0)
		1'd0: begin
			array_muxed5 <= 1'd0;
		end
		1'd1: begin
			array_muxed5 <= ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ethernetsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed5 <= ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed5 <= ((ethernetsoc_sdram_cmd_valid & ethernetsoc_sdram_cmd_ready) & ethernetsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed6 <= 1'd0;
	case (ethernetsoc_sdram_steerer_sel0)
		1'd0: begin
			array_muxed6 <= 1'd0;
		end
		1'd1: begin
			array_muxed6 <= ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ethernetsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed6 <= ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed6 <= ((ethernetsoc_sdram_cmd_valid & ethernetsoc_sdram_cmd_ready) & ethernetsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
always @(*) begin
	array_muxed7 <= 3'd0;
	case (ethernetsoc_sdram_steerer_sel1)
		1'd0: begin
			array_muxed7 <= ethernetsoc_sdram_nop_ba[2:0];
		end
		1'd1: begin
			array_muxed7 <= ethernetsoc_sdram_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed7 <= ethernetsoc_sdram_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed7 <= ethernetsoc_sdram_cmd_payload_ba[2:0];
		end
	endcase
end
always @(*) begin
	array_muxed8 <= 13'd0;
	case (ethernetsoc_sdram_steerer_sel1)
		1'd0: begin
			array_muxed8 <= ethernetsoc_sdram_nop_a;
		end
		1'd1: begin
			array_muxed8 <= ethernetsoc_sdram_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed8 <= ethernetsoc_sdram_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed8 <= ethernetsoc_sdram_cmd_payload_a;
		end
	endcase
end
always @(*) begin
	array_muxed9 <= 1'd0;
	case (ethernetsoc_sdram_steerer_sel1)
		1'd0: begin
			array_muxed9 <= 1'd0;
		end
		1'd1: begin
			array_muxed9 <= ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ethernetsoc_sdram_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed9 <= ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed9 <= ((ethernetsoc_sdram_cmd_valid & ethernetsoc_sdram_cmd_ready) & ethernetsoc_sdram_cmd_payload_cas);
		end
	endcase
end
always @(*) begin
	array_muxed10 <= 1'd0;
	case (ethernetsoc_sdram_steerer_sel1)
		1'd0: begin
			array_muxed10 <= 1'd0;
		end
		1'd1: begin
			array_muxed10 <= ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ethernetsoc_sdram_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed10 <= ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed10 <= ((ethernetsoc_sdram_cmd_valid & ethernetsoc_sdram_cmd_ready) & ethernetsoc_sdram_cmd_payload_ras);
		end
	endcase
end
always @(*) begin
	array_muxed11 <= 1'd0;
	case (ethernetsoc_sdram_steerer_sel1)
		1'd0: begin
			array_muxed11 <= 1'd0;
		end
		1'd1: begin
			array_muxed11 <= ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ethernetsoc_sdram_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed11 <= ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed11 <= ((ethernetsoc_sdram_cmd_valid & ethernetsoc_sdram_cmd_ready) & ethernetsoc_sdram_cmd_payload_we);
		end
	endcase
end
always @(*) begin
	array_muxed12 <= 1'd0;
	case (ethernetsoc_sdram_steerer_sel1)
		1'd0: begin
			array_muxed12 <= 1'd0;
		end
		1'd1: begin
			array_muxed12 <= ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ethernetsoc_sdram_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed12 <= ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed12 <= ((ethernetsoc_sdram_cmd_valid & ethernetsoc_sdram_cmd_ready) & ethernetsoc_sdram_cmd_payload_is_read);
		end
	endcase
end
always @(*) begin
	array_muxed13 <= 1'd0;
	case (ethernetsoc_sdram_steerer_sel1)
		1'd0: begin
			array_muxed13 <= 1'd0;
		end
		1'd1: begin
			array_muxed13 <= ((ethernetsoc_sdram_choose_cmd_cmd_valid & ethernetsoc_sdram_choose_cmd_cmd_ready) & ethernetsoc_sdram_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed13 <= ((ethernetsoc_sdram_choose_req_cmd_valid & ethernetsoc_sdram_choose_req_cmd_ready) & ethernetsoc_sdram_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed13 <= ((ethernetsoc_sdram_cmd_valid & ethernetsoc_sdram_cmd_ready) & ethernetsoc_sdram_cmd_payload_is_write);
		end
	endcase
end
assign ethernetsoc_uart_phy_rx = multiregimpl0_regs1;
assign ethernetsoc_ecp5ddrphy_lock1 = multiregimpl1_regs1;
assign ethphy_status = multiregimpl2_regs1;
assign ethmac_ps_preamble_error_toggle_o = multiregimpl3_regs1;
assign ethmac_ps_crc_error_toggle_o = multiregimpl4_regs1;
assign ethmac_tx_cdc_produce_rdomain = multiregimpl5_regs1;
assign ethmac_tx_cdc_consume_wdomain = multiregimpl6_regs1;
assign ethmac_rx_cdc_produce_rdomain = multiregimpl7_regs1;
assign ethmac_rx_cdc_consume_wdomain = multiregimpl8_regs1;
assign max_spi_i_status = multiregimpl9_regs1;

always @(posedge eth_rx_clk) begin
	ethphy_rx_ctl_reg <= ethphy_rx_ctl;
	ethphy_rx_data_reg <= ethphy_rx_data;
	ethphy_rx_ctl_reg_d <= ethphy_rx_ctl_reg;
	ethphy_source_valid <= ethphy_rx_ctl_reg;
	ethphy_source_payload_data <= {ethphy_rx_data_reg[7:4], ethphy_rx_data_reg[3:0]};
	liteethmacpreamblechecker_state <= liteethmacpreamblechecker_next_state;
	if (ethmac_crc32_checker_crc_ce) begin
		ethmac_crc32_checker_crc_reg <= ethmac_crc32_checker_crc_next;
	end
	if (ethmac_crc32_checker_crc_reset) begin
		ethmac_crc32_checker_crc_reg <= 32'd4294967295;
	end
	if (((ethmac_crc32_checker_syncfifo_syncfifo_we & ethmac_crc32_checker_syncfifo_syncfifo_writable) & (~ethmac_crc32_checker_syncfifo_replace))) begin
		if ((ethmac_crc32_checker_syncfifo_produce == 3'd4)) begin
			ethmac_crc32_checker_syncfifo_produce <= 1'd0;
		end else begin
			ethmac_crc32_checker_syncfifo_produce <= (ethmac_crc32_checker_syncfifo_produce + 1'd1);
		end
	end
	if (ethmac_crc32_checker_syncfifo_do_read) begin
		if ((ethmac_crc32_checker_syncfifo_consume == 3'd4)) begin
			ethmac_crc32_checker_syncfifo_consume <= 1'd0;
		end else begin
			ethmac_crc32_checker_syncfifo_consume <= (ethmac_crc32_checker_syncfifo_consume + 1'd1);
		end
	end
	if (((ethmac_crc32_checker_syncfifo_syncfifo_we & ethmac_crc32_checker_syncfifo_syncfifo_writable) & (~ethmac_crc32_checker_syncfifo_replace))) begin
		if ((~ethmac_crc32_checker_syncfifo_do_read)) begin
			ethmac_crc32_checker_syncfifo_level <= (ethmac_crc32_checker_syncfifo_level + 1'd1);
		end
	end else begin
		if (ethmac_crc32_checker_syncfifo_do_read) begin
			ethmac_crc32_checker_syncfifo_level <= (ethmac_crc32_checker_syncfifo_level - 1'd1);
		end
	end
	if (ethmac_crc32_checker_fifo_reset) begin
		ethmac_crc32_checker_syncfifo_level <= 3'd0;
		ethmac_crc32_checker_syncfifo_produce <= 3'd0;
		ethmac_crc32_checker_syncfifo_consume <= 3'd0;
	end
	liteethmaccrc32checker_state <= liteethmaccrc32checker_next_state;
	if (ethmac_ps_preamble_error_i) begin
		ethmac_ps_preamble_error_toggle_i <= (~ethmac_ps_preamble_error_toggle_i);
	end
	if (ethmac_ps_crc_error_i) begin
		ethmac_ps_crc_error_toggle_i <= (~ethmac_ps_crc_error_toggle_i);
	end
	if (ethmac_rx_converter_converter_source_ready) begin
		ethmac_rx_converter_converter_strobe_all <= 1'd0;
	end
	if (ethmac_rx_converter_converter_load_part) begin
		if (((ethmac_rx_converter_converter_demux == 2'd3) | ethmac_rx_converter_converter_sink_last)) begin
			ethmac_rx_converter_converter_demux <= 1'd0;
			ethmac_rx_converter_converter_strobe_all <= 1'd1;
		end else begin
			ethmac_rx_converter_converter_demux <= (ethmac_rx_converter_converter_demux + 1'd1);
		end
	end
	if ((ethmac_rx_converter_converter_source_valid & ethmac_rx_converter_converter_source_ready)) begin
		if ((ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready)) begin
			ethmac_rx_converter_converter_source_first <= ethmac_rx_converter_converter_sink_first;
			ethmac_rx_converter_converter_source_last <= ethmac_rx_converter_converter_sink_last;
		end else begin
			ethmac_rx_converter_converter_source_first <= 1'd0;
			ethmac_rx_converter_converter_source_last <= 1'd0;
		end
	end else begin
		if ((ethmac_rx_converter_converter_sink_valid & ethmac_rx_converter_converter_sink_ready)) begin
			ethmac_rx_converter_converter_source_first <= (ethmac_rx_converter_converter_sink_first | ethmac_rx_converter_converter_source_first);
			ethmac_rx_converter_converter_source_last <= (ethmac_rx_converter_converter_sink_last | ethmac_rx_converter_converter_source_last);
		end
	end
	if (ethmac_rx_converter_converter_load_part) begin
		case (ethmac_rx_converter_converter_demux)
			1'd0: begin
				ethmac_rx_converter_converter_source_payload_data[9:0] <= ethmac_rx_converter_converter_sink_payload_data;
			end
			1'd1: begin
				ethmac_rx_converter_converter_source_payload_data[19:10] <= ethmac_rx_converter_converter_sink_payload_data;
			end
			2'd2: begin
				ethmac_rx_converter_converter_source_payload_data[29:20] <= ethmac_rx_converter_converter_sink_payload_data;
			end
			2'd3: begin
				ethmac_rx_converter_converter_source_payload_data[39:30] <= ethmac_rx_converter_converter_sink_payload_data;
			end
		endcase
	end
	if (ethmac_rx_converter_converter_load_part) begin
		ethmac_rx_converter_converter_source_payload_valid_token_count <= (ethmac_rx_converter_converter_demux + 1'd1);
	end
	ethmac_rx_cdc_graycounter0_q_binary <= ethmac_rx_cdc_graycounter0_q_next_binary;
	ethmac_rx_cdc_graycounter0_q <= ethmac_rx_cdc_graycounter0_q_next;
	if (eth_rx_rst) begin
		ethphy_source_valid <= 1'd0;
		ethphy_source_payload_data <= 8'd0;
		ethphy_rx_ctl_reg <= 1'd0;
		ethphy_rx_data_reg <= 8'd0;
		ethphy_rx_ctl_reg_d <= 1'd0;
		ethmac_crc32_checker_crc_reg <= 32'd4294967295;
		ethmac_crc32_checker_syncfifo_level <= 3'd0;
		ethmac_crc32_checker_syncfifo_produce <= 3'd0;
		ethmac_crc32_checker_syncfifo_consume <= 3'd0;
		ethmac_rx_converter_converter_source_first <= 1'd0;
		ethmac_rx_converter_converter_source_last <= 1'd0;
		ethmac_rx_converter_converter_source_payload_data <= 40'd0;
		ethmac_rx_converter_converter_source_payload_valid_token_count <= 3'd0;
		ethmac_rx_converter_converter_demux <= 2'd0;
		ethmac_rx_converter_converter_strobe_all <= 1'd0;
		ethmac_rx_cdc_graycounter0_q <= 7'd0;
		ethmac_rx_cdc_graycounter0_q_binary <= 7'd0;
		liteethmacpreamblechecker_state <= 1'd0;
		liteethmaccrc32checker_state <= 2'd0;
	end
	multiregimpl8_regs0 <= ethmac_rx_cdc_graycounter1_q;
	multiregimpl8_regs1 <= multiregimpl8_regs0;
end

always @(posedge eth_tx_clk) begin
	if (ethmac_tx_gap_inserter_counter_reset) begin
		ethmac_tx_gap_inserter_counter <= 1'd0;
	end else begin
		if (ethmac_tx_gap_inserter_counter_ce) begin
			ethmac_tx_gap_inserter_counter <= (ethmac_tx_gap_inserter_counter + 1'd1);
		end
	end
	liteethmacgap_state <= liteethmacgap_next_state;
	if (ethmac_preamble_inserter_clr_cnt) begin
		ethmac_preamble_inserter_cnt <= 1'd0;
	end else begin
		if (ethmac_preamble_inserter_inc_cnt) begin
			ethmac_preamble_inserter_cnt <= (ethmac_preamble_inserter_cnt + 1'd1);
		end
	end
	liteethmacpreambleinserter_state <= liteethmacpreambleinserter_next_state;
	if (ethmac_crc32_inserter_is_ongoing0) begin
		ethmac_crc32_inserter_cnt <= 2'd3;
	end else begin
		if ((ethmac_crc32_inserter_is_ongoing1 & (~ethmac_crc32_inserter_cnt_done))) begin
			ethmac_crc32_inserter_cnt <= (ethmac_crc32_inserter_cnt - ethmac_crc32_inserter_source_ready);
		end
	end
	if (ethmac_crc32_inserter_ce) begin
		ethmac_crc32_inserter_reg <= ethmac_crc32_inserter_next;
	end
	if (ethmac_crc32_inserter_reset) begin
		ethmac_crc32_inserter_reg <= 32'd4294967295;
	end
	liteethmaccrc32inserter_state <= liteethmaccrc32inserter_next_state;
	if (ethmac_padding_inserter_counter_reset) begin
		ethmac_padding_inserter_counter <= 1'd0;
	end else begin
		if (ethmac_padding_inserter_counter_ce) begin
			ethmac_padding_inserter_counter <= (ethmac_padding_inserter_counter + 1'd1);
		end
	end
	liteethmacpaddinginserter_state <= liteethmacpaddinginserter_next_state;
	if ((ethmac_tx_last_be_sink_valid & ethmac_tx_last_be_sink_ready)) begin
		if (ethmac_tx_last_be_sink_last) begin
			ethmac_tx_last_be_ongoing <= 1'd1;
		end else begin
			if (ethmac_tx_last_be_sink_payload_last_be) begin
				ethmac_tx_last_be_ongoing <= 1'd0;
			end
		end
	end
	if ((ethmac_tx_converter_converter_source_valid & ethmac_tx_converter_converter_source_ready)) begin
		if (ethmac_tx_converter_converter_last) begin
			ethmac_tx_converter_converter_mux <= 1'd0;
		end else begin
			ethmac_tx_converter_converter_mux <= (ethmac_tx_converter_converter_mux + 1'd1);
		end
	end
	ethmac_tx_cdc_graycounter1_q_binary <= ethmac_tx_cdc_graycounter1_q_next_binary;
	ethmac_tx_cdc_graycounter1_q <= ethmac_tx_cdc_graycounter1_q_next;
	if (eth_tx_rst) begin
		ethmac_crc32_inserter_reg <= 32'd4294967295;
		ethmac_crc32_inserter_cnt <= 2'd3;
		ethmac_padding_inserter_counter <= 16'd1;
		ethmac_tx_last_be_ongoing <= 1'd1;
		ethmac_tx_converter_converter_mux <= 2'd0;
		ethmac_tx_cdc_graycounter1_q <= 7'd0;
		ethmac_tx_cdc_graycounter1_q_binary <= 7'd0;
		liteethmacgap_state <= 1'd0;
		liteethmacpreambleinserter_state <= 2'd0;
		liteethmaccrc32inserter_state <= 2'd0;
		liteethmacpaddinginserter_state <= 1'd0;
	end
	multiregimpl5_regs0 <= ethmac_tx_cdc_graycounter0_q;
	multiregimpl5_regs1 <= multiregimpl5_regs0;
end

always @(posedge init_clk) begin
	if ((ethernetsoc_ecp5ddrphy_counter == 4'd8)) begin
		ethernetsoc_ecp5ddrphy_freeze <= 1'd1;
	end
	if ((ethernetsoc_ecp5ddrphy_counter == 5'd16)) begin
		ethernetsoc_ecp5ddrphy_stop1 <= 1'd1;
	end
	if ((ethernetsoc_ecp5ddrphy_counter == 5'd24)) begin
		ethernetsoc_ecp5ddrphy_reset <= 1'd1;
	end
	if ((ethernetsoc_ecp5ddrphy_counter == 6'd32)) begin
		ethernetsoc_ecp5ddrphy_reset <= 1'd0;
	end
	if ((ethernetsoc_ecp5ddrphy_counter == 6'd40)) begin
		ethernetsoc_ecp5ddrphy_stop1 <= 1'd0;
	end
	if ((ethernetsoc_ecp5ddrphy_counter == 6'd48)) begin
		ethernetsoc_ecp5ddrphy_freeze <= 1'd0;
	end
	if ((ethernetsoc_ecp5ddrphy_counter == 6'd56)) begin
		ethernetsoc_ecp5ddrphy_pause1 <= 1'd1;
	end
	if ((ethernetsoc_ecp5ddrphy_counter == 7'd64)) begin
		ethernetsoc_ecp5ddrphy_update <= 1'd1;
	end
	if ((ethernetsoc_ecp5ddrphy_counter == 7'd72)) begin
		ethernetsoc_ecp5ddrphy_update <= 1'd0;
	end
	if ((ethernetsoc_ecp5ddrphy_counter == 7'd80)) begin
		ethernetsoc_ecp5ddrphy_pause1 <= 1'd0;
	end
	if ((ethernetsoc_ecp5ddrphy_counter == 7'd80)) begin
		ethernetsoc_ecp5ddrphy_counter <= 1'd0;
	end else begin
		if ((ethernetsoc_ecp5ddrphy_counter != 1'd0)) begin
			ethernetsoc_ecp5ddrphy_counter <= (ethernetsoc_ecp5ddrphy_counter + 1'd1);
		end else begin
			if (ethernetsoc_ecp5ddrphy_new_lock) begin
				ethernetsoc_ecp5ddrphy_counter <= 1'd1;
			end
		end
	end
	ethernetsoc_ecp5ddrphy_lock_d <= ethernetsoc_ecp5ddrphy_lock1;
	if (init_rst) begin
		ethernetsoc_ecp5ddrphy_update <= 1'd0;
		ethernetsoc_ecp5ddrphy_stop1 <= 1'd0;
		ethernetsoc_ecp5ddrphy_freeze <= 1'd0;
		ethernetsoc_ecp5ddrphy_pause1 <= 1'd0;
		ethernetsoc_ecp5ddrphy_reset <= 1'd0;
		ethernetsoc_ecp5ddrphy_lock_d <= 1'd0;
		ethernetsoc_ecp5ddrphy_counter <= 7'd0;
	end
	multiregimpl1_regs0 <= ethernetsoc_ecp5ddrphy_lock0;
	multiregimpl1_regs1 <= multiregimpl1_regs0;
end

always @(posedge por_clk) begin
	if ((~ethernetsoc_por_done)) begin
		ethernetsoc_por_count <= (ethernetsoc_por_count - 1'd1);
	end
end

always @(posedge sys_clk) begin
	ethernetsoc_led_counter <= (ethernetsoc_led_counter + 1'd1);
	ice_clkdiv <= (ice_clkdiv + 1'd1);
	if ((ethernetsoc_ctrl_bus_errors != 32'd4294967295)) begin
		if (ethernetsoc_ctrl_bus_error) begin
			ethernetsoc_ctrl_bus_errors <= (ethernetsoc_ctrl_bus_errors + 1'd1);
		end
	end
	ethernetsoc_rom_bus_ack <= 1'd0;
	if (((ethernetsoc_rom_bus_cyc & ethernetsoc_rom_bus_stb) & (~ethernetsoc_rom_bus_ack))) begin
		ethernetsoc_rom_bus_ack <= 1'd1;
	end
	ethernetsoc_sram_bus_ack <= 1'd0;
	if (((ethernetsoc_sram_bus_cyc & ethernetsoc_sram_bus_stb) & (~ethernetsoc_sram_bus_ack))) begin
		ethernetsoc_sram_bus_ack <= 1'd1;
	end
	ethernetsoc_interface_we <= 1'd0;
	ethernetsoc_interface_dat_w <= ethernetsoc_bus_wishbone_dat_w;
	ethernetsoc_interface_adr <= ethernetsoc_bus_wishbone_adr;
	ethernetsoc_bus_wishbone_dat_r <= ethernetsoc_interface_dat_r;
	if ((ethernetsoc_counter == 1'd1)) begin
		ethernetsoc_interface_we <= ethernetsoc_bus_wishbone_we;
	end
	if ((ethernetsoc_counter == 2'd2)) begin
		ethernetsoc_bus_wishbone_ack <= 1'd1;
	end
	if ((ethernetsoc_counter == 2'd3)) begin
		ethernetsoc_bus_wishbone_ack <= 1'd0;
	end
	if ((ethernetsoc_counter != 1'd0)) begin
		ethernetsoc_counter <= (ethernetsoc_counter + 1'd1);
	end else begin
		if ((ethernetsoc_bus_wishbone_cyc & ethernetsoc_bus_wishbone_stb)) begin
			ethernetsoc_counter <= 1'd1;
		end
	end
	ethernetsoc_uart_phy_sink_ready <= 1'd0;
	if (((ethernetsoc_uart_phy_sink_valid & (~ethernetsoc_uart_phy_tx_busy)) & (~ethernetsoc_uart_phy_sink_ready))) begin
		ethernetsoc_uart_phy_tx_reg <= ethernetsoc_uart_phy_sink_payload_data;
		ethernetsoc_uart_phy_tx_bitcount <= 1'd0;
		ethernetsoc_uart_phy_tx_busy <= 1'd1;
		serial_tx <= 1'd0;
	end else begin
		if ((ethernetsoc_uart_phy_uart_clk_txen & ethernetsoc_uart_phy_tx_busy)) begin
			ethernetsoc_uart_phy_tx_bitcount <= (ethernetsoc_uart_phy_tx_bitcount + 1'd1);
			if ((ethernetsoc_uart_phy_tx_bitcount == 4'd8)) begin
				serial_tx <= 1'd1;
			end else begin
				if ((ethernetsoc_uart_phy_tx_bitcount == 4'd9)) begin
					serial_tx <= 1'd1;
					ethernetsoc_uart_phy_tx_busy <= 1'd0;
					ethernetsoc_uart_phy_sink_ready <= 1'd1;
				end else begin
					serial_tx <= ethernetsoc_uart_phy_tx_reg[0];
					ethernetsoc_uart_phy_tx_reg <= {1'd0, ethernetsoc_uart_phy_tx_reg[7:1]};
				end
			end
		end
	end
	if (ethernetsoc_uart_phy_tx_busy) begin
		{ethernetsoc_uart_phy_uart_clk_txen, ethernetsoc_uart_phy_phase_accumulator_tx} <= (ethernetsoc_uart_phy_phase_accumulator_tx + ethernetsoc_uart_phy_storage);
	end else begin
		{ethernetsoc_uart_phy_uart_clk_txen, ethernetsoc_uart_phy_phase_accumulator_tx} <= 1'd0;
	end
	ethernetsoc_uart_phy_source_valid <= 1'd0;
	ethernetsoc_uart_phy_rx_r <= ethernetsoc_uart_phy_rx;
	if ((~ethernetsoc_uart_phy_rx_busy)) begin
		if (((~ethernetsoc_uart_phy_rx) & ethernetsoc_uart_phy_rx_r)) begin
			ethernetsoc_uart_phy_rx_busy <= 1'd1;
			ethernetsoc_uart_phy_rx_bitcount <= 1'd0;
		end
	end else begin
		if (ethernetsoc_uart_phy_uart_clk_rxen) begin
			ethernetsoc_uart_phy_rx_bitcount <= (ethernetsoc_uart_phy_rx_bitcount + 1'd1);
			if ((ethernetsoc_uart_phy_rx_bitcount == 1'd0)) begin
				if (ethernetsoc_uart_phy_rx) begin
					ethernetsoc_uart_phy_rx_busy <= 1'd0;
				end
			end else begin
				if ((ethernetsoc_uart_phy_rx_bitcount == 4'd9)) begin
					ethernetsoc_uart_phy_rx_busy <= 1'd0;
					if (ethernetsoc_uart_phy_rx) begin
						ethernetsoc_uart_phy_source_payload_data <= ethernetsoc_uart_phy_rx_reg;
						ethernetsoc_uart_phy_source_valid <= 1'd1;
					end
				end else begin
					ethernetsoc_uart_phy_rx_reg <= {ethernetsoc_uart_phy_rx, ethernetsoc_uart_phy_rx_reg[7:1]};
				end
			end
		end
	end
	if (ethernetsoc_uart_phy_rx_busy) begin
		{ethernetsoc_uart_phy_uart_clk_rxen, ethernetsoc_uart_phy_phase_accumulator_rx} <= (ethernetsoc_uart_phy_phase_accumulator_rx + ethernetsoc_uart_phy_storage);
	end else begin
		{ethernetsoc_uart_phy_uart_clk_rxen, ethernetsoc_uart_phy_phase_accumulator_rx} <= 32'd2147483648;
	end
	if (ethernetsoc_uart_tx_clear) begin
		ethernetsoc_uart_tx_pending <= 1'd0;
	end
	ethernetsoc_uart_tx_old_trigger <= ethernetsoc_uart_tx_trigger;
	if (((~ethernetsoc_uart_tx_trigger) & ethernetsoc_uart_tx_old_trigger)) begin
		ethernetsoc_uart_tx_pending <= 1'd1;
	end
	if (ethernetsoc_uart_rx_clear) begin
		ethernetsoc_uart_rx_pending <= 1'd0;
	end
	ethernetsoc_uart_rx_old_trigger <= ethernetsoc_uart_rx_trigger;
	if (((~ethernetsoc_uart_rx_trigger) & ethernetsoc_uart_rx_old_trigger)) begin
		ethernetsoc_uart_rx_pending <= 1'd1;
	end
	if (ethernetsoc_uart_tx_fifo_syncfifo_re) begin
		ethernetsoc_uart_tx_fifo_readable <= 1'd1;
	end else begin
		if (ethernetsoc_uart_tx_fifo_re) begin
			ethernetsoc_uart_tx_fifo_readable <= 1'd0;
		end
	end
	if (((ethernetsoc_uart_tx_fifo_syncfifo_we & ethernetsoc_uart_tx_fifo_syncfifo_writable) & (~ethernetsoc_uart_tx_fifo_replace))) begin
		ethernetsoc_uart_tx_fifo_produce <= (ethernetsoc_uart_tx_fifo_produce + 1'd1);
	end
	if (ethernetsoc_uart_tx_fifo_do_read) begin
		ethernetsoc_uart_tx_fifo_consume <= (ethernetsoc_uart_tx_fifo_consume + 1'd1);
	end
	if (((ethernetsoc_uart_tx_fifo_syncfifo_we & ethernetsoc_uart_tx_fifo_syncfifo_writable) & (~ethernetsoc_uart_tx_fifo_replace))) begin
		if ((~ethernetsoc_uart_tx_fifo_do_read)) begin
			ethernetsoc_uart_tx_fifo_level0 <= (ethernetsoc_uart_tx_fifo_level0 + 1'd1);
		end
	end else begin
		if (ethernetsoc_uart_tx_fifo_do_read) begin
			ethernetsoc_uart_tx_fifo_level0 <= (ethernetsoc_uart_tx_fifo_level0 - 1'd1);
		end
	end
	if (ethernetsoc_uart_rx_fifo_syncfifo_re) begin
		ethernetsoc_uart_rx_fifo_readable <= 1'd1;
	end else begin
		if (ethernetsoc_uart_rx_fifo_re) begin
			ethernetsoc_uart_rx_fifo_readable <= 1'd0;
		end
	end
	if (((ethernetsoc_uart_rx_fifo_syncfifo_we & ethernetsoc_uart_rx_fifo_syncfifo_writable) & (~ethernetsoc_uart_rx_fifo_replace))) begin
		ethernetsoc_uart_rx_fifo_produce <= (ethernetsoc_uart_rx_fifo_produce + 1'd1);
	end
	if (ethernetsoc_uart_rx_fifo_do_read) begin
		ethernetsoc_uart_rx_fifo_consume <= (ethernetsoc_uart_rx_fifo_consume + 1'd1);
	end
	if (((ethernetsoc_uart_rx_fifo_syncfifo_we & ethernetsoc_uart_rx_fifo_syncfifo_writable) & (~ethernetsoc_uart_rx_fifo_replace))) begin
		if ((~ethernetsoc_uart_rx_fifo_do_read)) begin
			ethernetsoc_uart_rx_fifo_level0 <= (ethernetsoc_uart_rx_fifo_level0 + 1'd1);
		end
	end else begin
		if (ethernetsoc_uart_rx_fifo_do_read) begin
			ethernetsoc_uart_rx_fifo_level0 <= (ethernetsoc_uart_rx_fifo_level0 - 1'd1);
		end
	end
	if (ethernetsoc_uart_reset) begin
		ethernetsoc_uart_tx_pending <= 1'd0;
		ethernetsoc_uart_tx_old_trigger <= 1'd0;
		ethernetsoc_uart_rx_pending <= 1'd0;
		ethernetsoc_uart_rx_old_trigger <= 1'd0;
		ethernetsoc_uart_tx_fifo_readable <= 1'd0;
		ethernetsoc_uart_tx_fifo_level0 <= 5'd0;
		ethernetsoc_uart_tx_fifo_produce <= 4'd0;
		ethernetsoc_uart_tx_fifo_consume <= 4'd0;
		ethernetsoc_uart_rx_fifo_readable <= 1'd0;
		ethernetsoc_uart_rx_fifo_level0 <= 5'd0;
		ethernetsoc_uart_rx_fifo_produce <= 4'd0;
		ethernetsoc_uart_rx_fifo_consume <= 4'd0;
	end
	if (ethernetsoc_timer0_en_storage) begin
		if ((ethernetsoc_timer0_value == 1'd0)) begin
			ethernetsoc_timer0_value <= ethernetsoc_timer0_reload_storage;
		end else begin
			ethernetsoc_timer0_value <= (ethernetsoc_timer0_value - 1'd1);
		end
	end else begin
		ethernetsoc_timer0_value <= ethernetsoc_timer0_load_storage;
	end
	if (ethernetsoc_timer0_update_value_re) begin
		ethernetsoc_timer0_value_status <= ethernetsoc_timer0_value;
	end
	if (ethernetsoc_timer0_zero_clear) begin
		ethernetsoc_timer0_zero_pending <= 1'd0;
	end
	ethernetsoc_timer0_zero_old_trigger <= ethernetsoc_timer0_zero_trigger;
	if (((~ethernetsoc_timer0_zero_trigger) & ethernetsoc_timer0_zero_old_trigger)) begin
		ethernetsoc_timer0_zero_pending <= 1'd1;
	end
	if (ethernetsoc_ecp5ddrphy_storage[0]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_rst_re) begin
			ethernetsoc_ecp5ddrphy_rdly0 <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_inc_re) begin
				ethernetsoc_ecp5ddrphy_rdly0 <= (ethernetsoc_ecp5ddrphy_rdly0 + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_burstdet_d0 <= ethernetsoc_ecp5ddrphy_burstdet0;
	if (ethernetsoc_ecp5ddrphy_burstdet_clr_re) begin
		ethernetsoc_ecp5ddrphy_status[0] <= 1'd0;
	end else begin
		if ((ethernetsoc_ecp5ddrphy_burstdet0 & (~ethernetsoc_ecp5ddrphy_burstdet_d0))) begin
			ethernetsoc_ecp5ddrphy_status[0] <= 1'd1;
		end
	end
	ethernetsoc_ecp5ddrphy_dm_o_data_d0 <= ethernetsoc_ecp5ddrphy_dm_o_data0;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dm_o_data_muxed0 <= ethernetsoc_ecp5ddrphy_dm_o_data_d0[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dm_o_data_muxed0 <= ethernetsoc_ecp5ddrphy_dm_o_data0[3:0];
	end
	ethernetsoc_ecp5ddrphy_dq_o_data_d0 <= ethernetsoc_ecp5ddrphy_dq_o_data0;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed0 <= ethernetsoc_ecp5ddrphy_dq_o_data_d0[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed0 <= ethernetsoc_ecp5ddrphy_dq_o_data0[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[0]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip0_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip0_value <= (ethernetsoc_ecp5ddrphy_bitslip0_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d0 <= ethernetsoc_ecp5ddrphy_bitslip0_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d1 <= ethernetsoc_ecp5ddrphy_dq_o_data1;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed1 <= ethernetsoc_ecp5ddrphy_dq_o_data_d1[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed1 <= ethernetsoc_ecp5ddrphy_dq_o_data1[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[0]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip1_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip1_value <= (ethernetsoc_ecp5ddrphy_bitslip1_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d1 <= ethernetsoc_ecp5ddrphy_bitslip1_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d2 <= ethernetsoc_ecp5ddrphy_dq_o_data2;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed2 <= ethernetsoc_ecp5ddrphy_dq_o_data_d2[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed2 <= ethernetsoc_ecp5ddrphy_dq_o_data2[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[0]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip2_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip2_value <= (ethernetsoc_ecp5ddrphy_bitslip2_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d2 <= ethernetsoc_ecp5ddrphy_bitslip2_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d3 <= ethernetsoc_ecp5ddrphy_dq_o_data3;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed3 <= ethernetsoc_ecp5ddrphy_dq_o_data_d3[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed3 <= ethernetsoc_ecp5ddrphy_dq_o_data3[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[0]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip3_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip3_value <= (ethernetsoc_ecp5ddrphy_bitslip3_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d3 <= ethernetsoc_ecp5ddrphy_bitslip3_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d4 <= ethernetsoc_ecp5ddrphy_dq_o_data4;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed4 <= ethernetsoc_ecp5ddrphy_dq_o_data_d4[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed4 <= ethernetsoc_ecp5ddrphy_dq_o_data4[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[0]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip4_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip4_value <= (ethernetsoc_ecp5ddrphy_bitslip4_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d4 <= ethernetsoc_ecp5ddrphy_bitslip4_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d5 <= ethernetsoc_ecp5ddrphy_dq_o_data5;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed5 <= ethernetsoc_ecp5ddrphy_dq_o_data_d5[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed5 <= ethernetsoc_ecp5ddrphy_dq_o_data5[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[0]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip5_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip5_value <= (ethernetsoc_ecp5ddrphy_bitslip5_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d5 <= ethernetsoc_ecp5ddrphy_bitslip5_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d6 <= ethernetsoc_ecp5ddrphy_dq_o_data6;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed6 <= ethernetsoc_ecp5ddrphy_dq_o_data_d6[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed6 <= ethernetsoc_ecp5ddrphy_dq_o_data6[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[0]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip6_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip6_value <= (ethernetsoc_ecp5ddrphy_bitslip6_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d6 <= ethernetsoc_ecp5ddrphy_bitslip6_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d7 <= ethernetsoc_ecp5ddrphy_dq_o_data7;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed7 <= ethernetsoc_ecp5ddrphy_dq_o_data_d7[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed7 <= ethernetsoc_ecp5ddrphy_dq_o_data7[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[0]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip7_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip7_value <= (ethernetsoc_ecp5ddrphy_bitslip7_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d7 <= ethernetsoc_ecp5ddrphy_bitslip7_o;
	if (ethernetsoc_ecp5ddrphy_storage[1]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_rst_re) begin
			ethernetsoc_ecp5ddrphy_rdly1 <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_inc_re) begin
				ethernetsoc_ecp5ddrphy_rdly1 <= (ethernetsoc_ecp5ddrphy_rdly1 + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_burstdet_d1 <= ethernetsoc_ecp5ddrphy_burstdet1;
	if (ethernetsoc_ecp5ddrphy_burstdet_clr_re) begin
		ethernetsoc_ecp5ddrphy_status[1] <= 1'd0;
	end else begin
		if ((ethernetsoc_ecp5ddrphy_burstdet1 & (~ethernetsoc_ecp5ddrphy_burstdet_d1))) begin
			ethernetsoc_ecp5ddrphy_status[1] <= 1'd1;
		end
	end
	ethernetsoc_ecp5ddrphy_dm_o_data_d1 <= ethernetsoc_ecp5ddrphy_dm_o_data1;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dm_o_data_muxed1 <= ethernetsoc_ecp5ddrphy_dm_o_data_d1[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dm_o_data_muxed1 <= ethernetsoc_ecp5ddrphy_dm_o_data1[3:0];
	end
	ethernetsoc_ecp5ddrphy_dq_o_data_d8 <= ethernetsoc_ecp5ddrphy_dq_o_data8;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed8 <= ethernetsoc_ecp5ddrphy_dq_o_data_d8[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed8 <= ethernetsoc_ecp5ddrphy_dq_o_data8[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[1]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip8_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip8_value <= (ethernetsoc_ecp5ddrphy_bitslip8_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d8 <= ethernetsoc_ecp5ddrphy_bitslip8_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d9 <= ethernetsoc_ecp5ddrphy_dq_o_data9;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed9 <= ethernetsoc_ecp5ddrphy_dq_o_data_d9[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed9 <= ethernetsoc_ecp5ddrphy_dq_o_data9[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[1]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip9_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip9_value <= (ethernetsoc_ecp5ddrphy_bitslip9_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d9 <= ethernetsoc_ecp5ddrphy_bitslip9_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d10 <= ethernetsoc_ecp5ddrphy_dq_o_data10;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed10 <= ethernetsoc_ecp5ddrphy_dq_o_data_d10[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed10 <= ethernetsoc_ecp5ddrphy_dq_o_data10[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[1]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip10_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip10_value <= (ethernetsoc_ecp5ddrphy_bitslip10_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d10 <= ethernetsoc_ecp5ddrphy_bitslip10_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d11 <= ethernetsoc_ecp5ddrphy_dq_o_data11;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed11 <= ethernetsoc_ecp5ddrphy_dq_o_data_d11[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed11 <= ethernetsoc_ecp5ddrphy_dq_o_data11[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[1]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip11_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip11_value <= (ethernetsoc_ecp5ddrphy_bitslip11_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d11 <= ethernetsoc_ecp5ddrphy_bitslip11_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d12 <= ethernetsoc_ecp5ddrphy_dq_o_data12;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed12 <= ethernetsoc_ecp5ddrphy_dq_o_data_d12[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed12 <= ethernetsoc_ecp5ddrphy_dq_o_data12[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[1]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip12_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip12_value <= (ethernetsoc_ecp5ddrphy_bitslip12_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d12 <= ethernetsoc_ecp5ddrphy_bitslip12_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d13 <= ethernetsoc_ecp5ddrphy_dq_o_data13;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed13 <= ethernetsoc_ecp5ddrphy_dq_o_data_d13[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed13 <= ethernetsoc_ecp5ddrphy_dq_o_data13[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[1]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip13_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip13_value <= (ethernetsoc_ecp5ddrphy_bitslip13_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d13 <= ethernetsoc_ecp5ddrphy_bitslip13_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d14 <= ethernetsoc_ecp5ddrphy_dq_o_data14;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed14 <= ethernetsoc_ecp5ddrphy_dq_o_data_d14[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed14 <= ethernetsoc_ecp5ddrphy_dq_o_data14[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[1]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip14_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip14_value <= (ethernetsoc_ecp5ddrphy_bitslip14_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d14 <= ethernetsoc_ecp5ddrphy_bitslip14_o;
	ethernetsoc_ecp5ddrphy_dq_o_data_d15 <= ethernetsoc_ecp5ddrphy_dq_o_data15;
	if (ethernetsoc_ecp5ddrphy_bl8_sel) begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed15 <= ethernetsoc_ecp5ddrphy_dq_o_data_d15[7:4];
	end else begin
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed15 <= ethernetsoc_ecp5ddrphy_dq_o_data15[3:0];
	end
	if (ethernetsoc_ecp5ddrphy_storage[1]) begin
		if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_re) begin
			ethernetsoc_ecp5ddrphy_bitslip15_value <= 1'd0;
		end else begin
			if (ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_re) begin
				ethernetsoc_ecp5ddrphy_bitslip15_value <= (ethernetsoc_ecp5ddrphy_bitslip15_value + 1'd1);
			end
		end
	end
	ethernetsoc_ecp5ddrphy_dq_bitslip_o_d15 <= ethernetsoc_ecp5ddrphy_bitslip15_o;
	ethernetsoc_ecp5ddrphy_n_rddata_en0 <= ethernetsoc_ecp5ddrphy_dfi_p0_rddata_en;
	ethernetsoc_ecp5ddrphy_n_rddata_en1 <= ethernetsoc_ecp5ddrphy_n_rddata_en0;
	ethernetsoc_ecp5ddrphy_n_rddata_en2 <= ethernetsoc_ecp5ddrphy_n_rddata_en1;
	ethernetsoc_ecp5ddrphy_n_rddata_en3 <= ethernetsoc_ecp5ddrphy_n_rddata_en2;
	ethernetsoc_ecp5ddrphy_n_rddata_en4 <= ethernetsoc_ecp5ddrphy_n_rddata_en3;
	ethernetsoc_ecp5ddrphy_n_rddata_en5 <= ethernetsoc_ecp5ddrphy_n_rddata_en4;
	ethernetsoc_ecp5ddrphy_n_rddata_en6 <= ethernetsoc_ecp5ddrphy_n_rddata_en5;
	ethernetsoc_ecp5ddrphy_n_rddata_en7 <= ethernetsoc_ecp5ddrphy_n_rddata_en6;
	ethernetsoc_ecp5ddrphy_n_rddata_en8 <= ethernetsoc_ecp5ddrphy_n_rddata_en7;
	ethernetsoc_ecp5ddrphy_n_rddata_en9 <= ethernetsoc_ecp5ddrphy_n_rddata_en8;
	ethernetsoc_ecp5ddrphy_n_rddata_en10 <= ethernetsoc_ecp5ddrphy_n_rddata_en9;
	ethernetsoc_ecp5ddrphy_n_rddata_en11 <= ethernetsoc_ecp5ddrphy_n_rddata_en10;
	ethernetsoc_ecp5ddrphy_n_rddata_en12 <= ethernetsoc_ecp5ddrphy_n_rddata_en11;
	ethernetsoc_ecp5ddrphy_dfi_p0_rddata_valid <= ethernetsoc_ecp5ddrphy_n_rddata_en12;
	ethernetsoc_ecp5ddrphy_dfi_p1_rddata_valid <= ethernetsoc_ecp5ddrphy_n_rddata_en12;
	ethernetsoc_ecp5ddrphy_dfi_p2_rddata_valid <= ethernetsoc_ecp5ddrphy_n_rddata_en12;
	ethernetsoc_ecp5ddrphy_dfi_p3_rddata_valid <= ethernetsoc_ecp5ddrphy_n_rddata_en12;
	ethernetsoc_ecp5ddrphy_last_wrdata_en <= {ethernetsoc_ecp5ddrphy_last_wrdata_en[4:0], ethernetsoc_ecp5ddrphy_dfi_p1_wrdata_en};
	ethernetsoc_ecp5ddrphy_oe_dqs <= ethernetsoc_ecp5ddrphy_oe;
	ethernetsoc_ecp5ddrphy_oe_dq <= ethernetsoc_ecp5ddrphy_oe;
	ethernetsoc_ecp5ddrphy_bl8_sel <= ethernetsoc_ecp5ddrphy_last_wrdata_en[2];
	ethernetsoc_ecp5ddrphy_dqs_preamble <= ethernetsoc_ecp5ddrphy_last_wrdata_en[1];
	ethernetsoc_ecp5ddrphy_dqs_postamble <= ethernetsoc_ecp5ddrphy_oe_dqs;
	ethernetsoc_ecp5ddrphy_bitslip0_r <= {ethernetsoc_ecp5ddrphy_bitslip0_i, ethernetsoc_ecp5ddrphy_bitslip0_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip0_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip0_o <= ethernetsoc_ecp5ddrphy_bitslip0_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip0_o <= ethernetsoc_ecp5ddrphy_bitslip0_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip0_o <= ethernetsoc_ecp5ddrphy_bitslip0_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip0_o <= ethernetsoc_ecp5ddrphy_bitslip0_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip1_r <= {ethernetsoc_ecp5ddrphy_bitslip1_i, ethernetsoc_ecp5ddrphy_bitslip1_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip1_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip1_o <= ethernetsoc_ecp5ddrphy_bitslip1_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip1_o <= ethernetsoc_ecp5ddrphy_bitslip1_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip1_o <= ethernetsoc_ecp5ddrphy_bitslip1_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip1_o <= ethernetsoc_ecp5ddrphy_bitslip1_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip2_r <= {ethernetsoc_ecp5ddrphy_bitslip2_i, ethernetsoc_ecp5ddrphy_bitslip2_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip2_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip2_o <= ethernetsoc_ecp5ddrphy_bitslip2_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip2_o <= ethernetsoc_ecp5ddrphy_bitslip2_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip2_o <= ethernetsoc_ecp5ddrphy_bitslip2_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip2_o <= ethernetsoc_ecp5ddrphy_bitslip2_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip3_r <= {ethernetsoc_ecp5ddrphy_bitslip3_i, ethernetsoc_ecp5ddrphy_bitslip3_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip3_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip3_o <= ethernetsoc_ecp5ddrphy_bitslip3_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip3_o <= ethernetsoc_ecp5ddrphy_bitslip3_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip3_o <= ethernetsoc_ecp5ddrphy_bitslip3_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip3_o <= ethernetsoc_ecp5ddrphy_bitslip3_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip4_r <= {ethernetsoc_ecp5ddrphy_bitslip4_i, ethernetsoc_ecp5ddrphy_bitslip4_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip4_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip4_o <= ethernetsoc_ecp5ddrphy_bitslip4_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip4_o <= ethernetsoc_ecp5ddrphy_bitslip4_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip4_o <= ethernetsoc_ecp5ddrphy_bitslip4_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip4_o <= ethernetsoc_ecp5ddrphy_bitslip4_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip5_r <= {ethernetsoc_ecp5ddrphy_bitslip5_i, ethernetsoc_ecp5ddrphy_bitslip5_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip5_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip5_o <= ethernetsoc_ecp5ddrphy_bitslip5_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip5_o <= ethernetsoc_ecp5ddrphy_bitslip5_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip5_o <= ethernetsoc_ecp5ddrphy_bitslip5_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip5_o <= ethernetsoc_ecp5ddrphy_bitslip5_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip6_r <= {ethernetsoc_ecp5ddrphy_bitslip6_i, ethernetsoc_ecp5ddrphy_bitslip6_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip6_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip6_o <= ethernetsoc_ecp5ddrphy_bitslip6_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip6_o <= ethernetsoc_ecp5ddrphy_bitslip6_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip6_o <= ethernetsoc_ecp5ddrphy_bitslip6_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip6_o <= ethernetsoc_ecp5ddrphy_bitslip6_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip7_r <= {ethernetsoc_ecp5ddrphy_bitslip7_i, ethernetsoc_ecp5ddrphy_bitslip7_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip7_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip7_o <= ethernetsoc_ecp5ddrphy_bitslip7_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip7_o <= ethernetsoc_ecp5ddrphy_bitslip7_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip7_o <= ethernetsoc_ecp5ddrphy_bitslip7_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip7_o <= ethernetsoc_ecp5ddrphy_bitslip7_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip8_r <= {ethernetsoc_ecp5ddrphy_bitslip8_i, ethernetsoc_ecp5ddrphy_bitslip8_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip8_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip8_o <= ethernetsoc_ecp5ddrphy_bitslip8_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip8_o <= ethernetsoc_ecp5ddrphy_bitslip8_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip8_o <= ethernetsoc_ecp5ddrphy_bitslip8_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip8_o <= ethernetsoc_ecp5ddrphy_bitslip8_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip9_r <= {ethernetsoc_ecp5ddrphy_bitslip9_i, ethernetsoc_ecp5ddrphy_bitslip9_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip9_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip9_o <= ethernetsoc_ecp5ddrphy_bitslip9_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip9_o <= ethernetsoc_ecp5ddrphy_bitslip9_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip9_o <= ethernetsoc_ecp5ddrphy_bitslip9_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip9_o <= ethernetsoc_ecp5ddrphy_bitslip9_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip10_r <= {ethernetsoc_ecp5ddrphy_bitslip10_i, ethernetsoc_ecp5ddrphy_bitslip10_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip10_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip10_o <= ethernetsoc_ecp5ddrphy_bitslip10_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip10_o <= ethernetsoc_ecp5ddrphy_bitslip10_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip10_o <= ethernetsoc_ecp5ddrphy_bitslip10_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip10_o <= ethernetsoc_ecp5ddrphy_bitslip10_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip11_r <= {ethernetsoc_ecp5ddrphy_bitslip11_i, ethernetsoc_ecp5ddrphy_bitslip11_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip11_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip11_o <= ethernetsoc_ecp5ddrphy_bitslip11_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip11_o <= ethernetsoc_ecp5ddrphy_bitslip11_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip11_o <= ethernetsoc_ecp5ddrphy_bitslip11_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip11_o <= ethernetsoc_ecp5ddrphy_bitslip11_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip12_r <= {ethernetsoc_ecp5ddrphy_bitslip12_i, ethernetsoc_ecp5ddrphy_bitslip12_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip12_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip12_o <= ethernetsoc_ecp5ddrphy_bitslip12_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip12_o <= ethernetsoc_ecp5ddrphy_bitslip12_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip12_o <= ethernetsoc_ecp5ddrphy_bitslip12_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip12_o <= ethernetsoc_ecp5ddrphy_bitslip12_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip13_r <= {ethernetsoc_ecp5ddrphy_bitslip13_i, ethernetsoc_ecp5ddrphy_bitslip13_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip13_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip13_o <= ethernetsoc_ecp5ddrphy_bitslip13_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip13_o <= ethernetsoc_ecp5ddrphy_bitslip13_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip13_o <= ethernetsoc_ecp5ddrphy_bitslip13_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip13_o <= ethernetsoc_ecp5ddrphy_bitslip13_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip14_r <= {ethernetsoc_ecp5ddrphy_bitslip14_i, ethernetsoc_ecp5ddrphy_bitslip14_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip14_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip14_o <= ethernetsoc_ecp5ddrphy_bitslip14_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip14_o <= ethernetsoc_ecp5ddrphy_bitslip14_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip14_o <= ethernetsoc_ecp5ddrphy_bitslip14_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip14_o <= ethernetsoc_ecp5ddrphy_bitslip14_r[6:3];
		end
	endcase
	ethernetsoc_ecp5ddrphy_bitslip15_r <= {ethernetsoc_ecp5ddrphy_bitslip15_i, ethernetsoc_ecp5ddrphy_bitslip15_r[7:4]};
	case (ethernetsoc_ecp5ddrphy_bitslip15_value)
		1'd0: begin
			ethernetsoc_ecp5ddrphy_bitslip15_o <= ethernetsoc_ecp5ddrphy_bitslip15_r[3:0];
		end
		1'd1: begin
			ethernetsoc_ecp5ddrphy_bitslip15_o <= ethernetsoc_ecp5ddrphy_bitslip15_r[4:1];
		end
		2'd2: begin
			ethernetsoc_ecp5ddrphy_bitslip15_o <= ethernetsoc_ecp5ddrphy_bitslip15_r[5:2];
		end
		2'd3: begin
			ethernetsoc_ecp5ddrphy_bitslip15_o <= ethernetsoc_ecp5ddrphy_bitslip15_r[6:3];
		end
	endcase
	if (ethernetsoc_sdram_inti_p0_rddata_valid) begin
		ethernetsoc_sdram_phaseinjector0_status <= ethernetsoc_sdram_inti_p0_rddata;
	end
	if (ethernetsoc_sdram_inti_p1_rddata_valid) begin
		ethernetsoc_sdram_phaseinjector1_status <= ethernetsoc_sdram_inti_p1_rddata;
	end
	if (ethernetsoc_sdram_timer_wait) begin
		if ((~ethernetsoc_sdram_timer_done)) begin
			if ((ethernetsoc_sdram_timer_load & (ethernetsoc_sdram_timer_load_count < ethernetsoc_sdram_timer_count))) begin
				ethernetsoc_sdram_timer_count <= ethernetsoc_sdram_timer_load_count;
			end else begin
				ethernetsoc_sdram_timer_count <= (ethernetsoc_sdram_timer_count - 1'd1);
			end
		end
	end else begin
		ethernetsoc_sdram_timer_count <= 10'd586;
	end
	if (ethernetsoc_sdram_timer_reset) begin
		ethernetsoc_sdram_timer_count <= 10'd586;
	end
	ethernetsoc_sdram_cmd_payload_a <= 11'd1024;
	ethernetsoc_sdram_cmd_payload_ba <= 1'd0;
	ethernetsoc_sdram_cmd_payload_cas <= 1'd0;
	ethernetsoc_sdram_cmd_payload_ras <= 1'd0;
	ethernetsoc_sdram_cmd_payload_we <= 1'd0;
	ethernetsoc_sdram_generator_done <= 1'd0;
	if ((ethernetsoc_sdram_generator_counter == 1'd1)) begin
		ethernetsoc_sdram_cmd_payload_ras <= 1'd1;
		ethernetsoc_sdram_cmd_payload_we <= 1'd1;
	end
	if ((ethernetsoc_sdram_generator_counter == 2'd3)) begin
		ethernetsoc_sdram_cmd_payload_cas <= 1'd1;
		ethernetsoc_sdram_cmd_payload_ras <= 1'd1;
	end
	if ((ethernetsoc_sdram_generator_counter == 4'd14)) begin
		ethernetsoc_sdram_generator_done <= 1'd1;
	end
	if ((ethernetsoc_sdram_generator_counter == 4'd14)) begin
		ethernetsoc_sdram_generator_counter <= 1'd0;
	end else begin
		if ((ethernetsoc_sdram_generator_counter != 1'd0)) begin
			ethernetsoc_sdram_generator_counter <= (ethernetsoc_sdram_generator_counter + 1'd1);
		end else begin
			if (ethernetsoc_sdram_generator_start) begin
				ethernetsoc_sdram_generator_counter <= 1'd1;
			end
		end
	end
	refresher_state <= refresher_next_state;
	if (ethernetsoc_sdram_bankmachine0_row_close) begin
		ethernetsoc_sdram_bankmachine0_row_opened <= 1'd0;
	end else begin
		if (ethernetsoc_sdram_bankmachine0_row_open) begin
			ethernetsoc_sdram_bankmachine0_row_opened <= 1'd1;
			ethernetsoc_sdram_bankmachine0_row <= ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr[19:7];
		end
	end
	if (((ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce <= (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
		ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume <= (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_replace))) begin
		if ((~ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read)) begin
			ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_do_read) begin
			ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (ethernetsoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine0_cmd_buffer_valid_n <= ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_valid;
	end
	if (ethernetsoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine0_cmd_buffer_first_n <= (ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_first);
		ethernetsoc_sdram_bankmachine0_cmd_buffer_last_n <= (ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_last);
	end
	if (ethernetsoc_sdram_bankmachine0_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_we <= ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_payload_we;
		ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr <= ethernetsoc_sdram_bankmachine0_cmd_buffer_sink_payload_addr;
	end
	if (ethernetsoc_sdram_bankmachine0_twtpcon_valid) begin
		ethernetsoc_sdram_bankmachine0_twtpcon_count <= 3'd6;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine0_twtpcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine0_twtpcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine0_twtpcon_ready1)) begin
			ethernetsoc_sdram_bankmachine0_twtpcon_count <= (ethernetsoc_sdram_bankmachine0_twtpcon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine0_twtpcon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine0_twtpcon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine0_trccon_valid) begin
		ethernetsoc_sdram_bankmachine0_trccon_count <= 3'd4;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine0_trccon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine0_trccon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine0_trccon_ready1)) begin
			ethernetsoc_sdram_bankmachine0_trccon_count <= (ethernetsoc_sdram_bankmachine0_trccon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine0_trccon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine0_trccon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine0_trascon_valid) begin
		ethernetsoc_sdram_bankmachine0_trascon_count <= 2'd3;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine0_trascon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine0_trascon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine0_trascon_ready1)) begin
			ethernetsoc_sdram_bankmachine0_trascon_count <= (ethernetsoc_sdram_bankmachine0_trascon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine0_trascon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine0_trascon_ready1 <= 1'd1;
			end
		end
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (ethernetsoc_sdram_bankmachine1_row_close) begin
		ethernetsoc_sdram_bankmachine1_row_opened <= 1'd0;
	end else begin
		if (ethernetsoc_sdram_bankmachine1_row_open) begin
			ethernetsoc_sdram_bankmachine1_row_opened <= 1'd1;
			ethernetsoc_sdram_bankmachine1_row <= ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr[19:7];
		end
	end
	if (((ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce <= (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
		ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume <= (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_replace))) begin
		if ((~ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read)) begin
			ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_do_read) begin
			ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (ethernetsoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine1_cmd_buffer_valid_n <= ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_valid;
	end
	if (ethernetsoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine1_cmd_buffer_first_n <= (ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_first);
		ethernetsoc_sdram_bankmachine1_cmd_buffer_last_n <= (ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_last);
	end
	if (ethernetsoc_sdram_bankmachine1_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_we <= ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_payload_we;
		ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr <= ethernetsoc_sdram_bankmachine1_cmd_buffer_sink_payload_addr;
	end
	if (ethernetsoc_sdram_bankmachine1_twtpcon_valid) begin
		ethernetsoc_sdram_bankmachine1_twtpcon_count <= 3'd6;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine1_twtpcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine1_twtpcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine1_twtpcon_ready1)) begin
			ethernetsoc_sdram_bankmachine1_twtpcon_count <= (ethernetsoc_sdram_bankmachine1_twtpcon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine1_twtpcon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine1_twtpcon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine1_trccon_valid) begin
		ethernetsoc_sdram_bankmachine1_trccon_count <= 3'd4;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine1_trccon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine1_trccon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine1_trccon_ready1)) begin
			ethernetsoc_sdram_bankmachine1_trccon_count <= (ethernetsoc_sdram_bankmachine1_trccon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine1_trccon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine1_trccon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine1_trascon_valid) begin
		ethernetsoc_sdram_bankmachine1_trascon_count <= 2'd3;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine1_trascon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine1_trascon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine1_trascon_ready1)) begin
			ethernetsoc_sdram_bankmachine1_trascon_count <= (ethernetsoc_sdram_bankmachine1_trascon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine1_trascon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine1_trascon_ready1 <= 1'd1;
			end
		end
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (ethernetsoc_sdram_bankmachine2_row_close) begin
		ethernetsoc_sdram_bankmachine2_row_opened <= 1'd0;
	end else begin
		if (ethernetsoc_sdram_bankmachine2_row_open) begin
			ethernetsoc_sdram_bankmachine2_row_opened <= 1'd1;
			ethernetsoc_sdram_bankmachine2_row <= ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr[19:7];
		end
	end
	if (((ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce <= (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
		ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume <= (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_replace))) begin
		if ((~ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read)) begin
			ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_do_read) begin
			ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (ethernetsoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine2_cmd_buffer_valid_n <= ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_valid;
	end
	if (ethernetsoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine2_cmd_buffer_first_n <= (ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_first);
		ethernetsoc_sdram_bankmachine2_cmd_buffer_last_n <= (ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_last);
	end
	if (ethernetsoc_sdram_bankmachine2_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_we <= ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_payload_we;
		ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr <= ethernetsoc_sdram_bankmachine2_cmd_buffer_sink_payload_addr;
	end
	if (ethernetsoc_sdram_bankmachine2_twtpcon_valid) begin
		ethernetsoc_sdram_bankmachine2_twtpcon_count <= 3'd6;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine2_twtpcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine2_twtpcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine2_twtpcon_ready1)) begin
			ethernetsoc_sdram_bankmachine2_twtpcon_count <= (ethernetsoc_sdram_bankmachine2_twtpcon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine2_twtpcon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine2_twtpcon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine2_trccon_valid) begin
		ethernetsoc_sdram_bankmachine2_trccon_count <= 3'd4;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine2_trccon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine2_trccon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine2_trccon_ready1)) begin
			ethernetsoc_sdram_bankmachine2_trccon_count <= (ethernetsoc_sdram_bankmachine2_trccon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine2_trccon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine2_trccon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine2_trascon_valid) begin
		ethernetsoc_sdram_bankmachine2_trascon_count <= 2'd3;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine2_trascon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine2_trascon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine2_trascon_ready1)) begin
			ethernetsoc_sdram_bankmachine2_trascon_count <= (ethernetsoc_sdram_bankmachine2_trascon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine2_trascon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine2_trascon_ready1 <= 1'd1;
			end
		end
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (ethernetsoc_sdram_bankmachine3_row_close) begin
		ethernetsoc_sdram_bankmachine3_row_opened <= 1'd0;
	end else begin
		if (ethernetsoc_sdram_bankmachine3_row_open) begin
			ethernetsoc_sdram_bankmachine3_row_opened <= 1'd1;
			ethernetsoc_sdram_bankmachine3_row <= ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr[19:7];
		end
	end
	if (((ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce <= (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
		ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume <= (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_replace))) begin
		if ((~ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read)) begin
			ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_do_read) begin
			ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (ethernetsoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine3_cmd_buffer_valid_n <= ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_valid;
	end
	if (ethernetsoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine3_cmd_buffer_first_n <= (ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_first);
		ethernetsoc_sdram_bankmachine3_cmd_buffer_last_n <= (ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_last);
	end
	if (ethernetsoc_sdram_bankmachine3_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_we <= ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_payload_we;
		ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr <= ethernetsoc_sdram_bankmachine3_cmd_buffer_sink_payload_addr;
	end
	if (ethernetsoc_sdram_bankmachine3_twtpcon_valid) begin
		ethernetsoc_sdram_bankmachine3_twtpcon_count <= 3'd6;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine3_twtpcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine3_twtpcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine3_twtpcon_ready1)) begin
			ethernetsoc_sdram_bankmachine3_twtpcon_count <= (ethernetsoc_sdram_bankmachine3_twtpcon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine3_twtpcon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine3_twtpcon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine3_trccon_valid) begin
		ethernetsoc_sdram_bankmachine3_trccon_count <= 3'd4;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine3_trccon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine3_trccon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine3_trccon_ready1)) begin
			ethernetsoc_sdram_bankmachine3_trccon_count <= (ethernetsoc_sdram_bankmachine3_trccon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine3_trccon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine3_trccon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine3_trascon_valid) begin
		ethernetsoc_sdram_bankmachine3_trascon_count <= 2'd3;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine3_trascon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine3_trascon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine3_trascon_ready1)) begin
			ethernetsoc_sdram_bankmachine3_trascon_count <= (ethernetsoc_sdram_bankmachine3_trascon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine3_trascon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine3_trascon_ready1 <= 1'd1;
			end
		end
	end
	bankmachine3_state <= bankmachine3_next_state;
	if (ethernetsoc_sdram_bankmachine4_row_close) begin
		ethernetsoc_sdram_bankmachine4_row_opened <= 1'd0;
	end else begin
		if (ethernetsoc_sdram_bankmachine4_row_open) begin
			ethernetsoc_sdram_bankmachine4_row_opened <= 1'd1;
			ethernetsoc_sdram_bankmachine4_row <= ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr[19:7];
		end
	end
	if (((ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace))) begin
		ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce <= (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read) begin
		ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume <= (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_replace))) begin
		if ((~ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read)) begin
			ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_do_read) begin
			ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (ethernetsoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine4_cmd_buffer_valid_n <= ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_valid;
	end
	if (ethernetsoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine4_cmd_buffer_first_n <= (ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_first);
		ethernetsoc_sdram_bankmachine4_cmd_buffer_last_n <= (ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_last);
	end
	if (ethernetsoc_sdram_bankmachine4_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_we <= ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_payload_we;
		ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr <= ethernetsoc_sdram_bankmachine4_cmd_buffer_sink_payload_addr;
	end
	if (ethernetsoc_sdram_bankmachine4_twtpcon_valid) begin
		ethernetsoc_sdram_bankmachine4_twtpcon_count <= 3'd6;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine4_twtpcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine4_twtpcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine4_twtpcon_ready1)) begin
			ethernetsoc_sdram_bankmachine4_twtpcon_count <= (ethernetsoc_sdram_bankmachine4_twtpcon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine4_twtpcon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine4_twtpcon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine4_trccon_valid) begin
		ethernetsoc_sdram_bankmachine4_trccon_count <= 3'd4;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine4_trccon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine4_trccon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine4_trccon_ready1)) begin
			ethernetsoc_sdram_bankmachine4_trccon_count <= (ethernetsoc_sdram_bankmachine4_trccon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine4_trccon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine4_trccon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine4_trascon_valid) begin
		ethernetsoc_sdram_bankmachine4_trascon_count <= 2'd3;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine4_trascon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine4_trascon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine4_trascon_ready1)) begin
			ethernetsoc_sdram_bankmachine4_trascon_count <= (ethernetsoc_sdram_bankmachine4_trascon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine4_trascon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine4_trascon_ready1 <= 1'd1;
			end
		end
	end
	bankmachine4_state <= bankmachine4_next_state;
	if (ethernetsoc_sdram_bankmachine5_row_close) begin
		ethernetsoc_sdram_bankmachine5_row_opened <= 1'd0;
	end else begin
		if (ethernetsoc_sdram_bankmachine5_row_open) begin
			ethernetsoc_sdram_bankmachine5_row_opened <= 1'd1;
			ethernetsoc_sdram_bankmachine5_row <= ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr[19:7];
		end
	end
	if (((ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace))) begin
		ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce <= (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read) begin
		ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume <= (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_replace))) begin
		if ((~ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read)) begin
			ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_do_read) begin
			ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (ethernetsoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine5_cmd_buffer_valid_n <= ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_valid;
	end
	if (ethernetsoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine5_cmd_buffer_first_n <= (ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_first);
		ethernetsoc_sdram_bankmachine5_cmd_buffer_last_n <= (ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_last);
	end
	if (ethernetsoc_sdram_bankmachine5_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_we <= ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_payload_we;
		ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr <= ethernetsoc_sdram_bankmachine5_cmd_buffer_sink_payload_addr;
	end
	if (ethernetsoc_sdram_bankmachine5_twtpcon_valid) begin
		ethernetsoc_sdram_bankmachine5_twtpcon_count <= 3'd6;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine5_twtpcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine5_twtpcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine5_twtpcon_ready1)) begin
			ethernetsoc_sdram_bankmachine5_twtpcon_count <= (ethernetsoc_sdram_bankmachine5_twtpcon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine5_twtpcon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine5_twtpcon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine5_trccon_valid) begin
		ethernetsoc_sdram_bankmachine5_trccon_count <= 3'd4;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine5_trccon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine5_trccon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine5_trccon_ready1)) begin
			ethernetsoc_sdram_bankmachine5_trccon_count <= (ethernetsoc_sdram_bankmachine5_trccon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine5_trccon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine5_trccon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine5_trascon_valid) begin
		ethernetsoc_sdram_bankmachine5_trascon_count <= 2'd3;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine5_trascon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine5_trascon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine5_trascon_ready1)) begin
			ethernetsoc_sdram_bankmachine5_trascon_count <= (ethernetsoc_sdram_bankmachine5_trascon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine5_trascon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine5_trascon_ready1 <= 1'd1;
			end
		end
	end
	bankmachine5_state <= bankmachine5_next_state;
	if (ethernetsoc_sdram_bankmachine6_row_close) begin
		ethernetsoc_sdram_bankmachine6_row_opened <= 1'd0;
	end else begin
		if (ethernetsoc_sdram_bankmachine6_row_open) begin
			ethernetsoc_sdram_bankmachine6_row_opened <= 1'd1;
			ethernetsoc_sdram_bankmachine6_row <= ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr[19:7];
		end
	end
	if (((ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace))) begin
		ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce <= (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read) begin
		ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume <= (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_replace))) begin
		if ((~ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read)) begin
			ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_do_read) begin
			ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (ethernetsoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine6_cmd_buffer_valid_n <= ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_valid;
	end
	if (ethernetsoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine6_cmd_buffer_first_n <= (ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_first);
		ethernetsoc_sdram_bankmachine6_cmd_buffer_last_n <= (ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_last);
	end
	if (ethernetsoc_sdram_bankmachine6_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_we <= ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_payload_we;
		ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr <= ethernetsoc_sdram_bankmachine6_cmd_buffer_sink_payload_addr;
	end
	if (ethernetsoc_sdram_bankmachine6_twtpcon_valid) begin
		ethernetsoc_sdram_bankmachine6_twtpcon_count <= 3'd6;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine6_twtpcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine6_twtpcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine6_twtpcon_ready1)) begin
			ethernetsoc_sdram_bankmachine6_twtpcon_count <= (ethernetsoc_sdram_bankmachine6_twtpcon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine6_twtpcon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine6_twtpcon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine6_trccon_valid) begin
		ethernetsoc_sdram_bankmachine6_trccon_count <= 3'd4;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine6_trccon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine6_trccon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine6_trccon_ready1)) begin
			ethernetsoc_sdram_bankmachine6_trccon_count <= (ethernetsoc_sdram_bankmachine6_trccon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine6_trccon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine6_trccon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine6_trascon_valid) begin
		ethernetsoc_sdram_bankmachine6_trascon_count <= 2'd3;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine6_trascon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine6_trascon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine6_trascon_ready1)) begin
			ethernetsoc_sdram_bankmachine6_trascon_count <= (ethernetsoc_sdram_bankmachine6_trascon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine6_trascon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine6_trascon_ready1 <= 1'd1;
			end
		end
	end
	bankmachine6_state <= bankmachine6_next_state;
	if (ethernetsoc_sdram_bankmachine7_row_close) begin
		ethernetsoc_sdram_bankmachine7_row_opened <= 1'd0;
	end else begin
		if (ethernetsoc_sdram_bankmachine7_row_open) begin
			ethernetsoc_sdram_bankmachine7_row_opened <= 1'd1;
			ethernetsoc_sdram_bankmachine7_row <= ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr[19:7];
		end
	end
	if (((ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace))) begin
		ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce <= (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read) begin
		ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume <= (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_replace))) begin
		if ((~ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read)) begin
			ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_do_read) begin
			ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (ethernetsoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine7_cmd_buffer_valid_n <= ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_valid;
	end
	if (ethernetsoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine7_cmd_buffer_first_n <= (ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_first);
		ethernetsoc_sdram_bankmachine7_cmd_buffer_last_n <= (ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_valid & ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_last);
	end
	if (ethernetsoc_sdram_bankmachine7_cmd_buffer_pipe_ce) begin
		ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_we <= ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_payload_we;
		ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr <= ethernetsoc_sdram_bankmachine7_cmd_buffer_sink_payload_addr;
	end
	if (ethernetsoc_sdram_bankmachine7_twtpcon_valid) begin
		ethernetsoc_sdram_bankmachine7_twtpcon_count <= 3'd6;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine7_twtpcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine7_twtpcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine7_twtpcon_ready1)) begin
			ethernetsoc_sdram_bankmachine7_twtpcon_count <= (ethernetsoc_sdram_bankmachine7_twtpcon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine7_twtpcon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine7_twtpcon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine7_trccon_valid) begin
		ethernetsoc_sdram_bankmachine7_trccon_count <= 3'd4;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine7_trccon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine7_trccon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine7_trccon_ready1)) begin
			ethernetsoc_sdram_bankmachine7_trccon_count <= (ethernetsoc_sdram_bankmachine7_trccon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine7_trccon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine7_trccon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_bankmachine7_trascon_valid) begin
		ethernetsoc_sdram_bankmachine7_trascon_count <= 2'd3;
		if (1'd0) begin
			ethernetsoc_sdram_bankmachine7_trascon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_bankmachine7_trascon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_bankmachine7_trascon_ready1)) begin
			ethernetsoc_sdram_bankmachine7_trascon_count <= (ethernetsoc_sdram_bankmachine7_trascon_count - 1'd1);
			if ((ethernetsoc_sdram_bankmachine7_trascon_count == 1'd1)) begin
				ethernetsoc_sdram_bankmachine7_trascon_ready1 <= 1'd1;
			end
		end
	end
	bankmachine7_state <= bankmachine7_next_state;
	if ((~ethernetsoc_sdram_en0)) begin
		ethernetsoc_sdram_time0 <= 5'd31;
	end else begin
		if ((~ethernetsoc_sdram_max_time0)) begin
			ethernetsoc_sdram_time0 <= (ethernetsoc_sdram_time0 - 1'd1);
		end
	end
	if ((~ethernetsoc_sdram_en1)) begin
		ethernetsoc_sdram_time1 <= 4'd15;
	end else begin
		if ((~ethernetsoc_sdram_max_time1)) begin
			ethernetsoc_sdram_time1 <= (ethernetsoc_sdram_time1 - 1'd1);
		end
	end
	if (ethernetsoc_sdram_choose_cmd_ce) begin
		case (ethernetsoc_sdram_choose_cmd_grant)
			1'd0: begin
				if (ethernetsoc_sdram_choose_cmd_request[1]) begin
					ethernetsoc_sdram_choose_cmd_grant <= 1'd1;
				end else begin
					if (ethernetsoc_sdram_choose_cmd_request[2]) begin
						ethernetsoc_sdram_choose_cmd_grant <= 2'd2;
					end else begin
						if (ethernetsoc_sdram_choose_cmd_request[3]) begin
							ethernetsoc_sdram_choose_cmd_grant <= 2'd3;
						end else begin
							if (ethernetsoc_sdram_choose_cmd_request[4]) begin
								ethernetsoc_sdram_choose_cmd_grant <= 3'd4;
							end else begin
								if (ethernetsoc_sdram_choose_cmd_request[5]) begin
									ethernetsoc_sdram_choose_cmd_grant <= 3'd5;
								end else begin
									if (ethernetsoc_sdram_choose_cmd_request[6]) begin
										ethernetsoc_sdram_choose_cmd_grant <= 3'd6;
									end else begin
										if (ethernetsoc_sdram_choose_cmd_request[7]) begin
											ethernetsoc_sdram_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (ethernetsoc_sdram_choose_cmd_request[2]) begin
					ethernetsoc_sdram_choose_cmd_grant <= 2'd2;
				end else begin
					if (ethernetsoc_sdram_choose_cmd_request[3]) begin
						ethernetsoc_sdram_choose_cmd_grant <= 2'd3;
					end else begin
						if (ethernetsoc_sdram_choose_cmd_request[4]) begin
							ethernetsoc_sdram_choose_cmd_grant <= 3'd4;
						end else begin
							if (ethernetsoc_sdram_choose_cmd_request[5]) begin
								ethernetsoc_sdram_choose_cmd_grant <= 3'd5;
							end else begin
								if (ethernetsoc_sdram_choose_cmd_request[6]) begin
									ethernetsoc_sdram_choose_cmd_grant <= 3'd6;
								end else begin
									if (ethernetsoc_sdram_choose_cmd_request[7]) begin
										ethernetsoc_sdram_choose_cmd_grant <= 3'd7;
									end else begin
										if (ethernetsoc_sdram_choose_cmd_request[0]) begin
											ethernetsoc_sdram_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (ethernetsoc_sdram_choose_cmd_request[3]) begin
					ethernetsoc_sdram_choose_cmd_grant <= 2'd3;
				end else begin
					if (ethernetsoc_sdram_choose_cmd_request[4]) begin
						ethernetsoc_sdram_choose_cmd_grant <= 3'd4;
					end else begin
						if (ethernetsoc_sdram_choose_cmd_request[5]) begin
							ethernetsoc_sdram_choose_cmd_grant <= 3'd5;
						end else begin
							if (ethernetsoc_sdram_choose_cmd_request[6]) begin
								ethernetsoc_sdram_choose_cmd_grant <= 3'd6;
							end else begin
								if (ethernetsoc_sdram_choose_cmd_request[7]) begin
									ethernetsoc_sdram_choose_cmd_grant <= 3'd7;
								end else begin
									if (ethernetsoc_sdram_choose_cmd_request[0]) begin
										ethernetsoc_sdram_choose_cmd_grant <= 1'd0;
									end else begin
										if (ethernetsoc_sdram_choose_cmd_request[1]) begin
											ethernetsoc_sdram_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (ethernetsoc_sdram_choose_cmd_request[4]) begin
					ethernetsoc_sdram_choose_cmd_grant <= 3'd4;
				end else begin
					if (ethernetsoc_sdram_choose_cmd_request[5]) begin
						ethernetsoc_sdram_choose_cmd_grant <= 3'd5;
					end else begin
						if (ethernetsoc_sdram_choose_cmd_request[6]) begin
							ethernetsoc_sdram_choose_cmd_grant <= 3'd6;
						end else begin
							if (ethernetsoc_sdram_choose_cmd_request[7]) begin
								ethernetsoc_sdram_choose_cmd_grant <= 3'd7;
							end else begin
								if (ethernetsoc_sdram_choose_cmd_request[0]) begin
									ethernetsoc_sdram_choose_cmd_grant <= 1'd0;
								end else begin
									if (ethernetsoc_sdram_choose_cmd_request[1]) begin
										ethernetsoc_sdram_choose_cmd_grant <= 1'd1;
									end else begin
										if (ethernetsoc_sdram_choose_cmd_request[2]) begin
											ethernetsoc_sdram_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (ethernetsoc_sdram_choose_cmd_request[5]) begin
					ethernetsoc_sdram_choose_cmd_grant <= 3'd5;
				end else begin
					if (ethernetsoc_sdram_choose_cmd_request[6]) begin
						ethernetsoc_sdram_choose_cmd_grant <= 3'd6;
					end else begin
						if (ethernetsoc_sdram_choose_cmd_request[7]) begin
							ethernetsoc_sdram_choose_cmd_grant <= 3'd7;
						end else begin
							if (ethernetsoc_sdram_choose_cmd_request[0]) begin
								ethernetsoc_sdram_choose_cmd_grant <= 1'd0;
							end else begin
								if (ethernetsoc_sdram_choose_cmd_request[1]) begin
									ethernetsoc_sdram_choose_cmd_grant <= 1'd1;
								end else begin
									if (ethernetsoc_sdram_choose_cmd_request[2]) begin
										ethernetsoc_sdram_choose_cmd_grant <= 2'd2;
									end else begin
										if (ethernetsoc_sdram_choose_cmd_request[3]) begin
											ethernetsoc_sdram_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (ethernetsoc_sdram_choose_cmd_request[6]) begin
					ethernetsoc_sdram_choose_cmd_grant <= 3'd6;
				end else begin
					if (ethernetsoc_sdram_choose_cmd_request[7]) begin
						ethernetsoc_sdram_choose_cmd_grant <= 3'd7;
					end else begin
						if (ethernetsoc_sdram_choose_cmd_request[0]) begin
							ethernetsoc_sdram_choose_cmd_grant <= 1'd0;
						end else begin
							if (ethernetsoc_sdram_choose_cmd_request[1]) begin
								ethernetsoc_sdram_choose_cmd_grant <= 1'd1;
							end else begin
								if (ethernetsoc_sdram_choose_cmd_request[2]) begin
									ethernetsoc_sdram_choose_cmd_grant <= 2'd2;
								end else begin
									if (ethernetsoc_sdram_choose_cmd_request[3]) begin
										ethernetsoc_sdram_choose_cmd_grant <= 2'd3;
									end else begin
										if (ethernetsoc_sdram_choose_cmd_request[4]) begin
											ethernetsoc_sdram_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (ethernetsoc_sdram_choose_cmd_request[7]) begin
					ethernetsoc_sdram_choose_cmd_grant <= 3'd7;
				end else begin
					if (ethernetsoc_sdram_choose_cmd_request[0]) begin
						ethernetsoc_sdram_choose_cmd_grant <= 1'd0;
					end else begin
						if (ethernetsoc_sdram_choose_cmd_request[1]) begin
							ethernetsoc_sdram_choose_cmd_grant <= 1'd1;
						end else begin
							if (ethernetsoc_sdram_choose_cmd_request[2]) begin
								ethernetsoc_sdram_choose_cmd_grant <= 2'd2;
							end else begin
								if (ethernetsoc_sdram_choose_cmd_request[3]) begin
									ethernetsoc_sdram_choose_cmd_grant <= 2'd3;
								end else begin
									if (ethernetsoc_sdram_choose_cmd_request[4]) begin
										ethernetsoc_sdram_choose_cmd_grant <= 3'd4;
									end else begin
										if (ethernetsoc_sdram_choose_cmd_request[5]) begin
											ethernetsoc_sdram_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (ethernetsoc_sdram_choose_cmd_request[0]) begin
					ethernetsoc_sdram_choose_cmd_grant <= 1'd0;
				end else begin
					if (ethernetsoc_sdram_choose_cmd_request[1]) begin
						ethernetsoc_sdram_choose_cmd_grant <= 1'd1;
					end else begin
						if (ethernetsoc_sdram_choose_cmd_request[2]) begin
							ethernetsoc_sdram_choose_cmd_grant <= 2'd2;
						end else begin
							if (ethernetsoc_sdram_choose_cmd_request[3]) begin
								ethernetsoc_sdram_choose_cmd_grant <= 2'd3;
							end else begin
								if (ethernetsoc_sdram_choose_cmd_request[4]) begin
									ethernetsoc_sdram_choose_cmd_grant <= 3'd4;
								end else begin
									if (ethernetsoc_sdram_choose_cmd_request[5]) begin
										ethernetsoc_sdram_choose_cmd_grant <= 3'd5;
									end else begin
										if (ethernetsoc_sdram_choose_cmd_request[6]) begin
											ethernetsoc_sdram_choose_cmd_grant <= 3'd6;
										end
									end
								end
							end
						end
					end
				end
			end
		endcase
	end
	if (ethernetsoc_sdram_choose_req_ce) begin
		case (ethernetsoc_sdram_choose_req_grant)
			1'd0: begin
				if (ethernetsoc_sdram_choose_req_request[1]) begin
					ethernetsoc_sdram_choose_req_grant <= 1'd1;
				end else begin
					if (ethernetsoc_sdram_choose_req_request[2]) begin
						ethernetsoc_sdram_choose_req_grant <= 2'd2;
					end else begin
						if (ethernetsoc_sdram_choose_req_request[3]) begin
							ethernetsoc_sdram_choose_req_grant <= 2'd3;
						end else begin
							if (ethernetsoc_sdram_choose_req_request[4]) begin
								ethernetsoc_sdram_choose_req_grant <= 3'd4;
							end else begin
								if (ethernetsoc_sdram_choose_req_request[5]) begin
									ethernetsoc_sdram_choose_req_grant <= 3'd5;
								end else begin
									if (ethernetsoc_sdram_choose_req_request[6]) begin
										ethernetsoc_sdram_choose_req_grant <= 3'd6;
									end else begin
										if (ethernetsoc_sdram_choose_req_request[7]) begin
											ethernetsoc_sdram_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (ethernetsoc_sdram_choose_req_request[2]) begin
					ethernetsoc_sdram_choose_req_grant <= 2'd2;
				end else begin
					if (ethernetsoc_sdram_choose_req_request[3]) begin
						ethernetsoc_sdram_choose_req_grant <= 2'd3;
					end else begin
						if (ethernetsoc_sdram_choose_req_request[4]) begin
							ethernetsoc_sdram_choose_req_grant <= 3'd4;
						end else begin
							if (ethernetsoc_sdram_choose_req_request[5]) begin
								ethernetsoc_sdram_choose_req_grant <= 3'd5;
							end else begin
								if (ethernetsoc_sdram_choose_req_request[6]) begin
									ethernetsoc_sdram_choose_req_grant <= 3'd6;
								end else begin
									if (ethernetsoc_sdram_choose_req_request[7]) begin
										ethernetsoc_sdram_choose_req_grant <= 3'd7;
									end else begin
										if (ethernetsoc_sdram_choose_req_request[0]) begin
											ethernetsoc_sdram_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (ethernetsoc_sdram_choose_req_request[3]) begin
					ethernetsoc_sdram_choose_req_grant <= 2'd3;
				end else begin
					if (ethernetsoc_sdram_choose_req_request[4]) begin
						ethernetsoc_sdram_choose_req_grant <= 3'd4;
					end else begin
						if (ethernetsoc_sdram_choose_req_request[5]) begin
							ethernetsoc_sdram_choose_req_grant <= 3'd5;
						end else begin
							if (ethernetsoc_sdram_choose_req_request[6]) begin
								ethernetsoc_sdram_choose_req_grant <= 3'd6;
							end else begin
								if (ethernetsoc_sdram_choose_req_request[7]) begin
									ethernetsoc_sdram_choose_req_grant <= 3'd7;
								end else begin
									if (ethernetsoc_sdram_choose_req_request[0]) begin
										ethernetsoc_sdram_choose_req_grant <= 1'd0;
									end else begin
										if (ethernetsoc_sdram_choose_req_request[1]) begin
											ethernetsoc_sdram_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (ethernetsoc_sdram_choose_req_request[4]) begin
					ethernetsoc_sdram_choose_req_grant <= 3'd4;
				end else begin
					if (ethernetsoc_sdram_choose_req_request[5]) begin
						ethernetsoc_sdram_choose_req_grant <= 3'd5;
					end else begin
						if (ethernetsoc_sdram_choose_req_request[6]) begin
							ethernetsoc_sdram_choose_req_grant <= 3'd6;
						end else begin
							if (ethernetsoc_sdram_choose_req_request[7]) begin
								ethernetsoc_sdram_choose_req_grant <= 3'd7;
							end else begin
								if (ethernetsoc_sdram_choose_req_request[0]) begin
									ethernetsoc_sdram_choose_req_grant <= 1'd0;
								end else begin
									if (ethernetsoc_sdram_choose_req_request[1]) begin
										ethernetsoc_sdram_choose_req_grant <= 1'd1;
									end else begin
										if (ethernetsoc_sdram_choose_req_request[2]) begin
											ethernetsoc_sdram_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (ethernetsoc_sdram_choose_req_request[5]) begin
					ethernetsoc_sdram_choose_req_grant <= 3'd5;
				end else begin
					if (ethernetsoc_sdram_choose_req_request[6]) begin
						ethernetsoc_sdram_choose_req_grant <= 3'd6;
					end else begin
						if (ethernetsoc_sdram_choose_req_request[7]) begin
							ethernetsoc_sdram_choose_req_grant <= 3'd7;
						end else begin
							if (ethernetsoc_sdram_choose_req_request[0]) begin
								ethernetsoc_sdram_choose_req_grant <= 1'd0;
							end else begin
								if (ethernetsoc_sdram_choose_req_request[1]) begin
									ethernetsoc_sdram_choose_req_grant <= 1'd1;
								end else begin
									if (ethernetsoc_sdram_choose_req_request[2]) begin
										ethernetsoc_sdram_choose_req_grant <= 2'd2;
									end else begin
										if (ethernetsoc_sdram_choose_req_request[3]) begin
											ethernetsoc_sdram_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (ethernetsoc_sdram_choose_req_request[6]) begin
					ethernetsoc_sdram_choose_req_grant <= 3'd6;
				end else begin
					if (ethernetsoc_sdram_choose_req_request[7]) begin
						ethernetsoc_sdram_choose_req_grant <= 3'd7;
					end else begin
						if (ethernetsoc_sdram_choose_req_request[0]) begin
							ethernetsoc_sdram_choose_req_grant <= 1'd0;
						end else begin
							if (ethernetsoc_sdram_choose_req_request[1]) begin
								ethernetsoc_sdram_choose_req_grant <= 1'd1;
							end else begin
								if (ethernetsoc_sdram_choose_req_request[2]) begin
									ethernetsoc_sdram_choose_req_grant <= 2'd2;
								end else begin
									if (ethernetsoc_sdram_choose_req_request[3]) begin
										ethernetsoc_sdram_choose_req_grant <= 2'd3;
									end else begin
										if (ethernetsoc_sdram_choose_req_request[4]) begin
											ethernetsoc_sdram_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (ethernetsoc_sdram_choose_req_request[7]) begin
					ethernetsoc_sdram_choose_req_grant <= 3'd7;
				end else begin
					if (ethernetsoc_sdram_choose_req_request[0]) begin
						ethernetsoc_sdram_choose_req_grant <= 1'd0;
					end else begin
						if (ethernetsoc_sdram_choose_req_request[1]) begin
							ethernetsoc_sdram_choose_req_grant <= 1'd1;
						end else begin
							if (ethernetsoc_sdram_choose_req_request[2]) begin
								ethernetsoc_sdram_choose_req_grant <= 2'd2;
							end else begin
								if (ethernetsoc_sdram_choose_req_request[3]) begin
									ethernetsoc_sdram_choose_req_grant <= 2'd3;
								end else begin
									if (ethernetsoc_sdram_choose_req_request[4]) begin
										ethernetsoc_sdram_choose_req_grant <= 3'd4;
									end else begin
										if (ethernetsoc_sdram_choose_req_request[5]) begin
											ethernetsoc_sdram_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (ethernetsoc_sdram_choose_req_request[0]) begin
					ethernetsoc_sdram_choose_req_grant <= 1'd0;
				end else begin
					if (ethernetsoc_sdram_choose_req_request[1]) begin
						ethernetsoc_sdram_choose_req_grant <= 1'd1;
					end else begin
						if (ethernetsoc_sdram_choose_req_request[2]) begin
							ethernetsoc_sdram_choose_req_grant <= 2'd2;
						end else begin
							if (ethernetsoc_sdram_choose_req_request[3]) begin
								ethernetsoc_sdram_choose_req_grant <= 2'd3;
							end else begin
								if (ethernetsoc_sdram_choose_req_request[4]) begin
									ethernetsoc_sdram_choose_req_grant <= 3'd4;
								end else begin
									if (ethernetsoc_sdram_choose_req_request[5]) begin
										ethernetsoc_sdram_choose_req_grant <= 3'd5;
									end else begin
										if (ethernetsoc_sdram_choose_req_request[6]) begin
											ethernetsoc_sdram_choose_req_grant <= 3'd6;
										end
									end
								end
							end
						end
					end
				end
			end
		endcase
	end
	ethernetsoc_sdram_dfi_p0_cs_n <= 1'd0;
	ethernetsoc_sdram_dfi_p0_bank <= array_muxed0;
	ethernetsoc_sdram_dfi_p0_address <= array_muxed1;
	ethernetsoc_sdram_dfi_p0_cas_n <= (~array_muxed2);
	ethernetsoc_sdram_dfi_p0_ras_n <= (~array_muxed3);
	ethernetsoc_sdram_dfi_p0_we_n <= (~array_muxed4);
	ethernetsoc_sdram_dfi_p0_rddata_en <= array_muxed5;
	ethernetsoc_sdram_dfi_p0_wrdata_en <= array_muxed6;
	ethernetsoc_sdram_dfi_p1_cs_n <= 1'd0;
	ethernetsoc_sdram_dfi_p1_bank <= array_muxed7;
	ethernetsoc_sdram_dfi_p1_address <= array_muxed8;
	ethernetsoc_sdram_dfi_p1_cas_n <= (~array_muxed9);
	ethernetsoc_sdram_dfi_p1_ras_n <= (~array_muxed10);
	ethernetsoc_sdram_dfi_p1_we_n <= (~array_muxed11);
	ethernetsoc_sdram_dfi_p1_rddata_en <= array_muxed12;
	ethernetsoc_sdram_dfi_p1_wrdata_en <= array_muxed13;
	if (ethernetsoc_sdram_trrdcon_valid) begin
		ethernetsoc_sdram_trrdcon_count <= 1'd1;
		if (1'd0) begin
			ethernetsoc_sdram_trrdcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_trrdcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_trrdcon_ready1)) begin
			ethernetsoc_sdram_trrdcon_count <= (ethernetsoc_sdram_trrdcon_count - 1'd1);
			if ((ethernetsoc_sdram_trrdcon_count == 1'd1)) begin
				ethernetsoc_sdram_trrdcon_ready1 <= 1'd1;
			end
		end
	end
	ethernetsoc_sdram_tfawcon_window <= {ethernetsoc_sdram_tfawcon_window, ethernetsoc_sdram_tfawcon_valid};
	if ((ethernetsoc_sdram_tfawcon_count < 3'd4)) begin
		if ((ethernetsoc_sdram_tfawcon_count == 2'd3)) begin
			ethernetsoc_sdram_tfawcon_ready <= (~ethernetsoc_sdram_tfawcon_valid);
		end else begin
			ethernetsoc_sdram_tfawcon_ready <= 1'd1;
		end
	end
	if (ethernetsoc_sdram_tccdcon_valid) begin
		ethernetsoc_sdram_tccdcon_count <= 1'd1;
		if (1'd0) begin
			ethernetsoc_sdram_tccdcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_tccdcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_tccdcon_ready1)) begin
			ethernetsoc_sdram_tccdcon_count <= (ethernetsoc_sdram_tccdcon_count - 1'd1);
			if ((ethernetsoc_sdram_tccdcon_count == 1'd1)) begin
				ethernetsoc_sdram_tccdcon_ready1 <= 1'd1;
			end
		end
	end
	if (ethernetsoc_sdram_twtrcon_valid) begin
		ethernetsoc_sdram_twtrcon_count <= 3'd6;
		if (1'd0) begin
			ethernetsoc_sdram_twtrcon_ready1 <= 1'd1;
		end else begin
			ethernetsoc_sdram_twtrcon_ready1 <= 1'd0;
		end
	end else begin
		if ((~ethernetsoc_sdram_twtrcon_ready1)) begin
			ethernetsoc_sdram_twtrcon_count <= (ethernetsoc_sdram_twtrcon_count - 1'd1);
			if ((ethernetsoc_sdram_twtrcon_count == 1'd1)) begin
				ethernetsoc_sdram_twtrcon_ready1 <= 1'd1;
			end
		end
	end
	multiplexer_state <= multiplexer_next_state;
	if (((roundrobin0_grant == 1'd0) & ethernetsoc_sdram_interface_bank0_rdata_valid)) begin
		rbank <= 1'd0;
	end
	if (((roundrobin0_grant == 1'd0) & ethernetsoc_sdram_interface_bank0_wdata_ready)) begin
		wbank <= 1'd0;
	end
	if (((roundrobin1_grant == 1'd0) & ethernetsoc_sdram_interface_bank1_rdata_valid)) begin
		rbank <= 1'd1;
	end
	if (((roundrobin1_grant == 1'd0) & ethernetsoc_sdram_interface_bank1_wdata_ready)) begin
		wbank <= 1'd1;
	end
	if (((roundrobin2_grant == 1'd0) & ethernetsoc_sdram_interface_bank2_rdata_valid)) begin
		rbank <= 2'd2;
	end
	if (((roundrobin2_grant == 1'd0) & ethernetsoc_sdram_interface_bank2_wdata_ready)) begin
		wbank <= 2'd2;
	end
	if (((roundrobin3_grant == 1'd0) & ethernetsoc_sdram_interface_bank3_rdata_valid)) begin
		rbank <= 2'd3;
	end
	if (((roundrobin3_grant == 1'd0) & ethernetsoc_sdram_interface_bank3_wdata_ready)) begin
		wbank <= 2'd3;
	end
	if (((roundrobin4_grant == 1'd0) & ethernetsoc_sdram_interface_bank4_rdata_valid)) begin
		rbank <= 3'd4;
	end
	if (((roundrobin4_grant == 1'd0) & ethernetsoc_sdram_interface_bank4_wdata_ready)) begin
		wbank <= 3'd4;
	end
	if (((roundrobin5_grant == 1'd0) & ethernetsoc_sdram_interface_bank5_rdata_valid)) begin
		rbank <= 3'd5;
	end
	if (((roundrobin5_grant == 1'd0) & ethernetsoc_sdram_interface_bank5_wdata_ready)) begin
		wbank <= 3'd5;
	end
	if (((roundrobin6_grant == 1'd0) & ethernetsoc_sdram_interface_bank6_rdata_valid)) begin
		rbank <= 3'd6;
	end
	if (((roundrobin6_grant == 1'd0) & ethernetsoc_sdram_interface_bank6_wdata_ready)) begin
		wbank <= 3'd6;
	end
	if (((roundrobin7_grant == 1'd0) & ethernetsoc_sdram_interface_bank7_rdata_valid)) begin
		rbank <= 3'd7;
	end
	if (((roundrobin7_grant == 1'd0) & ethernetsoc_sdram_interface_bank7_wdata_ready)) begin
		wbank <= 3'd7;
	end
	new_master_wdata_ready0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & ethernetsoc_sdram_interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd0) & ethernetsoc_sdram_interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd0) & ethernetsoc_sdram_interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd0) & ethernetsoc_sdram_interface_bank3_wdata_ready)) | ((roundrobin4_grant == 1'd0) & ethernetsoc_sdram_interface_bank4_wdata_ready)) | ((roundrobin5_grant == 1'd0) & ethernetsoc_sdram_interface_bank5_wdata_ready)) | ((roundrobin6_grant == 1'd0) & ethernetsoc_sdram_interface_bank6_wdata_ready)) | ((roundrobin7_grant == 1'd0) & ethernetsoc_sdram_interface_bank7_wdata_ready));
	new_master_wdata_ready1 <= new_master_wdata_ready0;
	new_master_wdata_ready2 <= new_master_wdata_ready1;
	new_master_wdata_ready3 <= new_master_wdata_ready2;
	new_master_rdata_valid0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & ethernetsoc_sdram_interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd0) & ethernetsoc_sdram_interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd0) & ethernetsoc_sdram_interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd0) & ethernetsoc_sdram_interface_bank3_rdata_valid)) | ((roundrobin4_grant == 1'd0) & ethernetsoc_sdram_interface_bank4_rdata_valid)) | ((roundrobin5_grant == 1'd0) & ethernetsoc_sdram_interface_bank5_rdata_valid)) | ((roundrobin6_grant == 1'd0) & ethernetsoc_sdram_interface_bank6_rdata_valid)) | ((roundrobin7_grant == 1'd0) & ethernetsoc_sdram_interface_bank7_rdata_valid));
	new_master_rdata_valid1 <= new_master_rdata_valid0;
	new_master_rdata_valid2 <= new_master_rdata_valid1;
	new_master_rdata_valid3 <= new_master_rdata_valid2;
	new_master_rdata_valid4 <= new_master_rdata_valid3;
	new_master_rdata_valid5 <= new_master_rdata_valid4;
	new_master_rdata_valid6 <= new_master_rdata_valid5;
	new_master_rdata_valid7 <= new_master_rdata_valid6;
	new_master_rdata_valid8 <= new_master_rdata_valid7;
	new_master_rdata_valid9 <= new_master_rdata_valid8;
	new_master_rdata_valid10 <= new_master_rdata_valid9;
	new_master_rdata_valid11 <= new_master_rdata_valid10;
	new_master_rdata_valid12 <= new_master_rdata_valid11;
	new_master_rdata_valid13 <= new_master_rdata_valid12;
	new_master_rdata_valid14 <= new_master_rdata_valid13;
	ethernetsoc_adr_offset_r <= ethernetsoc_interface0_wb_sdram_adr[1:0];
	cache_state <= cache_next_state;
	litedramwishbone2native_state <= litedramwishbone2native_next_state;
	if (ethphy_counter_ce) begin
		ethphy_counter <= (ethphy_counter + 1'd1);
	end
	if (ethmac_ps_preamble_error_o) begin
		ethmac_preamble_errors_status <= (ethmac_preamble_errors_status + 1'd1);
	end
	if (ethmac_ps_crc_error_o) begin
		ethmac_crc_errors_status <= (ethmac_crc_errors_status + 1'd1);
	end
	ethmac_ps_preamble_error_toggle_o_r <= ethmac_ps_preamble_error_toggle_o;
	ethmac_ps_crc_error_toggle_o_r <= ethmac_ps_crc_error_toggle_o;
	ethmac_tx_cdc_graycounter0_q_binary <= ethmac_tx_cdc_graycounter0_q_next_binary;
	ethmac_tx_cdc_graycounter0_q <= ethmac_tx_cdc_graycounter0_q_next;
	ethmac_rx_cdc_graycounter1_q_binary <= ethmac_rx_cdc_graycounter1_q_next_binary;
	ethmac_rx_cdc_graycounter1_q <= ethmac_rx_cdc_graycounter1_q_next;
	if (ethmac_writer_counter_reset) begin
		ethmac_writer_counter <= 1'd0;
	end else begin
		if (ethmac_writer_counter_ce) begin
			ethmac_writer_counter <= (ethmac_writer_counter + ethmac_writer_inc);
		end
	end
	if (ethmac_writer_slot_ce) begin
		ethmac_writer_slot <= (ethmac_writer_slot + 1'd1);
	end
	if (((ethmac_writer_fifo_syncfifo_we & ethmac_writer_fifo_syncfifo_writable) & (~ethmac_writer_fifo_replace))) begin
		ethmac_writer_fifo_produce <= (ethmac_writer_fifo_produce + 1'd1);
	end
	if (ethmac_writer_fifo_do_read) begin
		ethmac_writer_fifo_consume <= (ethmac_writer_fifo_consume + 1'd1);
	end
	if (((ethmac_writer_fifo_syncfifo_we & ethmac_writer_fifo_syncfifo_writable) & (~ethmac_writer_fifo_replace))) begin
		if ((~ethmac_writer_fifo_do_read)) begin
			ethmac_writer_fifo_level <= (ethmac_writer_fifo_level + 1'd1);
		end
	end else begin
		if (ethmac_writer_fifo_do_read) begin
			ethmac_writer_fifo_level <= (ethmac_writer_fifo_level - 1'd1);
		end
	end
	liteethmacsramwriter_state <= liteethmacsramwriter_next_state;
	if (ethmac_writer_errors_status_next_value_ce) begin
		ethmac_writer_errors_status <= ethmac_writer_errors_status_next_value;
	end
	if (ethmac_reader_counter_reset) begin
		ethmac_reader_counter <= 1'd0;
	end else begin
		if (ethmac_reader_counter_ce) begin
			ethmac_reader_counter <= (ethmac_reader_counter + 3'd4);
		end
	end
	ethmac_reader_last_d <= ethmac_reader_last;
	if (ethmac_reader_done_clear) begin
		ethmac_reader_done_pending <= 1'd0;
	end
	if (ethmac_reader_done_trigger) begin
		ethmac_reader_done_pending <= 1'd1;
	end
	if (((ethmac_reader_fifo_syncfifo_we & ethmac_reader_fifo_syncfifo_writable) & (~ethmac_reader_fifo_replace))) begin
		ethmac_reader_fifo_produce <= (ethmac_reader_fifo_produce + 1'd1);
	end
	if (ethmac_reader_fifo_do_read) begin
		ethmac_reader_fifo_consume <= (ethmac_reader_fifo_consume + 1'd1);
	end
	if (((ethmac_reader_fifo_syncfifo_we & ethmac_reader_fifo_syncfifo_writable) & (~ethmac_reader_fifo_replace))) begin
		if ((~ethmac_reader_fifo_do_read)) begin
			ethmac_reader_fifo_level <= (ethmac_reader_fifo_level + 1'd1);
		end
	end else begin
		if (ethmac_reader_fifo_do_read) begin
			ethmac_reader_fifo_level <= (ethmac_reader_fifo_level - 1'd1);
		end
	end
	liteethmacsramreader_state <= liteethmacsramreader_next_state;
	ethmac_sram0_bus_ack0 <= 1'd0;
	if (((ethmac_sram0_bus_cyc0 & ethmac_sram0_bus_stb0) & (~ethmac_sram0_bus_ack0))) begin
		ethmac_sram0_bus_ack0 <= 1'd1;
	end
	ethmac_sram1_bus_ack0 <= 1'd0;
	if (((ethmac_sram1_bus_cyc0 & ethmac_sram1_bus_stb0) & (~ethmac_sram1_bus_ack0))) begin
		ethmac_sram1_bus_ack0 <= 1'd1;
	end
	ethmac_sram0_bus_ack1 <= 1'd0;
	if (((ethmac_sram0_bus_cyc1 & ethmac_sram0_bus_stb1) & (~ethmac_sram0_bus_ack1))) begin
		ethmac_sram0_bus_ack1 <= 1'd1;
	end
	ethmac_sram1_bus_ack1 <= 1'd0;
	if (((ethmac_sram1_bus_cyc1 & ethmac_sram1_bus_stb1) & (~ethmac_sram1_bus_ack1))) begin
		ethmac_sram1_bus_ack1 <= 1'd1;
	end
	ethmac_slave_sel_r <= ethmac_slave_sel;
	case (ethernetsoc_grant)
		1'd0: begin
			if ((~ethernetsoc_request[0])) begin
				if (ethernetsoc_request[1]) begin
					ethernetsoc_grant <= 1'd1;
				end
			end
		end
		1'd1: begin
			if ((~ethernetsoc_request[1])) begin
				if (ethernetsoc_request[0]) begin
					ethernetsoc_grant <= 1'd0;
				end
			end
		end
	endcase
	ethernetsoc_slave_sel_r <= ethernetsoc_slave_sel;
	if (ethernetsoc_wait) begin
		if ((~ethernetsoc_done)) begin
			ethernetsoc_count <= (ethernetsoc_count - 1'd1);
		end
	end else begin
		ethernetsoc_count <= 20'd1000000;
	end
	ethernetsoc_interface0_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank0_sel) begin
		case (ethernetsoc_interface0_bank_bus_adr[3:0])
			1'd0: begin
				ethernetsoc_interface0_bank_bus_dat_r <= ethernetsoc_ctrl_reset_reset_w;
			end
			1'd1: begin
				ethernetsoc_interface0_bank_bus_dat_r <= ethernetsoc_csrbank0_scratch3_w;
			end
			2'd2: begin
				ethernetsoc_interface0_bank_bus_dat_r <= ethernetsoc_csrbank0_scratch2_w;
			end
			2'd3: begin
				ethernetsoc_interface0_bank_bus_dat_r <= ethernetsoc_csrbank0_scratch1_w;
			end
			3'd4: begin
				ethernetsoc_interface0_bank_bus_dat_r <= ethernetsoc_csrbank0_scratch0_w;
			end
			3'd5: begin
				ethernetsoc_interface0_bank_bus_dat_r <= ethernetsoc_csrbank0_bus_errors3_w;
			end
			3'd6: begin
				ethernetsoc_interface0_bank_bus_dat_r <= ethernetsoc_csrbank0_bus_errors2_w;
			end
			3'd7: begin
				ethernetsoc_interface0_bank_bus_dat_r <= ethernetsoc_csrbank0_bus_errors1_w;
			end
			4'd8: begin
				ethernetsoc_interface0_bank_bus_dat_r <= ethernetsoc_csrbank0_bus_errors0_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank0_scratch3_re) begin
		ethernetsoc_ctrl_storage_full[31:24] <= ethernetsoc_csrbank0_scratch3_r;
	end
	if (ethernetsoc_csrbank0_scratch2_re) begin
		ethernetsoc_ctrl_storage_full[23:16] <= ethernetsoc_csrbank0_scratch2_r;
	end
	if (ethernetsoc_csrbank0_scratch1_re) begin
		ethernetsoc_ctrl_storage_full[15:8] <= ethernetsoc_csrbank0_scratch1_r;
	end
	if (ethernetsoc_csrbank0_scratch0_re) begin
		ethernetsoc_ctrl_storage_full[7:0] <= ethernetsoc_csrbank0_scratch0_r;
	end
	ethernetsoc_ctrl_re <= ethernetsoc_csrbank0_scratch0_re;
	ethernetsoc_interface1_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank1_sel) begin
		case (ethernetsoc_interface1_bank_bus_adr[2:0])
			1'd0: begin
				ethernetsoc_interface1_bank_bus_dat_r <= ethernetsoc_csrbank1_dly_sel0_w;
			end
			1'd1: begin
				ethernetsoc_interface1_bank_bus_dat_r <= ethernetsoc_ecp5ddrphy_rdly_dq_rst_w;
			end
			2'd2: begin
				ethernetsoc_interface1_bank_bus_dat_r <= ethernetsoc_ecp5ddrphy_rdly_dq_inc_w;
			end
			2'd3: begin
				ethernetsoc_interface1_bank_bus_dat_r <= ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_rst_w;
			end
			3'd4: begin
				ethernetsoc_interface1_bank_bus_dat_r <= ethernetsoc_ecp5ddrphy_rdly_dq_bitslip_w;
			end
			3'd5: begin
				ethernetsoc_interface1_bank_bus_dat_r <= ethernetsoc_ecp5ddrphy_burstdet_clr_w;
			end
			3'd6: begin
				ethernetsoc_interface1_bank_bus_dat_r <= ethernetsoc_csrbank1_burstdet_seen_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank1_dly_sel0_re) begin
		ethernetsoc_ecp5ddrphy_storage_full[1:0] <= ethernetsoc_csrbank1_dly_sel0_r;
	end
	ethernetsoc_ecp5ddrphy_re <= ethernetsoc_csrbank1_dly_sel0_re;
	ethernetsoc_interface2_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank2_sel) begin
		case (ethernetsoc_interface2_bank_bus_adr[4:0])
			1'd0: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_writer_slot_w;
			end
			1'd1: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_writer_length3_w;
			end
			2'd2: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_writer_length2_w;
			end
			2'd3: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_writer_length1_w;
			end
			3'd4: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_writer_length0_w;
			end
			3'd5: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_writer_errors3_w;
			end
			3'd6: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_writer_errors2_w;
			end
			3'd7: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_writer_errors1_w;
			end
			4'd8: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_writer_errors0_w;
			end
			4'd9: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethmac_writer_status_w;
			end
			4'd10: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethmac_writer_pending_w;
			end
			4'd11: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_writer_ev_enable0_w;
			end
			4'd12: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethmac_reader_start_w;
			end
			4'd13: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_reader_ready_w;
			end
			4'd14: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_reader_level_w;
			end
			4'd15: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_reader_slot0_w;
			end
			5'd16: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_reader_length1_w;
			end
			5'd17: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_reader_length0_w;
			end
			5'd18: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethmac_reader_eventmanager_status_w;
			end
			5'd19: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethmac_reader_eventmanager_pending_w;
			end
			5'd20: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_sram_reader_ev_enable0_w;
			end
			5'd21: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_preamble_crc_w;
			end
			5'd22: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_preamble_errors3_w;
			end
			5'd23: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_preamble_errors2_w;
			end
			5'd24: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_preamble_errors1_w;
			end
			5'd25: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_preamble_errors0_w;
			end
			5'd26: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_crc_errors3_w;
			end
			5'd27: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_crc_errors2_w;
			end
			5'd28: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_crc_errors1_w;
			end
			5'd29: begin
				ethernetsoc_interface2_bank_bus_dat_r <= ethernetsoc_csrbank2_crc_errors0_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank2_sram_writer_ev_enable0_re) begin
		ethmac_writer_storage_full <= ethernetsoc_csrbank2_sram_writer_ev_enable0_r;
	end
	ethmac_writer_re <= ethernetsoc_csrbank2_sram_writer_ev_enable0_re;
	if (ethernetsoc_csrbank2_sram_reader_slot0_re) begin
		ethmac_reader_slot_storage_full <= ethernetsoc_csrbank2_sram_reader_slot0_r;
	end
	ethmac_reader_slot_re <= ethernetsoc_csrbank2_sram_reader_slot0_re;
	if (ethernetsoc_csrbank2_sram_reader_length1_re) begin
		ethmac_reader_length_storage_full[10:8] <= ethernetsoc_csrbank2_sram_reader_length1_r;
	end
	if (ethernetsoc_csrbank2_sram_reader_length0_re) begin
		ethmac_reader_length_storage_full[7:0] <= ethernetsoc_csrbank2_sram_reader_length0_r;
	end
	ethmac_reader_length_re <= ethernetsoc_csrbank2_sram_reader_length0_re;
	if (ethernetsoc_csrbank2_sram_reader_ev_enable0_re) begin
		ethmac_reader_eventmanager_storage_full <= ethernetsoc_csrbank2_sram_reader_ev_enable0_r;
	end
	ethmac_reader_eventmanager_re <= ethernetsoc_csrbank2_sram_reader_ev_enable0_re;
	ethernetsoc_interface3_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank3_sel) begin
		case (ethernetsoc_interface3_bank_bus_adr[1:0])
			1'd0: begin
				ethernetsoc_interface3_bank_bus_dat_r <= ethernetsoc_csrbank3_crg_reset0_w;
			end
			1'd1: begin
				ethernetsoc_interface3_bank_bus_dat_r <= ethernetsoc_csrbank3_mdio_w0_w;
			end
			2'd2: begin
				ethernetsoc_interface3_bank_bus_dat_r <= ethernetsoc_csrbank3_mdio_r_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank3_crg_reset0_re) begin
		ethphy_reset_storage_full <= ethernetsoc_csrbank3_crg_reset0_r;
	end
	ethphy_reset_re <= ethernetsoc_csrbank3_crg_reset0_re;
	if (ethernetsoc_csrbank3_mdio_w0_re) begin
		ethphy_storage_full[2:0] <= ethernetsoc_csrbank3_mdio_w0_r;
	end
	ethphy_re <= ethernetsoc_csrbank3_mdio_w0_re;
	ethernetsoc_interface4_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank4_sel) begin
		case (ethernetsoc_interface4_bank_bus_adr[0])
			1'd0: begin
				ethernetsoc_interface4_bank_bus_dat_r <= ethernetsoc_csrbank4_out0_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank4_out0_re) begin
		ice_gpo_storage_full[3:0] <= ethernetsoc_csrbank4_out0_r;
	end
	ice_gpo_re <= ethernetsoc_csrbank4_out0_re;
	ethernetsoc_interface5_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank5_sel) begin
		case (ethernetsoc_interface5_bank_bus_adr[0])
			1'd0: begin
				ethernetsoc_interface5_bank_bus_dat_r <= ethernetsoc_csrbank5_in_w;
			end
		endcase
	end
	ethernetsoc_interface6_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank6_sel) begin
		case (ethernetsoc_interface6_bank_bus_adr[1:0])
			1'd0: begin
				ethernetsoc_interface6_bank_bus_dat_r <= max_spi_irq_status_w;
			end
			1'd1: begin
				ethernetsoc_interface6_bank_bus_dat_r <= max_spi_irq_pending_w;
			end
			2'd2: begin
				ethernetsoc_interface6_bank_bus_dat_r <= ethernetsoc_csrbank6_ev_enable0_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank6_ev_enable0_re) begin
		max_spi_irq_storage_full <= ethernetsoc_csrbank6_ev_enable0_r;
	end
	max_spi_irq_re <= ethernetsoc_csrbank6_ev_enable0_re;
	ethernetsoc_interface7_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank7_sel) begin
		case (ethernetsoc_interface7_bank_bus_adr[0])
			1'd0: begin
				ethernetsoc_interface7_bank_bus_dat_r <= ethernetsoc_csrbank7_out0_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank7_out0_re) begin
		max_spi_o_storage_full[2:0] <= ethernetsoc_csrbank7_out0_r;
	end
	max_spi_o_re <= ethernetsoc_csrbank7_out0_re;
	ethernetsoc_interface8_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank8_sel) begin
		case (ethernetsoc_interface8_bank_bus_adr[5:0])
			1'd0: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_control0_w;
			end
			1'd1: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_command0_w;
			end
			2'd2: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_sdram_phaseinjector0_command_issue_w;
			end
			2'd3: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_address1_w;
			end
			3'd4: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_address0_w;
			end
			3'd5: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_baddress0_w;
			end
			3'd6: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_wrdata7_w;
			end
			3'd7: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_wrdata6_w;
			end
			4'd8: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_wrdata5_w;
			end
			4'd9: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_wrdata4_w;
			end
			4'd10: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_wrdata3_w;
			end
			4'd11: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_wrdata2_w;
			end
			4'd12: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_wrdata1_w;
			end
			4'd13: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_wrdata0_w;
			end
			4'd14: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_rddata7_w;
			end
			4'd15: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_rddata6_w;
			end
			5'd16: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_rddata5_w;
			end
			5'd17: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_rddata4_w;
			end
			5'd18: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_rddata3_w;
			end
			5'd19: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_rddata2_w;
			end
			5'd20: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_rddata1_w;
			end
			5'd21: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi0_rddata0_w;
			end
			5'd22: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_command0_w;
			end
			5'd23: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_sdram_phaseinjector1_command_issue_w;
			end
			5'd24: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_address1_w;
			end
			5'd25: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_address0_w;
			end
			5'd26: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_baddress0_w;
			end
			5'd27: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_wrdata7_w;
			end
			5'd28: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_wrdata6_w;
			end
			5'd29: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_wrdata5_w;
			end
			5'd30: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_wrdata4_w;
			end
			5'd31: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_wrdata3_w;
			end
			6'd32: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_wrdata2_w;
			end
			6'd33: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_wrdata1_w;
			end
			6'd34: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_wrdata0_w;
			end
			6'd35: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_rddata7_w;
			end
			6'd36: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_rddata6_w;
			end
			6'd37: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_rddata5_w;
			end
			6'd38: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_rddata4_w;
			end
			6'd39: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_rddata3_w;
			end
			6'd40: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_rddata2_w;
			end
			6'd41: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_rddata1_w;
			end
			6'd42: begin
				ethernetsoc_interface8_bank_bus_dat_r <= ethernetsoc_csrbank8_dfii_pi1_rddata0_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank8_dfii_control0_re) begin
		ethernetsoc_sdram_storage_full[3:0] <= ethernetsoc_csrbank8_dfii_control0_r;
	end
	ethernetsoc_sdram_re <= ethernetsoc_csrbank8_dfii_control0_re;
	if (ethernetsoc_csrbank8_dfii_pi0_command0_re) begin
		ethernetsoc_sdram_phaseinjector0_command_storage_full[5:0] <= ethernetsoc_csrbank8_dfii_pi0_command0_r;
	end
	ethernetsoc_sdram_phaseinjector0_command_re <= ethernetsoc_csrbank8_dfii_pi0_command0_re;
	if (ethernetsoc_csrbank8_dfii_pi0_address1_re) begin
		ethernetsoc_sdram_phaseinjector0_address_storage_full[12:8] <= ethernetsoc_csrbank8_dfii_pi0_address1_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi0_address0_re) begin
		ethernetsoc_sdram_phaseinjector0_address_storage_full[7:0] <= ethernetsoc_csrbank8_dfii_pi0_address0_r;
	end
	ethernetsoc_sdram_phaseinjector0_address_re <= ethernetsoc_csrbank8_dfii_pi0_address0_re;
	if (ethernetsoc_csrbank8_dfii_pi0_baddress0_re) begin
		ethernetsoc_sdram_phaseinjector0_baddress_storage_full[2:0] <= ethernetsoc_csrbank8_dfii_pi0_baddress0_r;
	end
	ethernetsoc_sdram_phaseinjector0_baddress_re <= ethernetsoc_csrbank8_dfii_pi0_baddress0_re;
	if (ethernetsoc_csrbank8_dfii_pi0_wrdata7_re) begin
		ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[63:56] <= ethernetsoc_csrbank8_dfii_pi0_wrdata7_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi0_wrdata6_re) begin
		ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[55:48] <= ethernetsoc_csrbank8_dfii_pi0_wrdata6_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi0_wrdata5_re) begin
		ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[47:40] <= ethernetsoc_csrbank8_dfii_pi0_wrdata5_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi0_wrdata4_re) begin
		ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[39:32] <= ethernetsoc_csrbank8_dfii_pi0_wrdata4_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi0_wrdata3_re) begin
		ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[31:24] <= ethernetsoc_csrbank8_dfii_pi0_wrdata3_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi0_wrdata2_re) begin
		ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[23:16] <= ethernetsoc_csrbank8_dfii_pi0_wrdata2_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi0_wrdata1_re) begin
		ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[15:8] <= ethernetsoc_csrbank8_dfii_pi0_wrdata1_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi0_wrdata0_re) begin
		ethernetsoc_sdram_phaseinjector0_wrdata_storage_full[7:0] <= ethernetsoc_csrbank8_dfii_pi0_wrdata0_r;
	end
	ethernetsoc_sdram_phaseinjector0_wrdata_re <= ethernetsoc_csrbank8_dfii_pi0_wrdata0_re;
	if (ethernetsoc_csrbank8_dfii_pi1_command0_re) begin
		ethernetsoc_sdram_phaseinjector1_command_storage_full[5:0] <= ethernetsoc_csrbank8_dfii_pi1_command0_r;
	end
	ethernetsoc_sdram_phaseinjector1_command_re <= ethernetsoc_csrbank8_dfii_pi1_command0_re;
	if (ethernetsoc_csrbank8_dfii_pi1_address1_re) begin
		ethernetsoc_sdram_phaseinjector1_address_storage_full[12:8] <= ethernetsoc_csrbank8_dfii_pi1_address1_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi1_address0_re) begin
		ethernetsoc_sdram_phaseinjector1_address_storage_full[7:0] <= ethernetsoc_csrbank8_dfii_pi1_address0_r;
	end
	ethernetsoc_sdram_phaseinjector1_address_re <= ethernetsoc_csrbank8_dfii_pi1_address0_re;
	if (ethernetsoc_csrbank8_dfii_pi1_baddress0_re) begin
		ethernetsoc_sdram_phaseinjector1_baddress_storage_full[2:0] <= ethernetsoc_csrbank8_dfii_pi1_baddress0_r;
	end
	ethernetsoc_sdram_phaseinjector1_baddress_re <= ethernetsoc_csrbank8_dfii_pi1_baddress0_re;
	if (ethernetsoc_csrbank8_dfii_pi1_wrdata7_re) begin
		ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[63:56] <= ethernetsoc_csrbank8_dfii_pi1_wrdata7_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi1_wrdata6_re) begin
		ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[55:48] <= ethernetsoc_csrbank8_dfii_pi1_wrdata6_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi1_wrdata5_re) begin
		ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[47:40] <= ethernetsoc_csrbank8_dfii_pi1_wrdata5_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi1_wrdata4_re) begin
		ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[39:32] <= ethernetsoc_csrbank8_dfii_pi1_wrdata4_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi1_wrdata3_re) begin
		ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[31:24] <= ethernetsoc_csrbank8_dfii_pi1_wrdata3_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi1_wrdata2_re) begin
		ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[23:16] <= ethernetsoc_csrbank8_dfii_pi1_wrdata2_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi1_wrdata1_re) begin
		ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[15:8] <= ethernetsoc_csrbank8_dfii_pi1_wrdata1_r;
	end
	if (ethernetsoc_csrbank8_dfii_pi1_wrdata0_re) begin
		ethernetsoc_sdram_phaseinjector1_wrdata_storage_full[7:0] <= ethernetsoc_csrbank8_dfii_pi1_wrdata0_r;
	end
	ethernetsoc_sdram_phaseinjector1_wrdata_re <= ethernetsoc_csrbank8_dfii_pi1_wrdata0_re;
	ethernetsoc_interface9_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank9_sel) begin
		case (ethernetsoc_interface9_bank_bus_adr[4:0])
			1'd0: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_load3_w;
			end
			1'd1: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_load2_w;
			end
			2'd2: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_load1_w;
			end
			2'd3: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_load0_w;
			end
			3'd4: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_reload3_w;
			end
			3'd5: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_reload2_w;
			end
			3'd6: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_reload1_w;
			end
			3'd7: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_reload0_w;
			end
			4'd8: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_en0_w;
			end
			4'd9: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_timer0_update_value_w;
			end
			4'd10: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_value3_w;
			end
			4'd11: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_value2_w;
			end
			4'd12: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_value1_w;
			end
			4'd13: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_value0_w;
			end
			4'd14: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_timer0_eventmanager_status_w;
			end
			4'd15: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_timer0_eventmanager_pending_w;
			end
			5'd16: begin
				ethernetsoc_interface9_bank_bus_dat_r <= ethernetsoc_csrbank9_ev_enable0_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank9_load3_re) begin
		ethernetsoc_timer0_load_storage_full[31:24] <= ethernetsoc_csrbank9_load3_r;
	end
	if (ethernetsoc_csrbank9_load2_re) begin
		ethernetsoc_timer0_load_storage_full[23:16] <= ethernetsoc_csrbank9_load2_r;
	end
	if (ethernetsoc_csrbank9_load1_re) begin
		ethernetsoc_timer0_load_storage_full[15:8] <= ethernetsoc_csrbank9_load1_r;
	end
	if (ethernetsoc_csrbank9_load0_re) begin
		ethernetsoc_timer0_load_storage_full[7:0] <= ethernetsoc_csrbank9_load0_r;
	end
	ethernetsoc_timer0_load_re <= ethernetsoc_csrbank9_load0_re;
	if (ethernetsoc_csrbank9_reload3_re) begin
		ethernetsoc_timer0_reload_storage_full[31:24] <= ethernetsoc_csrbank9_reload3_r;
	end
	if (ethernetsoc_csrbank9_reload2_re) begin
		ethernetsoc_timer0_reload_storage_full[23:16] <= ethernetsoc_csrbank9_reload2_r;
	end
	if (ethernetsoc_csrbank9_reload1_re) begin
		ethernetsoc_timer0_reload_storage_full[15:8] <= ethernetsoc_csrbank9_reload1_r;
	end
	if (ethernetsoc_csrbank9_reload0_re) begin
		ethernetsoc_timer0_reload_storage_full[7:0] <= ethernetsoc_csrbank9_reload0_r;
	end
	ethernetsoc_timer0_reload_re <= ethernetsoc_csrbank9_reload0_re;
	if (ethernetsoc_csrbank9_en0_re) begin
		ethernetsoc_timer0_en_storage_full <= ethernetsoc_csrbank9_en0_r;
	end
	ethernetsoc_timer0_en_re <= ethernetsoc_csrbank9_en0_re;
	if (ethernetsoc_csrbank9_ev_enable0_re) begin
		ethernetsoc_timer0_eventmanager_storage_full <= ethernetsoc_csrbank9_ev_enable0_r;
	end
	ethernetsoc_timer0_eventmanager_re <= ethernetsoc_csrbank9_ev_enable0_re;
	ethernetsoc_interface10_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank10_sel) begin
		case (ethernetsoc_interface10_bank_bus_adr[2:0])
			1'd0: begin
				ethernetsoc_interface10_bank_bus_dat_r <= ethernetsoc_uart_rxtx_w;
			end
			1'd1: begin
				ethernetsoc_interface10_bank_bus_dat_r <= ethernetsoc_csrbank10_txfull_w;
			end
			2'd2: begin
				ethernetsoc_interface10_bank_bus_dat_r <= ethernetsoc_csrbank10_rxempty_w;
			end
			2'd3: begin
				ethernetsoc_interface10_bank_bus_dat_r <= ethernetsoc_uart_eventmanager_status_w;
			end
			3'd4: begin
				ethernetsoc_interface10_bank_bus_dat_r <= ethernetsoc_uart_eventmanager_pending_w;
			end
			3'd5: begin
				ethernetsoc_interface10_bank_bus_dat_r <= ethernetsoc_csrbank10_ev_enable0_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank10_ev_enable0_re) begin
		ethernetsoc_uart_eventmanager_storage_full[1:0] <= ethernetsoc_csrbank10_ev_enable0_r;
	end
	ethernetsoc_uart_eventmanager_re <= ethernetsoc_csrbank10_ev_enable0_re;
	ethernetsoc_interface11_bank_bus_dat_r <= 1'd0;
	if (ethernetsoc_csrbank11_sel) begin
		case (ethernetsoc_interface11_bank_bus_adr[1:0])
			1'd0: begin
				ethernetsoc_interface11_bank_bus_dat_r <= ethernetsoc_csrbank11_tuning_word3_w;
			end
			1'd1: begin
				ethernetsoc_interface11_bank_bus_dat_r <= ethernetsoc_csrbank11_tuning_word2_w;
			end
			2'd2: begin
				ethernetsoc_interface11_bank_bus_dat_r <= ethernetsoc_csrbank11_tuning_word1_w;
			end
			2'd3: begin
				ethernetsoc_interface11_bank_bus_dat_r <= ethernetsoc_csrbank11_tuning_word0_w;
			end
		endcase
	end
	if (ethernetsoc_csrbank11_tuning_word3_re) begin
		ethernetsoc_uart_phy_storage_full[31:24] <= ethernetsoc_csrbank11_tuning_word3_r;
	end
	if (ethernetsoc_csrbank11_tuning_word2_re) begin
		ethernetsoc_uart_phy_storage_full[23:16] <= ethernetsoc_csrbank11_tuning_word2_r;
	end
	if (ethernetsoc_csrbank11_tuning_word1_re) begin
		ethernetsoc_uart_phy_storage_full[15:8] <= ethernetsoc_csrbank11_tuning_word1_r;
	end
	if (ethernetsoc_csrbank11_tuning_word0_re) begin
		ethernetsoc_uart_phy_storage_full[7:0] <= ethernetsoc_csrbank11_tuning_word0_r;
	end
	ethernetsoc_uart_phy_re <= ethernetsoc_csrbank11_tuning_word0_re;
	if (sys_rst) begin
		ethernetsoc_ctrl_storage_full <= 32'd305419896;
		ethernetsoc_ctrl_re <= 1'd0;
		ethernetsoc_ctrl_bus_errors <= 32'd0;
		ethernetsoc_rom_bus_ack <= 1'd0;
		ethernetsoc_sram_bus_ack <= 1'd0;
		ethernetsoc_interface_adr <= 14'd0;
		ethernetsoc_interface_we <= 1'd0;
		ethernetsoc_interface_dat_w <= 8'd0;
		ethernetsoc_bus_wishbone_dat_r <= 32'd0;
		ethernetsoc_bus_wishbone_ack <= 1'd0;
		ethernetsoc_counter <= 2'd0;
		serial_tx <= 1'd1;
		ethernetsoc_uart_phy_storage_full <= 32'd6597069;
		ethernetsoc_uart_phy_re <= 1'd0;
		ethernetsoc_uart_phy_sink_ready <= 1'd0;
		ethernetsoc_uart_phy_uart_clk_txen <= 1'd0;
		ethernetsoc_uart_phy_phase_accumulator_tx <= 32'd0;
		ethernetsoc_uart_phy_tx_reg <= 8'd0;
		ethernetsoc_uart_phy_tx_bitcount <= 4'd0;
		ethernetsoc_uart_phy_tx_busy <= 1'd0;
		ethernetsoc_uart_phy_source_valid <= 1'd0;
		ethernetsoc_uart_phy_source_payload_data <= 8'd0;
		ethernetsoc_uart_phy_uart_clk_rxen <= 1'd0;
		ethernetsoc_uart_phy_phase_accumulator_rx <= 32'd0;
		ethernetsoc_uart_phy_rx_r <= 1'd0;
		ethernetsoc_uart_phy_rx_reg <= 8'd0;
		ethernetsoc_uart_phy_rx_bitcount <= 4'd0;
		ethernetsoc_uart_phy_rx_busy <= 1'd0;
		ethernetsoc_uart_tx_pending <= 1'd0;
		ethernetsoc_uart_tx_old_trigger <= 1'd0;
		ethernetsoc_uart_rx_pending <= 1'd0;
		ethernetsoc_uart_rx_old_trigger <= 1'd0;
		ethernetsoc_uart_eventmanager_storage_full <= 2'd0;
		ethernetsoc_uart_eventmanager_re <= 1'd0;
		ethernetsoc_uart_tx_fifo_readable <= 1'd0;
		ethernetsoc_uart_tx_fifo_level0 <= 5'd0;
		ethernetsoc_uart_tx_fifo_produce <= 4'd0;
		ethernetsoc_uart_tx_fifo_consume <= 4'd0;
		ethernetsoc_uart_rx_fifo_readable <= 1'd0;
		ethernetsoc_uart_rx_fifo_level0 <= 5'd0;
		ethernetsoc_uart_rx_fifo_produce <= 4'd0;
		ethernetsoc_uart_rx_fifo_consume <= 4'd0;
		ethernetsoc_timer0_load_storage_full <= 32'd0;
		ethernetsoc_timer0_load_re <= 1'd0;
		ethernetsoc_timer0_reload_storage_full <= 32'd0;
		ethernetsoc_timer0_reload_re <= 1'd0;
		ethernetsoc_timer0_en_storage_full <= 1'd0;
		ethernetsoc_timer0_en_re <= 1'd0;
		ethernetsoc_timer0_value_status <= 32'd0;
		ethernetsoc_timer0_zero_pending <= 1'd0;
		ethernetsoc_timer0_zero_old_trigger <= 1'd0;
		ethernetsoc_timer0_eventmanager_storage_full <= 1'd0;
		ethernetsoc_timer0_eventmanager_re <= 1'd0;
		ethernetsoc_timer0_value <= 32'd0;
		ethernetsoc_ecp5ddrphy_storage_full <= 2'd0;
		ethernetsoc_ecp5ddrphy_re <= 1'd0;
		ethernetsoc_ecp5ddrphy_status <= 2'd0;
		ethernetsoc_ecp5ddrphy_dfi_p0_rddata_valid <= 1'd0;
		ethernetsoc_ecp5ddrphy_dfi_p1_rddata_valid <= 1'd0;
		ethernetsoc_ecp5ddrphy_dfi_p2_rddata_valid <= 1'd0;
		ethernetsoc_ecp5ddrphy_dfi_p3_rddata_valid <= 1'd0;
		ethernetsoc_ecp5ddrphy_bl8_sel <= 1'd0;
		ethernetsoc_ecp5ddrphy_oe_dq <= 1'd0;
		ethernetsoc_ecp5ddrphy_oe_dqs <= 1'd0;
		ethernetsoc_ecp5ddrphy_dqs_postamble <= 1'd0;
		ethernetsoc_ecp5ddrphy_dqs_preamble <= 1'd0;
		ethernetsoc_ecp5ddrphy_rdly0 <= 7'd0;
		ethernetsoc_ecp5ddrphy_burstdet_d0 <= 1'd0;
		ethernetsoc_ecp5ddrphy_dm_o_data_d0 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dm_o_data_muxed0 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d0 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed0 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip0_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip0_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip0_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d0 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d1 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed1 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip1_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip1_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip1_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d1 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d2 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed2 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip2_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip2_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip2_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d2 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d3 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed3 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip3_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip3_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip3_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d3 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d4 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed4 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip4_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip4_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip4_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d4 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d5 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed5 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip5_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip5_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip5_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d5 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d6 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed6 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip6_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip6_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip6_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d6 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d7 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed7 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip7_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip7_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip7_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d7 <= 4'd0;
		ethernetsoc_ecp5ddrphy_rdly1 <= 7'd0;
		ethernetsoc_ecp5ddrphy_burstdet_d1 <= 1'd0;
		ethernetsoc_ecp5ddrphy_dm_o_data_d1 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dm_o_data_muxed1 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d8 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed8 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip8_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip8_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip8_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d8 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d9 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed9 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip9_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip9_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip9_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d9 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d10 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed10 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip10_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip10_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip10_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d10 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d11 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed11 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip11_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip11_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip11_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d11 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d12 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed12 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip12_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip12_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip12_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d12 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d13 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed13 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip13_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip13_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip13_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d13 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d14 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed14 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip14_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip14_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip14_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d14 <= 4'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_d15 <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_o_data_muxed15 <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip15_o <= 4'd0;
		ethernetsoc_ecp5ddrphy_bitslip15_value <= 2'd0;
		ethernetsoc_ecp5ddrphy_bitslip15_r <= 8'd0;
		ethernetsoc_ecp5ddrphy_dq_bitslip_o_d15 <= 4'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en0 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en1 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en2 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en3 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en4 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en5 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en6 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en7 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en8 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en9 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en10 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en11 <= 1'd0;
		ethernetsoc_ecp5ddrphy_n_rddata_en12 <= 1'd0;
		ethernetsoc_ecp5ddrphy_last_wrdata_en <= 6'd0;
		ethernetsoc_sdram_storage_full <= 4'd0;
		ethernetsoc_sdram_re <= 1'd0;
		ethernetsoc_sdram_phaseinjector0_command_storage_full <= 6'd0;
		ethernetsoc_sdram_phaseinjector0_command_re <= 1'd0;
		ethernetsoc_sdram_phaseinjector0_address_storage_full <= 13'd0;
		ethernetsoc_sdram_phaseinjector0_address_re <= 1'd0;
		ethernetsoc_sdram_phaseinjector0_baddress_storage_full <= 3'd0;
		ethernetsoc_sdram_phaseinjector0_baddress_re <= 1'd0;
		ethernetsoc_sdram_phaseinjector0_wrdata_storage_full <= 64'd0;
		ethernetsoc_sdram_phaseinjector0_wrdata_re <= 1'd0;
		ethernetsoc_sdram_phaseinjector0_status <= 64'd0;
		ethernetsoc_sdram_phaseinjector1_command_storage_full <= 6'd0;
		ethernetsoc_sdram_phaseinjector1_command_re <= 1'd0;
		ethernetsoc_sdram_phaseinjector1_address_storage_full <= 13'd0;
		ethernetsoc_sdram_phaseinjector1_address_re <= 1'd0;
		ethernetsoc_sdram_phaseinjector1_baddress_storage_full <= 3'd0;
		ethernetsoc_sdram_phaseinjector1_baddress_re <= 1'd0;
		ethernetsoc_sdram_phaseinjector1_wrdata_storage_full <= 64'd0;
		ethernetsoc_sdram_phaseinjector1_wrdata_re <= 1'd0;
		ethernetsoc_sdram_phaseinjector1_status <= 64'd0;
		ethernetsoc_sdram_dfi_p0_address <= 13'd0;
		ethernetsoc_sdram_dfi_p0_bank <= 3'd0;
		ethernetsoc_sdram_dfi_p0_cas_n <= 1'd1;
		ethernetsoc_sdram_dfi_p0_cs_n <= 1'd1;
		ethernetsoc_sdram_dfi_p0_ras_n <= 1'd1;
		ethernetsoc_sdram_dfi_p0_we_n <= 1'd1;
		ethernetsoc_sdram_dfi_p0_wrdata_en <= 1'd0;
		ethernetsoc_sdram_dfi_p0_rddata_en <= 1'd0;
		ethernetsoc_sdram_dfi_p1_address <= 13'd0;
		ethernetsoc_sdram_dfi_p1_bank <= 3'd0;
		ethernetsoc_sdram_dfi_p1_cas_n <= 1'd1;
		ethernetsoc_sdram_dfi_p1_cs_n <= 1'd1;
		ethernetsoc_sdram_dfi_p1_ras_n <= 1'd1;
		ethernetsoc_sdram_dfi_p1_we_n <= 1'd1;
		ethernetsoc_sdram_dfi_p1_wrdata_en <= 1'd0;
		ethernetsoc_sdram_dfi_p1_rddata_en <= 1'd0;
		ethernetsoc_sdram_cmd_payload_a <= 13'd0;
		ethernetsoc_sdram_cmd_payload_ba <= 3'd0;
		ethernetsoc_sdram_cmd_payload_cas <= 1'd0;
		ethernetsoc_sdram_cmd_payload_ras <= 1'd0;
		ethernetsoc_sdram_cmd_payload_we <= 1'd0;
		ethernetsoc_sdram_timer_count <= 10'd586;
		ethernetsoc_sdram_generator_done <= 1'd0;
		ethernetsoc_sdram_generator_counter <= 4'd0;
		ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		ethernetsoc_sdram_bankmachine0_cmd_buffer_source_payload_addr <= 20'd0;
		ethernetsoc_sdram_bankmachine0_cmd_buffer_valid_n <= 1'd0;
		ethernetsoc_sdram_bankmachine0_cmd_buffer_first_n <= 1'd0;
		ethernetsoc_sdram_bankmachine0_cmd_buffer_last_n <= 1'd0;
		ethernetsoc_sdram_bankmachine0_row <= 13'd0;
		ethernetsoc_sdram_bankmachine0_row_opened <= 1'd0;
		ethernetsoc_sdram_bankmachine0_twtpcon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine0_twtpcon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine0_trccon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine0_trccon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine0_trascon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine0_trascon_count <= 2'd0;
		ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		ethernetsoc_sdram_bankmachine1_cmd_buffer_source_payload_addr <= 20'd0;
		ethernetsoc_sdram_bankmachine1_cmd_buffer_valid_n <= 1'd0;
		ethernetsoc_sdram_bankmachine1_cmd_buffer_first_n <= 1'd0;
		ethernetsoc_sdram_bankmachine1_cmd_buffer_last_n <= 1'd0;
		ethernetsoc_sdram_bankmachine1_row <= 13'd0;
		ethernetsoc_sdram_bankmachine1_row_opened <= 1'd0;
		ethernetsoc_sdram_bankmachine1_twtpcon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine1_twtpcon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine1_trccon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine1_trccon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine1_trascon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine1_trascon_count <= 2'd0;
		ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		ethernetsoc_sdram_bankmachine2_cmd_buffer_source_payload_addr <= 20'd0;
		ethernetsoc_sdram_bankmachine2_cmd_buffer_valid_n <= 1'd0;
		ethernetsoc_sdram_bankmachine2_cmd_buffer_first_n <= 1'd0;
		ethernetsoc_sdram_bankmachine2_cmd_buffer_last_n <= 1'd0;
		ethernetsoc_sdram_bankmachine2_row <= 13'd0;
		ethernetsoc_sdram_bankmachine2_row_opened <= 1'd0;
		ethernetsoc_sdram_bankmachine2_twtpcon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine2_twtpcon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine2_trccon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine2_trccon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine2_trascon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine2_trascon_count <= 2'd0;
		ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		ethernetsoc_sdram_bankmachine3_cmd_buffer_source_payload_addr <= 20'd0;
		ethernetsoc_sdram_bankmachine3_cmd_buffer_valid_n <= 1'd0;
		ethernetsoc_sdram_bankmachine3_cmd_buffer_first_n <= 1'd0;
		ethernetsoc_sdram_bankmachine3_cmd_buffer_last_n <= 1'd0;
		ethernetsoc_sdram_bankmachine3_row <= 13'd0;
		ethernetsoc_sdram_bankmachine3_row_opened <= 1'd0;
		ethernetsoc_sdram_bankmachine3_twtpcon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine3_twtpcon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine3_trccon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine3_trccon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine3_trascon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine3_trascon_count <= 2'd0;
		ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_level <= 4'd0;
		ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_produce <= 3'd0;
		ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_consume <= 3'd0;
		ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_we <= 1'd0;
		ethernetsoc_sdram_bankmachine4_cmd_buffer_source_payload_addr <= 20'd0;
		ethernetsoc_sdram_bankmachine4_cmd_buffer_valid_n <= 1'd0;
		ethernetsoc_sdram_bankmachine4_cmd_buffer_first_n <= 1'd0;
		ethernetsoc_sdram_bankmachine4_cmd_buffer_last_n <= 1'd0;
		ethernetsoc_sdram_bankmachine4_row <= 13'd0;
		ethernetsoc_sdram_bankmachine4_row_opened <= 1'd0;
		ethernetsoc_sdram_bankmachine4_twtpcon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine4_twtpcon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine4_trccon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine4_trccon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine4_trascon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine4_trascon_count <= 2'd0;
		ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_level <= 4'd0;
		ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_produce <= 3'd0;
		ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_consume <= 3'd0;
		ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_we <= 1'd0;
		ethernetsoc_sdram_bankmachine5_cmd_buffer_source_payload_addr <= 20'd0;
		ethernetsoc_sdram_bankmachine5_cmd_buffer_valid_n <= 1'd0;
		ethernetsoc_sdram_bankmachine5_cmd_buffer_first_n <= 1'd0;
		ethernetsoc_sdram_bankmachine5_cmd_buffer_last_n <= 1'd0;
		ethernetsoc_sdram_bankmachine5_row <= 13'd0;
		ethernetsoc_sdram_bankmachine5_row_opened <= 1'd0;
		ethernetsoc_sdram_bankmachine5_twtpcon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine5_twtpcon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine5_trccon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine5_trccon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine5_trascon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine5_trascon_count <= 2'd0;
		ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_level <= 4'd0;
		ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_produce <= 3'd0;
		ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_consume <= 3'd0;
		ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_we <= 1'd0;
		ethernetsoc_sdram_bankmachine6_cmd_buffer_source_payload_addr <= 20'd0;
		ethernetsoc_sdram_bankmachine6_cmd_buffer_valid_n <= 1'd0;
		ethernetsoc_sdram_bankmachine6_cmd_buffer_first_n <= 1'd0;
		ethernetsoc_sdram_bankmachine6_cmd_buffer_last_n <= 1'd0;
		ethernetsoc_sdram_bankmachine6_row <= 13'd0;
		ethernetsoc_sdram_bankmachine6_row_opened <= 1'd0;
		ethernetsoc_sdram_bankmachine6_twtpcon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine6_twtpcon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine6_trccon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine6_trccon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine6_trascon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine6_trascon_count <= 2'd0;
		ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_level <= 4'd0;
		ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_produce <= 3'd0;
		ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_consume <= 3'd0;
		ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_we <= 1'd0;
		ethernetsoc_sdram_bankmachine7_cmd_buffer_source_payload_addr <= 20'd0;
		ethernetsoc_sdram_bankmachine7_cmd_buffer_valid_n <= 1'd0;
		ethernetsoc_sdram_bankmachine7_cmd_buffer_first_n <= 1'd0;
		ethernetsoc_sdram_bankmachine7_cmd_buffer_last_n <= 1'd0;
		ethernetsoc_sdram_bankmachine7_row <= 13'd0;
		ethernetsoc_sdram_bankmachine7_row_opened <= 1'd0;
		ethernetsoc_sdram_bankmachine7_twtpcon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine7_twtpcon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine7_trccon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine7_trccon_count <= 3'd0;
		ethernetsoc_sdram_bankmachine7_trascon_ready1 <= 1'd0;
		ethernetsoc_sdram_bankmachine7_trascon_count <= 2'd0;
		ethernetsoc_sdram_choose_cmd_grant <= 3'd0;
		ethernetsoc_sdram_choose_req_grant <= 3'd0;
		ethernetsoc_sdram_trrdcon_ready1 <= 1'd0;
		ethernetsoc_sdram_trrdcon_count <= 1'd0;
		ethernetsoc_sdram_tfawcon_ready <= 1'd1;
		ethernetsoc_sdram_tfawcon_window <= 4'd0;
		ethernetsoc_sdram_tccdcon_ready1 <= 1'd0;
		ethernetsoc_sdram_tccdcon_count <= 1'd0;
		ethernetsoc_sdram_twtrcon_ready1 <= 1'd0;
		ethernetsoc_sdram_twtrcon_count <= 3'd0;
		ethernetsoc_sdram_time0 <= 5'd0;
		ethernetsoc_sdram_time1 <= 4'd0;
		ethernetsoc_adr_offset_r <= 2'd0;
		ethernetsoc_led_counter <= 32'd0;
		ethphy_reset_storage_full <= 1'd0;
		ethphy_reset_re <= 1'd0;
		ethphy_counter <= 9'd0;
		ethphy_storage_full <= 3'd0;
		ethphy_re <= 1'd0;
		ethmac_preamble_errors_status <= 32'd0;
		ethmac_crc_errors_status <= 32'd0;
		ethmac_tx_cdc_graycounter0_q <= 7'd0;
		ethmac_tx_cdc_graycounter0_q_binary <= 7'd0;
		ethmac_rx_cdc_graycounter1_q <= 7'd0;
		ethmac_rx_cdc_graycounter1_q_binary <= 7'd0;
		ethmac_writer_errors_status <= 32'd0;
		ethmac_writer_storage_full <= 1'd0;
		ethmac_writer_re <= 1'd0;
		ethmac_writer_counter <= 32'd0;
		ethmac_writer_slot <= 1'd0;
		ethmac_writer_fifo_level <= 2'd0;
		ethmac_writer_fifo_produce <= 1'd0;
		ethmac_writer_fifo_consume <= 1'd0;
		ethmac_reader_slot_storage_full <= 1'd0;
		ethmac_reader_slot_re <= 1'd0;
		ethmac_reader_length_storage_full <= 11'd0;
		ethmac_reader_length_re <= 1'd0;
		ethmac_reader_done_pending <= 1'd0;
		ethmac_reader_eventmanager_storage_full <= 1'd0;
		ethmac_reader_eventmanager_re <= 1'd0;
		ethmac_reader_fifo_level <= 2'd0;
		ethmac_reader_fifo_produce <= 1'd0;
		ethmac_reader_fifo_consume <= 1'd0;
		ethmac_reader_counter <= 11'd0;
		ethmac_reader_last_d <= 1'd0;
		ethmac_sram0_bus_ack0 <= 1'd0;
		ethmac_sram1_bus_ack0 <= 1'd0;
		ethmac_sram0_bus_ack1 <= 1'd0;
		ethmac_sram1_bus_ack1 <= 1'd0;
		ethmac_slave_sel_r <= 4'd0;
		ice_gpo_storage_full <= 4'd0;
		ice_gpo_re <= 1'd0;
		ice_clkdiv <= 3'd0;
		max_spi_o_storage_full <= 3'd0;
		max_spi_o_re <= 1'd0;
		max_spi_irq_storage_full <= 1'd0;
		max_spi_irq_re <= 1'd0;
		refresher_state <= 2'd0;
		bankmachine0_state <= 3'd0;
		bankmachine1_state <= 3'd0;
		bankmachine2_state <= 3'd0;
		bankmachine3_state <= 3'd0;
		bankmachine4_state <= 3'd0;
		bankmachine5_state <= 3'd0;
		bankmachine6_state <= 3'd0;
		bankmachine7_state <= 3'd0;
		multiplexer_state <= 5'd0;
		rbank <= 3'd0;
		wbank <= 3'd0;
		new_master_wdata_ready0 <= 1'd0;
		new_master_wdata_ready1 <= 1'd0;
		new_master_wdata_ready2 <= 1'd0;
		new_master_wdata_ready3 <= 1'd0;
		new_master_rdata_valid0 <= 1'd0;
		new_master_rdata_valid1 <= 1'd0;
		new_master_rdata_valid2 <= 1'd0;
		new_master_rdata_valid3 <= 1'd0;
		new_master_rdata_valid4 <= 1'd0;
		new_master_rdata_valid5 <= 1'd0;
		new_master_rdata_valid6 <= 1'd0;
		new_master_rdata_valid7 <= 1'd0;
		new_master_rdata_valid8 <= 1'd0;
		new_master_rdata_valid9 <= 1'd0;
		new_master_rdata_valid10 <= 1'd0;
		new_master_rdata_valid11 <= 1'd0;
		new_master_rdata_valid12 <= 1'd0;
		new_master_rdata_valid13 <= 1'd0;
		new_master_rdata_valid14 <= 1'd0;
		cache_state <= 3'd0;
		litedramwishbone2native_state <= 2'd0;
		liteethmacsramwriter_state <= 3'd0;
		liteethmacsramreader_state <= 2'd0;
		ethernetsoc_grant <= 1'd0;
		ethernetsoc_slave_sel_r <= 5'd0;
		ethernetsoc_count <= 20'd1000000;
		ethernetsoc_interface0_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface1_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface2_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface3_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface4_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface5_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface6_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface7_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface8_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface9_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface10_bank_bus_dat_r <= 8'd0;
		ethernetsoc_interface11_bank_bus_dat_r <= 8'd0;
	end
	multiregimpl0_regs0 <= serial_rx;
	multiregimpl0_regs1 <= multiregimpl0_regs0;
	multiregimpl2_regs0 <= ethphy_data_r;
	multiregimpl2_regs1 <= multiregimpl2_regs0;
	multiregimpl3_regs0 <= ethmac_ps_preamble_error_toggle_i;
	multiregimpl3_regs1 <= multiregimpl3_regs0;
	multiregimpl4_regs0 <= ethmac_ps_crc_error_toggle_i;
	multiregimpl4_regs1 <= multiregimpl4_regs0;
	multiregimpl6_regs0 <= ethmac_tx_cdc_graycounter1_q;
	multiregimpl6_regs1 <= multiregimpl6_regs0;
	multiregimpl7_regs0 <= ethmac_rx_cdc_graycounter0_q;
	multiregimpl7_regs1 <= multiregimpl7_regs0;
	multiregimpl9_regs0 <= maxusb_miso;
	multiregimpl9_regs1 <= multiregimpl9_regs0;
end

VexRiscv VexRiscv(
	.clk(sys_clk),
	.dBusWishbone_ACK(ethernetsoc_vexriscv_dbus_ack),
	.dBusWishbone_DAT_MISO(ethernetsoc_vexriscv_dbus_dat_r),
	.dBusWishbone_ERR(ethernetsoc_vexriscv_d_err),
	.debugReset(1'd0),
	.externalInterrupt(1'd0),
	.externalInterruptArray(ethernetsoc_vexriscv_interrupt),
	.externalResetVector(1'd0),
	.iBusWishbone_ACK(ethernetsoc_vexriscv_ibus_ack),
	.iBusWishbone_DAT_MISO(ethernetsoc_vexriscv_ibus_dat_r),
	.iBusWishbone_ERR(ethernetsoc_vexriscv_i_err),
	.jtag_tck(ethernetsoc_vexriscv_jtag_tck),
	.jtag_tdi(ethernetsoc_vexriscv_jtag_tdi),
	.jtag_tms(ethernetsoc_vexriscv_jtag_tms),
	.reset((sys_rst | ethernetsoc_vexriscv_reset)),
	.timerInterrupt(1'd0),
	.timerInterruptS(ethernetsoc_vexriscv_interrupt[1]),
	.dBusWishbone_ADR(ethernetsoc_vexriscv_dbus_adr),
	.dBusWishbone_BTE(ethernetsoc_vexriscv_dbus_bte),
	.dBusWishbone_CTI(ethernetsoc_vexriscv_dbus_cti),
	.dBusWishbone_CYC(ethernetsoc_vexriscv_dbus_cyc),
	.dBusWishbone_DAT_MOSI(ethernetsoc_vexriscv_dbus_dat_w),
	.dBusWishbone_SEL(ethernetsoc_vexriscv_dbus_sel),
	.dBusWishbone_STB(ethernetsoc_vexriscv_dbus_stb),
	.dBusWishbone_WE(ethernetsoc_vexriscv_dbus_we),
	.iBusWishbone_ADR(ethernetsoc_vexriscv_ibus_adr),
	.iBusWishbone_BTE(ethernetsoc_vexriscv_ibus_bte),
	.iBusWishbone_CTI(ethernetsoc_vexriscv_ibus_cti),
	.iBusWishbone_CYC(ethernetsoc_vexriscv_ibus_cyc),
	.iBusWishbone_DAT_MOSI(ethernetsoc_vexriscv_ibus_dat_w),
	.iBusWishbone_SEL(ethernetsoc_vexriscv_ibus_sel),
	.iBusWishbone_STB(ethernetsoc_vexriscv_ibus_stb),
	.iBusWishbone_WE(ethernetsoc_vexriscv_ibus_we),
	.jtag_tdo(ethernetsoc_vexriscv_jtag_tdo)
);

reg [31:0] mem[0:6143];
reg [12:0] memadr;
always @(posedge sys_clk) begin
	memadr <= ethernetsoc_rom_adr;
end

assign ethernetsoc_rom_dat_r = mem[memadr];

initial begin
	$readmemh("design02-data0.hex", mem);
end

reg [31:0] mem_1[0:4095];
reg [11:0] memadr_1;
always @(posedge sys_clk) begin
	if (ethernetsoc_sram_we[0])
		mem_1[ethernetsoc_sram_adr][7:0] <= ethernetsoc_sram_dat_w[7:0];
	if (ethernetsoc_sram_we[1])
		mem_1[ethernetsoc_sram_adr][15:8] <= ethernetsoc_sram_dat_w[15:8];
	if (ethernetsoc_sram_we[2])
		mem_1[ethernetsoc_sram_adr][23:16] <= ethernetsoc_sram_dat_w[23:16];
	if (ethernetsoc_sram_we[3])
		mem_1[ethernetsoc_sram_adr][31:24] <= ethernetsoc_sram_dat_w[31:24];
	memadr_1 <= ethernetsoc_sram_adr;
end

assign ethernetsoc_sram_dat_r = mem_1[memadr_1];

reg [9:0] storage[0:15];
reg [9:0] memdat;
reg [9:0] memdat_1;
always @(posedge sys_clk) begin
	if (ethernetsoc_uart_tx_fifo_wrport_we)
		storage[ethernetsoc_uart_tx_fifo_wrport_adr] <= ethernetsoc_uart_tx_fifo_wrport_dat_w;
	memdat <= storage[ethernetsoc_uart_tx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
	if (ethernetsoc_uart_tx_fifo_rdport_re)
		memdat_1 <= storage[ethernetsoc_uart_tx_fifo_rdport_adr];
end

assign ethernetsoc_uart_tx_fifo_wrport_dat_r = memdat;
assign ethernetsoc_uart_tx_fifo_rdport_dat_r = memdat_1;

reg [9:0] storage_1[0:15];
reg [9:0] memdat_2;
reg [9:0] memdat_3;
always @(posedge sys_clk) begin
	if (ethernetsoc_uart_rx_fifo_wrport_we)
		storage_1[ethernetsoc_uart_rx_fifo_wrport_adr] <= ethernetsoc_uart_rx_fifo_wrport_dat_w;
	memdat_2 <= storage_1[ethernetsoc_uart_rx_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
	if (ethernetsoc_uart_rx_fifo_rdport_re)
		memdat_3 <= storage_1[ethernetsoc_uart_rx_fifo_rdport_adr];
end

assign ethernetsoc_uart_rx_fifo_wrport_dat_r = memdat_2;
assign ethernetsoc_uart_rx_fifo_rdport_dat_r = memdat_3;

ECLKSYNCB ECLKSYNCB(
	.ECLKI(sys2x_i_clk),
	.STOP(ethernetsoc_stop),
	.ECLKO(sys2x_clk)
);

CLKDIVF #(
	.DIV("2.0")
) CLKDIVF (
	.ALIGNWD(1'd0),
	.CLKI(sys2x_clk),
	.RST(sys2x_rst),
	.CDIVX(sys_clk)
);

DDRDLLA DDRDLLA(
	.CLK(sys2x_clk),
	.FREEZE(ethernetsoc_ecp5ddrphy_freeze),
	.RST(init_rst),
	.UDDCNTLN((~ethernetsoc_ecp5ddrphy_update)),
	.DDRDEL(ethernetsoc_ecp5ddrphy_delay1),
	.LOCK(ethernetsoc_ecp5ddrphy_lock0)
);

ODDRX2F ODDRX2F(
	.D0(1'd0),
	.D1(1'd1),
	.D2(1'd0),
	.D3(1'd1),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_clk_p)
);

ODDRX2F ODDRX2F_1(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[0]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[0]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[0]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[0]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[0])
);

ODDRX2F ODDRX2F_2(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[1]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[1]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[1]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[1]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[1])
);

ODDRX2F ODDRX2F_3(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[2]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[2]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[2]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[2]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[2])
);

ODDRX2F ODDRX2F_4(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[3]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[3]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[3]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[3]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[3])
);

ODDRX2F ODDRX2F_5(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[4]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[4]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[4]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[4]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[4])
);

ODDRX2F ODDRX2F_6(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[5]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[5]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[5]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[5]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[5])
);

ODDRX2F ODDRX2F_7(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[6]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[6]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[6]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[6]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[6])
);

ODDRX2F ODDRX2F_8(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[7]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[7]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[7]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[7]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[7])
);

ODDRX2F ODDRX2F_9(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[8]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[8]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[8]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[8]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[8])
);

ODDRX2F ODDRX2F_10(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[9]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[9]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[9]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[9]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[9])
);

ODDRX2F ODDRX2F_11(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[10]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[10]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[10]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[10]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[10])
);

ODDRX2F ODDRX2F_12(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[11]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[11]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[11]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[11]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[11])
);

ODDRX2F ODDRX2F_13(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_address[12]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_address[12]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_address[12]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_address[12]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_a[12])
);

ODDRX2F ODDRX2F_14(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_bank[0]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_bank[0]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_bank[0]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_bank[0]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_ba[0])
);

ODDRX2F ODDRX2F_15(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_bank[1]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_bank[1]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_bank[1]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_bank[1]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_ba[1])
);

ODDRX2F ODDRX2F_16(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_bank[2]),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_bank[2]),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_bank[2]),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_bank[2]),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_ba[2])
);

ODDRX2F ODDRX2F_17(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_ras_n),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_ras_n),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_ras_n),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_ras_n),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_ras_n)
);

ODDRX2F ODDRX2F_18(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_cas_n),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_cas_n),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_cas_n),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_cas_n),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_cas_n)
);

ODDRX2F ODDRX2F_19(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_we_n),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_we_n),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_we_n),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_we_n),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_we_n)
);

ODDRX2F ODDRX2F_20(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_cke),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_cke),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_cke),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_cke),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_cke)
);

ODDRX2F ODDRX2F_21(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_odt),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_odt),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_odt),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_odt),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_odt)
);

ODDRX2F ODDRX2F_22(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_reset_n),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_reset_n),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_reset_n),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_reset_n),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_reset_n)
);

ODDRX2F ODDRX2F_23(
	.D0(ethernetsoc_ecp5ddrphy_dfi_p0_cs_n),
	.D1(ethernetsoc_ecp5ddrphy_dfi_p0_cs_n),
	.D2(ethernetsoc_ecp5ddrphy_dfi_p1_cs_n),
	.D3(ethernetsoc_ecp5ddrphy_dfi_p1_cs_n),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_cs_n)
);

DQSBUFM #(
	.DQS_LI_DEL_ADJ("MINUS"),
	.DQS_LI_DEL_VAL(1'd1),
	.DQS_LO_DEL_ADJ("MINUS"),
	.DQS_LO_DEL_VAL(3'd4)
) DQSBUFM (
	.DDRDEL(ethernetsoc_ecp5ddrphy_delay0),
	.DQSI(ethernetsoc_ecp5ddrphy_dqs_i0),
	.ECLK(sys2x_clk),
	.PAUSE((ethernetsoc_ecp5ddrphy_pause0 | ethernetsoc_ecp5ddrphy_storage[0])),
	.RDDIRECTION(1'd1),
	.RDLOADN(1'd0),
	.RDMOVE(1'd0),
	.READ0(ethernetsoc_ecp5ddrphy_dqs_read),
	.READ1(ethernetsoc_ecp5ddrphy_dqs_read),
	.READCLKSEL0(ethernetsoc_ecp5ddrphy_rdly0[0]),
	.READCLKSEL1(ethernetsoc_ecp5ddrphy_rdly0[1]),
	.READCLKSEL2(ethernetsoc_ecp5ddrphy_rdly0[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRDIRECTION(1'd1),
	.WRLOADN(1'd0),
	.WRMOVE(1'd0),
	.BURSTDET(ethernetsoc_ecp5ddrphy_burstdet0),
	.DATAVALID(ethernetsoc_ecp5ddrphy_datavalid[0]),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr900),
	.DQSW(ethernetsoc_ecp5ddrphy_dqsw0),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr0[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr0[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr0[2]),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr0[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr0[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr0[2])
);

ODDRX2DQA ODDRX2DQA(
	.D0(ethernetsoc_ecp5ddrphy_dm_o_data_muxed0[0]),
	.D1(ethernetsoc_ecp5ddrphy_dm_o_data_muxed0[1]),
	.D2(ethernetsoc_ecp5ddrphy_dm_o_data_muxed0[2]),
	.D3(ethernetsoc_ecp5ddrphy_dm_o_data_muxed0[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_dm[0])
);

ODDRX2DQSB ODDRX2DQSB(
	.D0(ethernetsoc_ecp5ddrphy_dqs_serdes_pattern0[0]),
	.D1(ethernetsoc_ecp5ddrphy_dqs_serdes_pattern0[1]),
	.D2(ethernetsoc_ecp5ddrphy_dqs_serdes_pattern0[2]),
	.D3(ethernetsoc_ecp5ddrphy_dqs_serdes_pattern0[3]),
	.DQSW(ethernetsoc_ecp5ddrphy_dqsw0),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dqs0)
);

TSHX2DQSA TSHX2DQSA(
	.DQSW(ethernetsoc_ecp5ddrphy_dqsw0),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~(ethernetsoc_ecp5ddrphy_oe_dqs | ethernetsoc_ecp5ddrphy_dqs_postamble))),
	.T1((~(ethernetsoc_ecp5ddrphy_oe_dqs | ethernetsoc_ecp5ddrphy_dqs_preamble))),
	.Q(ethernetsoc_ecp5ddrphy_dqs_oe_n0)
);

ODDRX2DQA ODDRX2DQA_1(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed0[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed0[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed0[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed0[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o0)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF (
	.A(ethernetsoc_ecp5ddrphy_dq_i0),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed0)
);

IDDRX2DQA IDDRX2DQA(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed0),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr900),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr0[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr0[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr0[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr0[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr0[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr0[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data0[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data0[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data0[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data0[3])
);

TSHX2DQA TSHX2DQA(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n0)
);

ODDRX2DQA ODDRX2DQA_2(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed1[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed1[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed1[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed1[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o1)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_1 (
	.A(ethernetsoc_ecp5ddrphy_dq_i1),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed1)
);

IDDRX2DQA IDDRX2DQA_1(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed1),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr900),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr0[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr0[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr0[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr0[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr0[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr0[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data1[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data1[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data1[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data1[3])
);

TSHX2DQA TSHX2DQA_1(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n1)
);

ODDRX2DQA ODDRX2DQA_3(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed2[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed2[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed2[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed2[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o2)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_2 (
	.A(ethernetsoc_ecp5ddrphy_dq_i2),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed2)
);

IDDRX2DQA IDDRX2DQA_2(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed2),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr900),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr0[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr0[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr0[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr0[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr0[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr0[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data2[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data2[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data2[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data2[3])
);

TSHX2DQA TSHX2DQA_2(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n2)
);

ODDRX2DQA ODDRX2DQA_4(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed3[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed3[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed3[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed3[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o3)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_3 (
	.A(ethernetsoc_ecp5ddrphy_dq_i3),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed3)
);

IDDRX2DQA IDDRX2DQA_3(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed3),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr900),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr0[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr0[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr0[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr0[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr0[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr0[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data3[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data3[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data3[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data3[3])
);

TSHX2DQA TSHX2DQA_3(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n3)
);

ODDRX2DQA ODDRX2DQA_5(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed4[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed4[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed4[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed4[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o4)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_4 (
	.A(ethernetsoc_ecp5ddrphy_dq_i4),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed4)
);

IDDRX2DQA IDDRX2DQA_4(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed4),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr900),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr0[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr0[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr0[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr0[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr0[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr0[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data4[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data4[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data4[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data4[3])
);

TSHX2DQA TSHX2DQA_4(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n4)
);

ODDRX2DQA ODDRX2DQA_6(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed5[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed5[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed5[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed5[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o5)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_5 (
	.A(ethernetsoc_ecp5ddrphy_dq_i5),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed5)
);

IDDRX2DQA IDDRX2DQA_5(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed5),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr900),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr0[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr0[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr0[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr0[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr0[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr0[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data5[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data5[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data5[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data5[3])
);

TSHX2DQA TSHX2DQA_5(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n5)
);

ODDRX2DQA ODDRX2DQA_7(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed6[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed6[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed6[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed6[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o6)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_6 (
	.A(ethernetsoc_ecp5ddrphy_dq_i6),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed6)
);

IDDRX2DQA IDDRX2DQA_6(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed6),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr900),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr0[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr0[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr0[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr0[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr0[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr0[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data6[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data6[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data6[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data6[3])
);

TSHX2DQA TSHX2DQA_6(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n6)
);

ODDRX2DQA ODDRX2DQA_8(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed7[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed7[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed7[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed7[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o7)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_7 (
	.A(ethernetsoc_ecp5ddrphy_dq_i7),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed7)
);

IDDRX2DQA IDDRX2DQA_7(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed7),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr900),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr0[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr0[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr0[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr0[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr0[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr0[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data7[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data7[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data7[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data7[3])
);

TSHX2DQA TSHX2DQA_7(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2700),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n7)
);

DQSBUFM #(
	.DQS_LI_DEL_ADJ("MINUS"),
	.DQS_LI_DEL_VAL(1'd1),
	.DQS_LO_DEL_ADJ("MINUS"),
	.DQS_LO_DEL_VAL(3'd4)
) DQSBUFM_1 (
	.DDRDEL(ethernetsoc_ecp5ddrphy_delay0),
	.DQSI(ethernetsoc_ecp5ddrphy_dqs_i1),
	.ECLK(sys2x_clk),
	.PAUSE((ethernetsoc_ecp5ddrphy_pause0 | ethernetsoc_ecp5ddrphy_storage[1])),
	.RDDIRECTION(1'd1),
	.RDLOADN(1'd0),
	.RDMOVE(1'd0),
	.READ0(ethernetsoc_ecp5ddrphy_dqs_read),
	.READ1(ethernetsoc_ecp5ddrphy_dqs_read),
	.READCLKSEL0(ethernetsoc_ecp5ddrphy_rdly1[0]),
	.READCLKSEL1(ethernetsoc_ecp5ddrphy_rdly1[1]),
	.READCLKSEL2(ethernetsoc_ecp5ddrphy_rdly1[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRDIRECTION(1'd1),
	.WRLOADN(1'd0),
	.WRMOVE(1'd0),
	.BURSTDET(ethernetsoc_ecp5ddrphy_burstdet1),
	.DATAVALID(ethernetsoc_ecp5ddrphy_datavalid[1]),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr901),
	.DQSW(ethernetsoc_ecp5ddrphy_dqsw1),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr1[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr1[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr1[2]),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr1[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr1[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr1[2])
);

ODDRX2DQA ODDRX2DQA_9(
	.D0(ethernetsoc_ecp5ddrphy_dm_o_data_muxed1[0]),
	.D1(ethernetsoc_ecp5ddrphy_dm_o_data_muxed1[1]),
	.D2(ethernetsoc_ecp5ddrphy_dm_o_data_muxed1[2]),
	.D3(ethernetsoc_ecp5ddrphy_dm_o_data_muxed1[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ddram_dm[1])
);

ODDRX2DQSB ODDRX2DQSB_1(
	.D0(ethernetsoc_ecp5ddrphy_dqs_serdes_pattern1[0]),
	.D1(ethernetsoc_ecp5ddrphy_dqs_serdes_pattern1[1]),
	.D2(ethernetsoc_ecp5ddrphy_dqs_serdes_pattern1[2]),
	.D3(ethernetsoc_ecp5ddrphy_dqs_serdes_pattern1[3]),
	.DQSW(ethernetsoc_ecp5ddrphy_dqsw1),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dqs1)
);

TSHX2DQSA TSHX2DQSA_1(
	.DQSW(ethernetsoc_ecp5ddrphy_dqsw1),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~(ethernetsoc_ecp5ddrphy_oe_dqs | ethernetsoc_ecp5ddrphy_dqs_postamble))),
	.T1((~(ethernetsoc_ecp5ddrphy_oe_dqs | ethernetsoc_ecp5ddrphy_dqs_preamble))),
	.Q(ethernetsoc_ecp5ddrphy_dqs_oe_n1)
);

ODDRX2DQA ODDRX2DQA_10(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed8[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed8[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed8[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed8[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o8)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_8 (
	.A(ethernetsoc_ecp5ddrphy_dq_i8),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed8)
);

IDDRX2DQA IDDRX2DQA_8(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed8),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr901),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr1[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr1[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr1[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr1[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr1[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr1[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data8[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data8[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data8[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data8[3])
);

TSHX2DQA TSHX2DQA_8(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n8)
);

ODDRX2DQA ODDRX2DQA_11(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed9[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed9[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed9[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed9[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o9)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_9 (
	.A(ethernetsoc_ecp5ddrphy_dq_i9),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed9)
);

IDDRX2DQA IDDRX2DQA_9(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed9),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr901),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr1[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr1[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr1[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr1[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr1[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr1[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data9[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data9[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data9[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data9[3])
);

TSHX2DQA TSHX2DQA_9(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n9)
);

ODDRX2DQA ODDRX2DQA_12(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed10[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed10[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed10[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed10[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o10)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_10 (
	.A(ethernetsoc_ecp5ddrphy_dq_i10),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed10)
);

IDDRX2DQA IDDRX2DQA_10(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed10),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr901),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr1[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr1[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr1[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr1[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr1[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr1[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data10[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data10[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data10[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data10[3])
);

TSHX2DQA TSHX2DQA_10(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n10)
);

ODDRX2DQA ODDRX2DQA_13(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed11[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed11[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed11[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed11[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o11)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_11 (
	.A(ethernetsoc_ecp5ddrphy_dq_i11),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed11)
);

IDDRX2DQA IDDRX2DQA_11(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed11),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr901),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr1[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr1[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr1[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr1[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr1[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr1[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data11[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data11[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data11[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data11[3])
);

TSHX2DQA TSHX2DQA_11(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n11)
);

ODDRX2DQA ODDRX2DQA_14(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed12[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed12[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed12[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed12[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o12)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_12 (
	.A(ethernetsoc_ecp5ddrphy_dq_i12),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed12)
);

IDDRX2DQA IDDRX2DQA_12(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed12),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr901),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr1[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr1[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr1[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr1[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr1[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr1[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data12[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data12[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data12[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data12[3])
);

TSHX2DQA TSHX2DQA_12(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n12)
);

ODDRX2DQA ODDRX2DQA_15(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed13[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed13[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed13[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed13[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o13)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_13 (
	.A(ethernetsoc_ecp5ddrphy_dq_i13),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed13)
);

IDDRX2DQA IDDRX2DQA_13(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed13),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr901),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr1[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr1[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr1[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr1[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr1[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr1[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data13[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data13[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data13[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data13[3])
);

TSHX2DQA TSHX2DQA_13(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n13)
);

ODDRX2DQA ODDRX2DQA_16(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed14[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed14[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed14[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed14[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o14)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_14 (
	.A(ethernetsoc_ecp5ddrphy_dq_i14),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed14)
);

IDDRX2DQA IDDRX2DQA_14(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed14),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr901),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr1[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr1[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr1[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr1[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr1[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr1[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data14[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data14[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data14[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data14[3])
);

TSHX2DQA TSHX2DQA_14(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n14)
);

ODDRX2DQA ODDRX2DQA_17(
	.D0(ethernetsoc_ecp5ddrphy_dq_o_data_muxed15[0]),
	.D1(ethernetsoc_ecp5ddrphy_dq_o_data_muxed15[1]),
	.D2(ethernetsoc_ecp5ddrphy_dq_o_data_muxed15[2]),
	.D3(ethernetsoc_ecp5ddrphy_dq_o_data_muxed15[3]),
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.Q(ethernetsoc_ecp5ddrphy_dq_o15)
);

DELAYF #(
	.DEL_MODE("DQS_ALIGNED_X2")
) DELAYF_15 (
	.A(ethernetsoc_ecp5ddrphy_dq_i15),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethernetsoc_ecp5ddrphy_dq_i_delayed15)
);

IDDRX2DQA IDDRX2DQA_15(
	.D(ethernetsoc_ecp5ddrphy_dq_i_delayed15),
	.DQSR90(ethernetsoc_ecp5ddrphy_dqsr901),
	.ECLK(sys2x_clk),
	.RDPNTR0(ethernetsoc_ecp5ddrphy_rdpntr1[0]),
	.RDPNTR1(ethernetsoc_ecp5ddrphy_rdpntr1[1]),
	.RDPNTR2(ethernetsoc_ecp5ddrphy_rdpntr1[2]),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.WRPNTR0(ethernetsoc_ecp5ddrphy_wrpntr1[0]),
	.WRPNTR1(ethernetsoc_ecp5ddrphy_wrpntr1[1]),
	.WRPNTR2(ethernetsoc_ecp5ddrphy_wrpntr1[2]),
	.Q0(ethernetsoc_ecp5ddrphy_dq_i_data15[0]),
	.Q1(ethernetsoc_ecp5ddrphy_dq_i_data15[1]),
	.Q2(ethernetsoc_ecp5ddrphy_dq_i_data15[2]),
	.Q3(ethernetsoc_ecp5ddrphy_dq_i_data15[3])
);

TSHX2DQA TSHX2DQA_15(
	.DQSW270(ethernetsoc_ecp5ddrphy_dqsw2701),
	.ECLK(sys2x_clk),
	.RST(sys2x_rst),
	.SCLK(sys_clk),
	.T0((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.T1((~ethernetsoc_ecp5ddrphy_oe_dq)),
	.Q(ethernetsoc_ecp5ddrphy_dq_oe_n15)
);

reg [22:0] storage_2[0:7];
reg [22:0] memdat_4;
always @(posedge sys_clk) begin
	if (ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage_2[ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr] <= ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_2[ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage_2[ethernetsoc_sdram_bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [22:0] storage_3[0:7];
reg [22:0] memdat_5;
always @(posedge sys_clk) begin
	if (ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_3[ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr] <= ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_3[ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_3[ethernetsoc_sdram_bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [22:0] storage_4[0:7];
reg [22:0] memdat_6;
always @(posedge sys_clk) begin
	if (ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_4[ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr] <= ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_6 <= storage_4[ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_6;
assign ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_4[ethernetsoc_sdram_bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [22:0] storage_5[0:7];
reg [22:0] memdat_7;
always @(posedge sys_clk) begin
	if (ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_5[ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr] <= ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_7 <= storage_5[ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_7;
assign ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_5[ethernetsoc_sdram_bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [22:0] storage_6[0:7];
reg [22:0] memdat_8;
always @(posedge sys_clk) begin
	if (ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_we)
		storage_6[ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr] <= ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
	memdat_8 <= storage_6[ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_wrport_dat_r = memdat_8;
assign ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_dat_r = storage_6[ethernetsoc_sdram_bankmachine4_cmd_buffer_lookahead_rdport_adr];

reg [22:0] storage_7[0:7];
reg [22:0] memdat_9;
always @(posedge sys_clk) begin
	if (ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_we)
		storage_7[ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr] <= ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
	memdat_9 <= storage_7[ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_wrport_dat_r = memdat_9;
assign ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_dat_r = storage_7[ethernetsoc_sdram_bankmachine5_cmd_buffer_lookahead_rdport_adr];

reg [22:0] storage_8[0:7];
reg [22:0] memdat_10;
always @(posedge sys_clk) begin
	if (ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_we)
		storage_8[ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr] <= ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
	memdat_10 <= storage_8[ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_wrport_dat_r = memdat_10;
assign ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_dat_r = storage_8[ethernetsoc_sdram_bankmachine6_cmd_buffer_lookahead_rdport_adr];

reg [22:0] storage_9[0:7];
reg [22:0] memdat_11;
always @(posedge sys_clk) begin
	if (ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_we)
		storage_9[ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr] <= ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
	memdat_11 <= storage_9[ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_wrport_dat_r = memdat_11;
assign ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_dat_r = storage_9[ethernetsoc_sdram_bankmachine7_cmd_buffer_lookahead_rdport_adr];

reg [127:0] data_mem[0:511];
reg [8:0] memadr_2;
always @(posedge sys_clk) begin
	if (ethernetsoc_data_port_we[0])
		data_mem[ethernetsoc_data_port_adr][7:0] <= ethernetsoc_data_port_dat_w[7:0];
	if (ethernetsoc_data_port_we[1])
		data_mem[ethernetsoc_data_port_adr][15:8] <= ethernetsoc_data_port_dat_w[15:8];
	if (ethernetsoc_data_port_we[2])
		data_mem[ethernetsoc_data_port_adr][23:16] <= ethernetsoc_data_port_dat_w[23:16];
	if (ethernetsoc_data_port_we[3])
		data_mem[ethernetsoc_data_port_adr][31:24] <= ethernetsoc_data_port_dat_w[31:24];
	if (ethernetsoc_data_port_we[4])
		data_mem[ethernetsoc_data_port_adr][39:32] <= ethernetsoc_data_port_dat_w[39:32];
	if (ethernetsoc_data_port_we[5])
		data_mem[ethernetsoc_data_port_adr][47:40] <= ethernetsoc_data_port_dat_w[47:40];
	if (ethernetsoc_data_port_we[6])
		data_mem[ethernetsoc_data_port_adr][55:48] <= ethernetsoc_data_port_dat_w[55:48];
	if (ethernetsoc_data_port_we[7])
		data_mem[ethernetsoc_data_port_adr][63:56] <= ethernetsoc_data_port_dat_w[63:56];
	if (ethernetsoc_data_port_we[8])
		data_mem[ethernetsoc_data_port_adr][71:64] <= ethernetsoc_data_port_dat_w[71:64];
	if (ethernetsoc_data_port_we[9])
		data_mem[ethernetsoc_data_port_adr][79:72] <= ethernetsoc_data_port_dat_w[79:72];
	if (ethernetsoc_data_port_we[10])
		data_mem[ethernetsoc_data_port_adr][87:80] <= ethernetsoc_data_port_dat_w[87:80];
	if (ethernetsoc_data_port_we[11])
		data_mem[ethernetsoc_data_port_adr][95:88] <= ethernetsoc_data_port_dat_w[95:88];
	if (ethernetsoc_data_port_we[12])
		data_mem[ethernetsoc_data_port_adr][103:96] <= ethernetsoc_data_port_dat_w[103:96];
	if (ethernetsoc_data_port_we[13])
		data_mem[ethernetsoc_data_port_adr][111:104] <= ethernetsoc_data_port_dat_w[111:104];
	if (ethernetsoc_data_port_we[14])
		data_mem[ethernetsoc_data_port_adr][119:112] <= ethernetsoc_data_port_dat_w[119:112];
	if (ethernetsoc_data_port_we[15])
		data_mem[ethernetsoc_data_port_adr][127:120] <= ethernetsoc_data_port_dat_w[127:120];
	memadr_2 <= ethernetsoc_data_port_adr;
end

assign ethernetsoc_data_port_dat_r = data_mem[memadr_2];

reg [23:0] tag_mem[0:511];
reg [8:0] memadr_3;
always @(posedge sys_clk) begin
	if (ethernetsoc_tag_port_we)
		tag_mem[ethernetsoc_tag_port_adr] <= ethernetsoc_tag_port_dat_w;
	memadr_3 <= ethernetsoc_tag_port_adr;
end

assign ethernetsoc_tag_port_dat_r = tag_mem[memadr_3];

ODDRX1F ODDRX1F(
	.D0(1'd1),
	.D1(1'd0),
	.RST(eth_tx_rst),
	.SCLK(eth_tx_clk),
	.Q(ethphy_eth_tx_clk_o)
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY80")
) DELAYF_16 (
	.A(ethphy_eth_tx_clk_o),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(eth_clocks0_tx)
);

ODDRX1F ODDRX1F_1(
	.D0(ethphy_sink_valid),
	.D1(ethphy_sink_valid),
	.RST(eth_tx_rst),
	.SCLK(eth_tx_clk),
	.Q(ethphy_tx_ctl_oddrx1f)
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY0")
) DELAYF_17 (
	.A(ethphy_tx_ctl_oddrx1f),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(eth0_tx_ctl)
);

ODDRX1F ODDRX1F_2(
	.D0(ethphy_sink_payload_data[0]),
	.D1(ethphy_sink_payload_data[4]),
	.RST(eth_tx_rst),
	.SCLK(eth_tx_clk),
	.Q(ethphy_tx_data_oddrx1f[0])
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY0")
) DELAYF_18 (
	.A(ethphy_tx_data_oddrx1f[0]),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(eth0_tx_data[0])
);

ODDRX1F ODDRX1F_3(
	.D0(ethphy_sink_payload_data[1]),
	.D1(ethphy_sink_payload_data[5]),
	.RST(eth_tx_rst),
	.SCLK(eth_tx_clk),
	.Q(ethphy_tx_data_oddrx1f[1])
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY0")
) DELAYF_19 (
	.A(ethphy_tx_data_oddrx1f[1]),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(eth0_tx_data[1])
);

ODDRX1F ODDRX1F_4(
	.D0(ethphy_sink_payload_data[2]),
	.D1(ethphy_sink_payload_data[6]),
	.RST(eth_tx_rst),
	.SCLK(eth_tx_clk),
	.Q(ethphy_tx_data_oddrx1f[2])
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY0")
) DELAYF_20 (
	.A(ethphy_tx_data_oddrx1f[2]),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(eth0_tx_data[2])
);

ODDRX1F ODDRX1F_5(
	.D0(ethphy_sink_payload_data[3]),
	.D1(ethphy_sink_payload_data[7]),
	.RST(eth_tx_rst),
	.SCLK(eth_tx_clk),
	.Q(ethphy_tx_data_oddrx1f[3])
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY0")
) DELAYF_21 (
	.A(ethphy_tx_data_oddrx1f[3]),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(eth0_tx_data[3])
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY80")
) DELAYF_22 (
	.A(eth0_rx_ctl),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethphy_rx_ctl_delayf)
);

IDDRX1F IDDRX1F(
	.D(ethphy_rx_ctl_delayf),
	.RST(eth_rx_rst),
	.SCLK(eth_rx_clk),
	.Q0(ethphy_rx_ctl)
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY80")
) DELAYF_23 (
	.A(eth0_rx_data[0]),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethphy_rx_data_delayf[0])
);

IDDRX1F IDDRX1F_1(
	.D(ethphy_rx_data_delayf[0]),
	.RST(eth_rx_rst),
	.SCLK(eth_rx_clk),
	.Q0(ethphy_rx_data[0]),
	.Q1(ethphy_rx_data[4])
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY80")
) DELAYF_24 (
	.A(eth0_rx_data[1]),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethphy_rx_data_delayf[1])
);

IDDRX1F IDDRX1F_2(
	.D(ethphy_rx_data_delayf[1]),
	.RST(eth_rx_rst),
	.SCLK(eth_rx_clk),
	.Q0(ethphy_rx_data[1]),
	.Q1(ethphy_rx_data[5])
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY80")
) DELAYF_25 (
	.A(eth0_rx_data[2]),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethphy_rx_data_delayf[2])
);

IDDRX1F IDDRX1F_3(
	.D(ethphy_rx_data_delayf[2]),
	.RST(eth_rx_rst),
	.SCLK(eth_rx_clk),
	.Q0(ethphy_rx_data[2]),
	.Q1(ethphy_rx_data[6])
);

DELAYF #(
	.DEL_MODE("SCLK_ALIGNED"),
	.DEL_VALUE("DELAY80")
) DELAYF_26 (
	.A(eth0_rx_data[3]),
	.DIRECTION(1'd0),
	.LOADN(1'd1),
	.MOVE(1'd0),
	.Z(ethphy_rx_data_delayf[3])
);

IDDRX1F IDDRX1F_4(
	.D(ethphy_rx_data_delayf[3]),
	.RST(eth_rx_rst),
	.SCLK(eth_rx_clk),
	.Q0(ethphy_rx_data[3]),
	.Q1(ethphy_rx_data[7])
);

reg [11:0] storage_10[0:4];
reg [11:0] memdat_12;
always @(posedge eth_rx_clk) begin
	if (ethmac_crc32_checker_syncfifo_wrport_we)
		storage_10[ethmac_crc32_checker_syncfifo_wrport_adr] <= ethmac_crc32_checker_syncfifo_wrport_dat_w;
	memdat_12 <= storage_10[ethmac_crc32_checker_syncfifo_wrport_adr];
end

always @(posedge eth_rx_clk) begin
end

assign ethmac_crc32_checker_syncfifo_wrport_dat_r = memdat_12;
assign ethmac_crc32_checker_syncfifo_rdport_dat_r = storage_10[ethmac_crc32_checker_syncfifo_rdport_adr];

reg [41:0] storage_11[0:63];
reg [5:0] memadr_4;
reg [5:0] memadr_5;
always @(posedge sys_clk) begin
	if (ethmac_tx_cdc_wrport_we)
		storage_11[ethmac_tx_cdc_wrport_adr] <= ethmac_tx_cdc_wrport_dat_w;
	memadr_4 <= ethmac_tx_cdc_wrport_adr;
end

always @(posedge eth_tx_clk) begin
	memadr_5 <= ethmac_tx_cdc_rdport_adr;
end

assign ethmac_tx_cdc_wrport_dat_r = storage_11[memadr_4];
assign ethmac_tx_cdc_rdport_dat_r = storage_11[memadr_5];

reg [41:0] storage_12[0:63];
reg [5:0] memadr_6;
reg [5:0] memadr_7;
always @(posedge eth_rx_clk) begin
	if (ethmac_rx_cdc_wrport_we)
		storage_12[ethmac_rx_cdc_wrport_adr] <= ethmac_rx_cdc_wrport_dat_w;
	memadr_6 <= ethmac_rx_cdc_wrport_adr;
end

always @(posedge sys_clk) begin
	memadr_7 <= ethmac_rx_cdc_rdport_adr;
end

assign ethmac_rx_cdc_wrport_dat_r = storage_12[memadr_6];
assign ethmac_rx_cdc_rdport_dat_r = storage_12[memadr_7];

reg [34:0] storage_13[0:1];
reg [34:0] memdat_13;
always @(posedge sys_clk) begin
	if (ethmac_writer_fifo_wrport_we)
		storage_13[ethmac_writer_fifo_wrport_adr] <= ethmac_writer_fifo_wrport_dat_w;
	memdat_13 <= storage_13[ethmac_writer_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethmac_writer_fifo_wrport_dat_r = memdat_13;
assign ethmac_writer_fifo_rdport_dat_r = storage_13[ethmac_writer_fifo_rdport_adr];

reg [31:0] mem_2[0:381];
reg [8:0] memadr_8;
reg [8:0] memadr_9;
always @(posedge sys_clk) begin
	if (ethmac_writer_memory0_we)
		mem_2[ethmac_writer_memory0_adr] <= ethmac_writer_memory0_dat_w;
	memadr_8 <= ethmac_writer_memory0_adr;
end

always @(posedge sys_clk) begin
	memadr_9 <= ethmac_sram0_adr0;
end

assign ethmac_writer_memory0_dat_r = mem_2[memadr_8];
assign ethmac_sram0_dat_r0 = mem_2[memadr_9];

reg [31:0] mem_3[0:381];
reg [8:0] memadr_10;
reg [8:0] memadr_11;
always @(posedge sys_clk) begin
	if (ethmac_writer_memory1_we)
		mem_3[ethmac_writer_memory1_adr] <= ethmac_writer_memory1_dat_w;
	memadr_10 <= ethmac_writer_memory1_adr;
end

always @(posedge sys_clk) begin
	memadr_11 <= ethmac_sram1_adr0;
end

assign ethmac_writer_memory1_dat_r = mem_3[memadr_10];
assign ethmac_sram1_dat_r0 = mem_3[memadr_11];

reg [13:0] storage_14[0:1];
reg [13:0] memdat_14;
always @(posedge sys_clk) begin
	if (ethmac_reader_fifo_wrport_we)
		storage_14[ethmac_reader_fifo_wrport_adr] <= ethmac_reader_fifo_wrport_dat_w;
	memdat_14 <= storage_14[ethmac_reader_fifo_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign ethmac_reader_fifo_wrport_dat_r = memdat_14;
assign ethmac_reader_fifo_rdport_dat_r = storage_14[ethmac_reader_fifo_rdport_adr];

(* ICP_CURRENT = "6", LPF_RESISTOR = "16", MFG_ENABLE_FILTEROPAMP = "1", MFG_GMCREF_SEL = "2" *) EHXPLLL #(
	.CLKFB_DIV(3'd6),
	.CLKI_DIV(1'd1),
	.CLKOP_CPHASE(1'd0),
	.CLKOP_DIV(3'd4),
	.CLKOP_ENABLE("ENABLED"),
	.CLKOP_FPHASE(1'd0),
	.CLKOS3_DIV(1'd1),
	.CLKOS3_ENABLE("ENABLED"),
	.CLKOS_CPHASE(1'd0),
	.CLKOS_DIV(5'd24),
	.CLKOS_ENABLE("ENABLED"),
	.CLKOS_FPHASE(1'd0),
	.FEEDBK_PATH("INT_OS3")
) EHXPLLL (
	.CLKI(ethernetsoc_clkin),
	.RST(ethernetsoc_reset),
	.CLKOP(ethernetsoc_clkout0),
	.CLKOS(ethernetsoc_clkout1),
	.LOCK(ethernetsoc_locked)
);

reg [7:0] mem_grain0[0:381];
reg [8:0] memadr_12;
reg [8:0] memadr_13;
always @(posedge sys_clk) begin
	memadr_12 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[0])
		mem_grain0[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[7:0];
	memadr_13 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[7:0] = mem_grain0[memadr_12];
assign ethmac_sram0_dat_r1[7:0] = mem_grain0[memadr_13];

reg [7:0] mem_grain1[0:381];
reg [8:0] memadr_14;
reg [8:0] memadr_15;
always @(posedge sys_clk) begin
	memadr_14 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[1])
		mem_grain1[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[15:8];
	memadr_15 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[15:8] = mem_grain1[memadr_14];
assign ethmac_sram0_dat_r1[15:8] = mem_grain1[memadr_15];

reg [7:0] mem_grain2[0:381];
reg [8:0] memadr_16;
reg [8:0] memadr_17;
always @(posedge sys_clk) begin
	memadr_16 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[2])
		mem_grain2[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[23:16];
	memadr_17 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[23:16] = mem_grain2[memadr_16];
assign ethmac_sram0_dat_r1[23:16] = mem_grain2[memadr_17];

reg [7:0] mem_grain3[0:381];
reg [8:0] memadr_18;
reg [8:0] memadr_19;
always @(posedge sys_clk) begin
	memadr_18 <= ethmac_reader_memory0_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram0_we[3])
		mem_grain3[ethmac_sram0_adr1] <= ethmac_sram0_dat_w[31:24];
	memadr_19 <= ethmac_sram0_adr1;
end

assign ethmac_reader_memory0_dat_r[31:24] = mem_grain3[memadr_18];
assign ethmac_sram0_dat_r1[31:24] = mem_grain3[memadr_19];

reg [7:0] mem_grain0_1[0:381];
reg [8:0] memadr_20;
reg [8:0] memadr_21;
always @(posedge sys_clk) begin
	memadr_20 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[0])
		mem_grain0_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[7:0];
	memadr_21 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[7:0] = mem_grain0_1[memadr_20];
assign ethmac_sram1_dat_r1[7:0] = mem_grain0_1[memadr_21];

reg [7:0] mem_grain1_1[0:381];
reg [8:0] memadr_22;
reg [8:0] memadr_23;
always @(posedge sys_clk) begin
	memadr_22 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[1])
		mem_grain1_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[15:8];
	memadr_23 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[15:8] = mem_grain1_1[memadr_22];
assign ethmac_sram1_dat_r1[15:8] = mem_grain1_1[memadr_23];

reg [7:0] mem_grain2_1[0:381];
reg [8:0] memadr_24;
reg [8:0] memadr_25;
always @(posedge sys_clk) begin
	memadr_24 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[2])
		mem_grain2_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[23:16];
	memadr_25 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[23:16] = mem_grain2_1[memadr_24];
assign ethmac_sram1_dat_r1[23:16] = mem_grain2_1[memadr_25];

reg [7:0] mem_grain3_1[0:381];
reg [8:0] memadr_26;
reg [8:0] memadr_27;
always @(posedge sys_clk) begin
	memadr_26 <= ethmac_reader_memory1_adr;
end

always @(posedge sys_clk) begin
	if (ethmac_sram1_we[3])
		mem_grain3_1[ethmac_sram1_adr1] <= ethmac_sram1_dat_w[31:24];
	memadr_27 <= ethmac_sram1_adr1;
end

assign ethmac_reader_memory1_dat_r[31:24] = mem_grain3_1[memadr_26];
assign ethmac_sram1_dat_r1[31:24] = mem_grain3_1[memadr_27];

FD1S3BX FD1S3BX(
	.CK(init_clk),
	.D(1'd0),
	.PD((((~ethernetsoc_por_done) | (~ethernetsoc_locked)) | (~rst_n))),
	.Q(rst10)
);

FD1S3BX FD1S3BX_1(
	.CK(init_clk),
	.D(rst10),
	.PD((((~ethernetsoc_por_done) | (~ethernetsoc_locked)) | (~rst_n))),
	.Q(init_rst)
);

FD1S3BX FD1S3BX_2(
	.CK(sys_clk),
	.D(1'd0),
	.PD((((~ethernetsoc_por_done) | (~ethernetsoc_locked)) | (~rst_n))),
	.Q(rst11)
);

FD1S3BX FD1S3BX_3(
	.CK(sys_clk),
	.D(rst11),
	.PD((((~ethernetsoc_por_done) | (~ethernetsoc_locked)) | (~rst_n))),
	.Q(sys_rst)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO (
	.B(ddram_dqs_p[0]),
	.I(ethernetsoc_ecp5ddrphy_dqs0),
	.T((~(~ethernetsoc_ecp5ddrphy_dqs_oe_n0))),
	.O(ethernetsoc_ecp5ddrphy_dqs_i0)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_1 (
	.B(ddram_dq[0]),
	.I(ethernetsoc_ecp5ddrphy_dq_o0),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n0))),
	.O(ethernetsoc_ecp5ddrphy_dq_i0)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_2 (
	.B(ddram_dq[1]),
	.I(ethernetsoc_ecp5ddrphy_dq_o1),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n1))),
	.O(ethernetsoc_ecp5ddrphy_dq_i1)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_3 (
	.B(ddram_dq[2]),
	.I(ethernetsoc_ecp5ddrphy_dq_o2),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n2))),
	.O(ethernetsoc_ecp5ddrphy_dq_i2)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_4 (
	.B(ddram_dq[3]),
	.I(ethernetsoc_ecp5ddrphy_dq_o3),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n3))),
	.O(ethernetsoc_ecp5ddrphy_dq_i3)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_5 (
	.B(ddram_dq[4]),
	.I(ethernetsoc_ecp5ddrphy_dq_o4),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n4))),
	.O(ethernetsoc_ecp5ddrphy_dq_i4)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_6 (
	.B(ddram_dq[5]),
	.I(ethernetsoc_ecp5ddrphy_dq_o5),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n5))),
	.O(ethernetsoc_ecp5ddrphy_dq_i5)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_7 (
	.B(ddram_dq[6]),
	.I(ethernetsoc_ecp5ddrphy_dq_o6),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n6))),
	.O(ethernetsoc_ecp5ddrphy_dq_i6)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_8 (
	.B(ddram_dq[7]),
	.I(ethernetsoc_ecp5ddrphy_dq_o7),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n7))),
	.O(ethernetsoc_ecp5ddrphy_dq_i7)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_9 (
	.B(ddram_dqs_p[1]),
	.I(ethernetsoc_ecp5ddrphy_dqs1),
	.T((~(~ethernetsoc_ecp5ddrphy_dqs_oe_n1))),
	.O(ethernetsoc_ecp5ddrphy_dqs_i1)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_10 (
	.B(ddram_dq[8]),
	.I(ethernetsoc_ecp5ddrphy_dq_o8),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n8))),
	.O(ethernetsoc_ecp5ddrphy_dq_i8)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_11 (
	.B(ddram_dq[9]),
	.I(ethernetsoc_ecp5ddrphy_dq_o9),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n9))),
	.O(ethernetsoc_ecp5ddrphy_dq_i9)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_12 (
	.B(ddram_dq[10]),
	.I(ethernetsoc_ecp5ddrphy_dq_o10),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n10))),
	.O(ethernetsoc_ecp5ddrphy_dq_i10)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_13 (
	.B(ddram_dq[11]),
	.I(ethernetsoc_ecp5ddrphy_dq_o11),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n11))),
	.O(ethernetsoc_ecp5ddrphy_dq_i11)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_14 (
	.B(ddram_dq[12]),
	.I(ethernetsoc_ecp5ddrphy_dq_o12),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n12))),
	.O(ethernetsoc_ecp5ddrphy_dq_i12)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_15 (
	.B(ddram_dq[13]),
	.I(ethernetsoc_ecp5ddrphy_dq_o13),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n13))),
	.O(ethernetsoc_ecp5ddrphy_dq_i13)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_16 (
	.B(ddram_dq[14]),
	.I(ethernetsoc_ecp5ddrphy_dq_o14),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n14))),
	.O(ethernetsoc_ecp5ddrphy_dq_i14)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_17 (
	.B(ddram_dq[15]),
	.I(ethernetsoc_ecp5ddrphy_dq_o15),
	.T((~(~ethernetsoc_ecp5ddrphy_dq_oe_n15))),
	.O(ethernetsoc_ecp5ddrphy_dq_i15)
);

FD1S3BX FD1S3BX_4(
	.CK(eth_tx_clk),
	.D(1'd0),
	.PD(ethphy_reset0),
	.Q(rst12)
);

FD1S3BX FD1S3BX_5(
	.CK(eth_tx_clk),
	.D(rst12),
	.PD(ethphy_reset0),
	.Q(eth_tx_rst)
);

FD1S3BX FD1S3BX_6(
	.CK(eth_rx_clk),
	.D(1'd0),
	.PD(ethphy_reset0),
	.Q(rst13)
);

FD1S3BX FD1S3BX_7(
	.CK(eth_rx_clk),
	.D(rst13),
	.PD(ethphy_reset0),
	.Q(eth_rx_rst)
);

TRELLIS_IO #(
	.DIR("BIDIR")
) TRELLIS_IO_18 (
	.B(eth0_mdio),
	.I(ethphy_data_w),
	.T((~ethphy_data_oe)),
	.O(ethphy_data_r)
);

endmodule
// Generator : SpinalHDL v1.2.2    git head : 33bb039362598fce346424dfa42a873a54370570
// Date      : 16/03/2019, 10:37:46
// Component : VexRiscv


`define BranchCtrlEnum_defaultEncoding_type [1:0]
`define BranchCtrlEnum_defaultEncoding_INC 2'b00
`define BranchCtrlEnum_defaultEncoding_B 2'b01
`define BranchCtrlEnum_defaultEncoding_JAL 2'b10
`define BranchCtrlEnum_defaultEncoding_JALR 2'b11

`define ShiftCtrlEnum_defaultEncoding_type [1:0]
`define ShiftCtrlEnum_defaultEncoding_DISABLE_1 2'b00
`define ShiftCtrlEnum_defaultEncoding_SLL_1 2'b01
`define ShiftCtrlEnum_defaultEncoding_SRL_1 2'b10
`define ShiftCtrlEnum_defaultEncoding_SRA_1 2'b11

`define DataCacheCpuCmdKind_defaultEncoding_type [0:0]
`define DataCacheCpuCmdKind_defaultEncoding_MEMORY 1'b0
`define DataCacheCpuCmdKind_defaultEncoding_MANAGMENT 1'b1

`define Src1CtrlEnum_defaultEncoding_type [1:0]
`define Src1CtrlEnum_defaultEncoding_RS 2'b00
`define Src1CtrlEnum_defaultEncoding_IMU 2'b01
`define Src1CtrlEnum_defaultEncoding_PC_INCREMENT 2'b10
`define Src1CtrlEnum_defaultEncoding_URS1 2'b11

`define EnvCtrlEnum_defaultEncoding_type [1:0]
`define EnvCtrlEnum_defaultEncoding_NONE 2'b00
`define EnvCtrlEnum_defaultEncoding_XRET 2'b01
`define EnvCtrlEnum_defaultEncoding_WFI 2'b10
`define EnvCtrlEnum_defaultEncoding_ECALL 2'b11

`define AluCtrlEnum_defaultEncoding_type [1:0]
`define AluCtrlEnum_defaultEncoding_ADD_SUB 2'b00
`define AluCtrlEnum_defaultEncoding_SLT_SLTU 2'b01
`define AluCtrlEnum_defaultEncoding_BITWISE 2'b10

`define AluBitwiseCtrlEnum_defaultEncoding_type [1:0]
`define AluBitwiseCtrlEnum_defaultEncoding_XOR_1 2'b00
`define AluBitwiseCtrlEnum_defaultEncoding_OR_1 2'b01
`define AluBitwiseCtrlEnum_defaultEncoding_AND_1 2'b10
`define AluBitwiseCtrlEnum_defaultEncoding_SRC1 2'b11

`define Src2CtrlEnum_defaultEncoding_type [1:0]
`define Src2CtrlEnum_defaultEncoding_RS 2'b00
`define Src2CtrlEnum_defaultEncoding_IMI 2'b01
`define Src2CtrlEnum_defaultEncoding_IMS 2'b10
`define Src2CtrlEnum_defaultEncoding_PC 2'b11

`define JtagState_defaultEncoding_type [3:0]
`define JtagState_defaultEncoding_RESET 4'b0000
`define JtagState_defaultEncoding_IDLE 4'b0001
`define JtagState_defaultEncoding_IR_SELECT 4'b0010
`define JtagState_defaultEncoding_IR_CAPTURE 4'b0011
`define JtagState_defaultEncoding_IR_SHIFT 4'b0100
`define JtagState_defaultEncoding_IR_EXIT1 4'b0101
`define JtagState_defaultEncoding_IR_PAUSE 4'b0110
`define JtagState_defaultEncoding_IR_EXIT2 4'b0111
`define JtagState_defaultEncoding_IR_UPDATE 4'b1000
`define JtagState_defaultEncoding_DR_SELECT 4'b1001
`define JtagState_defaultEncoding_DR_CAPTURE 4'b1010
`define JtagState_defaultEncoding_DR_SHIFT 4'b1011
`define JtagState_defaultEncoding_DR_EXIT1 4'b1100
`define JtagState_defaultEncoding_DR_PAUSE 4'b1101
`define JtagState_defaultEncoding_DR_EXIT2 4'b1110
`define JtagState_defaultEncoding_DR_UPDATE 4'b1111

module BufferCC (
      input   io_dataIn,
      output  io_dataOut,
      input   clk,
      input   reset);
  reg  buffers_0;
  reg  buffers_1;
  assign io_dataOut = buffers_1;
  always @ (posedge clk) begin
    buffers_0 <= io_dataIn;
    buffers_1 <= buffers_0;
  end

endmodule

module FlowCCByToggle (
      input   io_input_valid,
      input   io_input_payload_last,
      input  [0:0] io_input_payload_fragment,
      output  io_output_valid,
      output  io_output_payload_last,
      output [0:0] io_output_payload_fragment,
      input   io_jtag_tck,
      input   clk,
      input   reset);
  wire  _zz_1_;
  wire  outHitSignal;
  reg  inputArea_target = 0;
  reg  inputArea_data_last;
  reg [0:0] inputArea_data_fragment;
  wire  outputArea_target;
  reg  outputArea_hit;
  wire  outputArea_flow_valid;
  wire  outputArea_flow_payload_last;
  wire [0:0] outputArea_flow_payload_fragment;
  reg  outputArea_flow_m2sPipe_valid;
  reg  outputArea_flow_m2sPipe_payload_last;
  reg [0:0] outputArea_flow_m2sPipe_payload_fragment;
  BufferCC bufferCC_1_ ( 
    .io_dataIn(inputArea_target),
    .io_dataOut(_zz_1_),
    .clk(clk),
    .reset(reset) 
  );
  assign outputArea_target = _zz_1_;
  assign outputArea_flow_valid = (outputArea_target != outputArea_hit);
  assign outputArea_flow_payload_last = inputArea_data_last;
  assign outputArea_flow_payload_fragment = inputArea_data_fragment;
  assign io_output_valid = outputArea_flow_m2sPipe_valid;
  assign io_output_payload_last = outputArea_flow_m2sPipe_payload_last;
  assign io_output_payload_fragment = outputArea_flow_m2sPipe_payload_fragment;
  always @ (posedge io_jtag_tck) begin
    if(io_input_valid)begin
      inputArea_target <= (! inputArea_target);
      inputArea_data_last <= io_input_payload_last;
      inputArea_data_fragment <= io_input_payload_fragment;
    end
  end

  always @ (posedge clk) begin
    outputArea_hit <= outputArea_target;
    if(outputArea_flow_valid)begin
      outputArea_flow_m2sPipe_payload_last <= outputArea_flow_payload_last;
      outputArea_flow_m2sPipe_payload_fragment <= outputArea_flow_payload_fragment;
    end
  end

  always @ (posedge clk) begin
    if(reset) begin
      outputArea_flow_m2sPipe_valid <= 1'b0;
    end else begin
      outputArea_flow_m2sPipe_valid <= outputArea_flow_valid;
    end
  end

endmodule

module InstructionCache (
      input   io_flush_cmd_valid,
      output  io_flush_cmd_ready,
      output  io_flush_rsp,
      input   io_cpu_prefetch_isValid,
      output reg  io_cpu_prefetch_haltIt,
      input  [31:0] io_cpu_prefetch_pc,
      input   io_cpu_fetch_isValid,
      input   io_cpu_fetch_isStuck,
      input   io_cpu_fetch_isRemoved,
      input  [31:0] io_cpu_fetch_pc,
      output [31:0] io_cpu_fetch_data,
      output  io_cpu_fetch_mmuBus_cmd_isValid,
      output [31:0] io_cpu_fetch_mmuBus_cmd_virtualAddress,
      output  io_cpu_fetch_mmuBus_cmd_bypassTranslation,
      input  [31:0] io_cpu_fetch_mmuBus_rsp_physicalAddress,
      input   io_cpu_fetch_mmuBus_rsp_isIoAccess,
      input   io_cpu_fetch_mmuBus_rsp_allowRead,
      input   io_cpu_fetch_mmuBus_rsp_allowWrite,
      input   io_cpu_fetch_mmuBus_rsp_allowExecute,
      input   io_cpu_fetch_mmuBus_rsp_allowUser,
      input   io_cpu_fetch_mmuBus_rsp_miss,
      input   io_cpu_fetch_mmuBus_rsp_hit,
      output  io_cpu_fetch_mmuBus_end,
      output [31:0] io_cpu_fetch_physicalAddress,
      input   io_cpu_decode_isValid,
      input   io_cpu_decode_isStuck,
      input  [31:0] io_cpu_decode_pc,
      output [31:0] io_cpu_decode_physicalAddress,
      output [31:0] io_cpu_decode_data,
      output  io_cpu_decode_cacheMiss,
      output  io_cpu_decode_error,
      output  io_cpu_decode_mmuMiss,
      output  io_cpu_decode_illegalAccess,
      input   io_cpu_decode_isUser,
      input   io_cpu_fill_valid,
      input  [31:0] io_cpu_fill_payload,
      output  io_mem_cmd_valid,
      input   io_mem_cmd_ready,
      output [31:0] io_mem_cmd_payload_address,
      output [2:0] io_mem_cmd_payload_size,
      input   io_mem_rsp_valid,
      input  [31:0] io_mem_rsp_payload_data,
      input   io_mem_rsp_payload_error,
      input   clk,
      input   reset);
  reg [21:0] _zz_12_;
  reg [31:0] _zz_13_;
  wire  _zz_14_;
  wire [0:0] _zz_15_;
  wire [0:0] _zz_16_;
  wire [21:0] _zz_17_;
  reg  _zz_1_;
  reg  _zz_2_;
  reg  lineLoader_fire;
  reg  lineLoader_valid;
  reg [31:0] lineLoader_address;
  reg  lineLoader_hadError;
  reg [7:0] lineLoader_flushCounter;
  reg  _zz_3_;
  reg  lineLoader_flushFromInterface;
  wire  _zz_4_;
  reg  _zz_4__regNext;
  reg  lineLoader_cmdSent;
  reg  lineLoader_wayToAllocate_willIncrement;
  wire  lineLoader_wayToAllocate_willClear;
  wire  lineLoader_wayToAllocate_willOverflowIfInc;
  wire  lineLoader_wayToAllocate_willOverflow;
  reg [2:0] lineLoader_wordIndex;
  wire  lineLoader_write_tag_0_valid;
  wire [6:0] lineLoader_write_tag_0_payload_address;
  wire  lineLoader_write_tag_0_payload_data_valid;
  wire  lineLoader_write_tag_0_payload_data_error;
  wire [19:0] lineLoader_write_tag_0_payload_data_address;
  wire  lineLoader_write_data_0_valid;
  wire [9:0] lineLoader_write_data_0_payload_address;
  wire [31:0] lineLoader_write_data_0_payload_data;
  wire  _zz_5_;
  wire [6:0] _zz_6_;
  wire  _zz_7_;
  wire  fetchStage_read_waysValues_0_tag_valid;
  wire  fetchStage_read_waysValues_0_tag_error;
  wire [19:0] fetchStage_read_waysValues_0_tag_address;
  wire [21:0] _zz_8_;
  wire [9:0] _zz_9_;
  wire  _zz_10_;
  wire [31:0] fetchStage_read_waysValues_0_data;
  reg [31:0] decodeStage_mmuRsp_physicalAddress;
  reg  decodeStage_mmuRsp_isIoAccess;
  reg  decodeStage_mmuRsp_allowRead;
  reg  decodeStage_mmuRsp_allowWrite;
  reg  decodeStage_mmuRsp_allowExecute;
  reg  decodeStage_mmuRsp_allowUser;
  reg  decodeStage_mmuRsp_miss;
  reg  decodeStage_mmuRsp_hit;
  reg  decodeStage_hit_0_valid;
  reg  decodeStage_hit_0_error;
  reg [19:0] decodeStage_hit_0_address;
  wire  decodeStage_hit_hits_0;
  wire  decodeStage_hit_valid;
  wire  decodeStage_hit_error;
  reg [31:0] _zz_11_;
  wire [31:0] decodeStage_hit_data;
  wire [31:0] decodeStage_hit_word;
  reg [21:0] ways_0_tags [0:127];
  reg [31:0] ways_0_datas [0:1023];
  assign _zz_14_ = (! lineLoader_flushCounter[7]);
  assign _zz_15_ = _zz_8_[0 : 0];
  assign _zz_16_ = _zz_8_[1 : 1];
  assign _zz_17_ = {lineLoader_write_tag_0_payload_data_address,{lineLoader_write_tag_0_payload_data_error,lineLoader_write_tag_0_payload_data_valid}};
  always @ (posedge clk) begin
    if(_zz_2_) begin
      ways_0_tags[lineLoader_write_tag_0_payload_address] <= _zz_17_;
    end
  end

  always @ (posedge clk) begin
    if(_zz_7_) begin
      _zz_12_ <= ways_0_tags[_zz_6_];
    end
  end

  always @ (posedge clk) begin
    if(_zz_1_) begin
      ways_0_datas[lineLoader_write_data_0_payload_address] <= lineLoader_write_data_0_payload_data;
    end
  end

  always @ (posedge clk) begin
    if(_zz_10_) begin
      _zz_13_ <= ways_0_datas[_zz_9_];
    end
  end

  always @ (*) begin
    _zz_1_ = 1'b0;
    if(lineLoader_write_data_0_valid)begin
      _zz_1_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2_ = 1'b0;
    if(lineLoader_write_tag_0_valid)begin
      _zz_2_ = 1'b1;
    end
  end

  always @ (*) begin
    io_cpu_prefetch_haltIt = 1'b0;
    if(lineLoader_valid)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(_zz_14_)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if((! _zz_3_))begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
    if(io_flush_cmd_valid)begin
      io_cpu_prefetch_haltIt = 1'b1;
    end
  end

  always @ (*) begin
    lineLoader_fire = 1'b0;
    if(io_mem_rsp_valid)begin
      if((lineLoader_wordIndex == (3'b111)))begin
        lineLoader_fire = 1'b1;
      end
    end
  end

  assign io_flush_cmd_ready = (! (lineLoader_valid || io_cpu_fetch_isValid));
  assign _zz_4_ = lineLoader_flushCounter[7];
  assign io_flush_rsp = ((_zz_4_ && (! _zz_4__regNext)) && lineLoader_flushFromInterface);
  assign io_mem_cmd_valid = (lineLoader_valid && (! lineLoader_cmdSent));
  assign io_mem_cmd_payload_address = {lineLoader_address[31 : 5],(5'b00000)};
  assign io_mem_cmd_payload_size = (3'b101);
  always @ (*) begin
    lineLoader_wayToAllocate_willIncrement = 1'b0;
    if(lineLoader_fire)begin
      lineLoader_wayToAllocate_willIncrement = 1'b1;
    end
  end

  assign lineLoader_wayToAllocate_willClear = 1'b0;
  assign lineLoader_wayToAllocate_willOverflowIfInc = 1'b1;
  assign lineLoader_wayToAllocate_willOverflow = (lineLoader_wayToAllocate_willOverflowIfInc && lineLoader_wayToAllocate_willIncrement);
  assign _zz_5_ = 1'b1;
  assign lineLoader_write_tag_0_valid = ((_zz_5_ && lineLoader_fire) || (! lineLoader_flushCounter[7]));
  assign lineLoader_write_tag_0_payload_address = (lineLoader_flushCounter[7] ? lineLoader_address[11 : 5] : lineLoader_flushCounter[6 : 0]);
  assign lineLoader_write_tag_0_payload_data_valid = lineLoader_flushCounter[7];
  assign lineLoader_write_tag_0_payload_data_error = (lineLoader_hadError || io_mem_rsp_payload_error);
  assign lineLoader_write_tag_0_payload_data_address = lineLoader_address[31 : 12];
  assign lineLoader_write_data_0_valid = (io_mem_rsp_valid && _zz_5_);
  assign lineLoader_write_data_0_payload_address = {lineLoader_address[11 : 5],lineLoader_wordIndex};
  assign lineLoader_write_data_0_payload_data = io_mem_rsp_payload_data;
  assign _zz_6_ = io_cpu_prefetch_pc[11 : 5];
  assign _zz_7_ = (! io_cpu_fetch_isStuck);
  assign _zz_8_ = _zz_12_;
  assign fetchStage_read_waysValues_0_tag_valid = _zz_15_[0];
  assign fetchStage_read_waysValues_0_tag_error = _zz_16_[0];
  assign fetchStage_read_waysValues_0_tag_address = _zz_8_[21 : 2];
  assign _zz_9_ = io_cpu_prefetch_pc[11 : 2];
  assign _zz_10_ = (! io_cpu_fetch_isStuck);
  assign fetchStage_read_waysValues_0_data = _zz_13_;
  assign io_cpu_fetch_data = fetchStage_read_waysValues_0_data[31 : 0];
  assign io_cpu_fetch_mmuBus_cmd_isValid = io_cpu_fetch_isValid;
  assign io_cpu_fetch_mmuBus_cmd_virtualAddress = io_cpu_fetch_pc;
  assign io_cpu_fetch_mmuBus_cmd_bypassTranslation = 1'b0;
  assign io_cpu_fetch_mmuBus_end = ((! io_cpu_fetch_isStuck) || io_cpu_fetch_isRemoved);
  assign io_cpu_fetch_physicalAddress = io_cpu_fetch_mmuBus_rsp_physicalAddress;
  assign decodeStage_hit_hits_0 = (decodeStage_hit_0_valid && (decodeStage_hit_0_address == decodeStage_mmuRsp_physicalAddress[31 : 12]));
  assign decodeStage_hit_valid = (decodeStage_hit_hits_0 != (1'b0));
  assign decodeStage_hit_error = decodeStage_hit_0_error;
  assign decodeStage_hit_data = _zz_11_;
  assign decodeStage_hit_word = decodeStage_hit_data[31 : 0];
  assign io_cpu_decode_data = decodeStage_hit_word;
  assign io_cpu_decode_cacheMiss = (! decodeStage_hit_valid);
  assign io_cpu_decode_error = decodeStage_hit_error;
  assign io_cpu_decode_mmuMiss = decodeStage_mmuRsp_miss;
  assign io_cpu_decode_illegalAccess = ((! decodeStage_mmuRsp_allowExecute) || (io_cpu_decode_isUser && (! decodeStage_mmuRsp_allowUser)));
  assign io_cpu_decode_physicalAddress = decodeStage_mmuRsp_physicalAddress;
  always @ (posedge clk) begin
    if(reset) begin
      lineLoader_valid <= 1'b0;
      lineLoader_hadError <= 1'b0;
      lineLoader_flushCounter <= (8'b00000000);
      lineLoader_flushFromInterface <= 1'b0;
      lineLoader_cmdSent <= 1'b0;
      lineLoader_wordIndex <= (3'b000);
    end else begin
      if(lineLoader_fire)begin
        lineLoader_valid <= 1'b0;
      end
      if(lineLoader_fire)begin
        lineLoader_hadError <= 1'b0;
      end
      if(io_cpu_fill_valid)begin
        lineLoader_valid <= 1'b1;
      end
      if(_zz_14_)begin
        lineLoader_flushCounter <= (lineLoader_flushCounter + (8'b00000001));
      end
      if(io_flush_cmd_valid)begin
        if(io_flush_cmd_ready)begin
          lineLoader_flushCounter <= (8'b00000000);
          lineLoader_flushFromInterface <= 1'b1;
        end
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        lineLoader_cmdSent <= 1'b1;
      end
      if(lineLoader_fire)begin
        lineLoader_cmdSent <= 1'b0;
      end
      if(io_mem_rsp_valid)begin
        lineLoader_wordIndex <= (lineLoader_wordIndex + (3'b001));
        if(io_mem_rsp_payload_error)begin
          lineLoader_hadError <= 1'b1;
        end
      end
    end
  end

  always @ (posedge clk) begin
    if(io_cpu_fill_valid)begin
      lineLoader_address <= io_cpu_fill_payload;
    end
    _zz_3_ <= lineLoader_flushCounter[7];
    _zz_4__regNext <= _zz_4_;
    if((! io_cpu_decode_isStuck))begin
      decodeStage_mmuRsp_physicalAddress <= io_cpu_fetch_mmuBus_rsp_physicalAddress;
      decodeStage_mmuRsp_isIoAccess <= io_cpu_fetch_mmuBus_rsp_isIoAccess;
      decodeStage_mmuRsp_allowRead <= io_cpu_fetch_mmuBus_rsp_allowRead;
      decodeStage_mmuRsp_allowWrite <= io_cpu_fetch_mmuBus_rsp_allowWrite;
      decodeStage_mmuRsp_allowExecute <= io_cpu_fetch_mmuBus_rsp_allowExecute;
      decodeStage_mmuRsp_allowUser <= io_cpu_fetch_mmuBus_rsp_allowUser;
      decodeStage_mmuRsp_miss <= io_cpu_fetch_mmuBus_rsp_miss;
      decodeStage_mmuRsp_hit <= io_cpu_fetch_mmuBus_rsp_hit;
    end
    if((! io_cpu_decode_isStuck))begin
      decodeStage_hit_0_valid <= fetchStage_read_waysValues_0_tag_valid;
      decodeStage_hit_0_error <= fetchStage_read_waysValues_0_tag_error;
      decodeStage_hit_0_address <= fetchStage_read_waysValues_0_tag_address;
    end
    if((! io_cpu_decode_isStuck))begin
      _zz_11_ <= fetchStage_read_waysValues_0_data;
    end
  end

endmodule

module DataCache (
      input   io_cpu_execute_isValid,
      input   io_cpu_execute_isStuck,
      input  `DataCacheCpuCmdKind_defaultEncoding_type io_cpu_execute_args_kind,
      input   io_cpu_execute_args_wr,
      input  [31:0] io_cpu_execute_args_address,
      input  [31:0] io_cpu_execute_args_data,
      input  [1:0] io_cpu_execute_args_size,
      input   io_cpu_execute_args_forceUncachedAccess,
      input   io_cpu_execute_args_clean,
      input   io_cpu_execute_args_invalidate,
      input   io_cpu_execute_args_way,
      input   io_cpu_memory_isValid,
      input   io_cpu_memory_isStuck,
      input   io_cpu_memory_isRemoved,
      output  io_cpu_memory_haltIt,
      output  io_cpu_memory_mmuBus_cmd_isValid,
      output [31:0] io_cpu_memory_mmuBus_cmd_virtualAddress,
      output  io_cpu_memory_mmuBus_cmd_bypassTranslation,
      input  [31:0] io_cpu_memory_mmuBus_rsp_physicalAddress,
      input   io_cpu_memory_mmuBus_rsp_isIoAccess,
      input   io_cpu_memory_mmuBus_rsp_allowRead,
      input   io_cpu_memory_mmuBus_rsp_allowWrite,
      input   io_cpu_memory_mmuBus_rsp_allowExecute,
      input   io_cpu_memory_mmuBus_rsp_allowUser,
      input   io_cpu_memory_mmuBus_rsp_miss,
      input   io_cpu_memory_mmuBus_rsp_hit,
      output  io_cpu_memory_mmuBus_end,
      input   io_cpu_writeBack_isValid,
      input   io_cpu_writeBack_isStuck,
      input   io_cpu_writeBack_isUser,
      output reg  io_cpu_writeBack_haltIt,
      output [31:0] io_cpu_writeBack_data,
      output reg  io_cpu_writeBack_mmuMiss,
      output reg  io_cpu_writeBack_illegalAccess,
      output reg  io_cpu_writeBack_unalignedAccess,
      output  io_cpu_writeBack_accessError,
      output [31:0] io_cpu_writeBack_badAddr,
      output reg  io_mem_cmd_valid,
      input   io_mem_cmd_ready,
      output reg  io_mem_cmd_payload_wr,
      output reg [31:0] io_mem_cmd_payload_address,
      output reg [31:0] io_mem_cmd_payload_data,
      output reg [3:0] io_mem_cmd_payload_mask,
      output reg [2:0] io_mem_cmd_payload_length,
      output reg  io_mem_cmd_payload_last,
      input   io_mem_rsp_valid,
      input  [31:0] io_mem_rsp_payload_data,
      input   io_mem_rsp_payload_error,
      input   clk,
      input   reset);
  reg [21:0] _zz_35_;
  reg [31:0] _zz_36_;
  reg [31:0] _zz_37_;
  wire  _zz_38_;
  wire  _zz_39_;
  wire  _zz_40_;
  wire  _zz_41_;
  wire  _zz_42_;
  wire  _zz_43_;
  wire  _zz_44_;
  wire [0:0] _zz_45_;
  wire [0:0] _zz_46_;
  wire [2:0] _zz_47_;
  wire [0:0] _zz_48_;
  wire [2:0] _zz_49_;
  wire [0:0] _zz_50_;
  wire [2:0] _zz_51_;
  wire [21:0] _zz_52_;
  reg  _zz_1_;
  reg  _zz_2_;
  reg  _zz_3_;
  wire  haltCpu;
  reg  tagsReadCmd_valid;
  reg [6:0] tagsReadCmd_payload;
  reg  tagsWriteCmd_valid;
  reg [6:0] tagsWriteCmd_payload_address;
  reg  tagsWriteCmd_payload_data_used;
  reg  tagsWriteCmd_payload_data_dirty;
  reg [19:0] tagsWriteCmd_payload_data_address;
  reg  tagsWriteLastCmd_valid;
  reg [6:0] tagsWriteLastCmd_payload_address;
  reg  tagsWriteLastCmd_payload_data_used;
  reg  tagsWriteLastCmd_payload_data_dirty;
  reg [19:0] tagsWriteLastCmd_payload_data_address;
  reg  dataReadCmd_valid;
  reg [9:0] dataReadCmd_payload;
  reg  dataWriteCmd_valid;
  reg [9:0] dataWriteCmd_payload_address;
  reg [31:0] dataWriteCmd_payload_data;
  reg [3:0] dataWriteCmd_payload_mask;
  reg [6:0] way_tagReadRspOneAddress;
  wire [21:0] _zz_4_;
  wire  _zz_5_;
  reg  tagsWriteCmd_valid_regNextWhen;
  reg [6:0] tagsWriteCmd_payload_address_regNextWhen;
  reg  tagsWriteCmd_payload_data_regNextWhen_used;
  reg  tagsWriteCmd_payload_data_regNextWhen_dirty;
  reg [19:0] tagsWriteCmd_payload_data_regNextWhen_address;
  wire  _zz_6_;
  wire  way_tagReadRspOne_used;
  wire  way_tagReadRspOne_dirty;
  wire [19:0] way_tagReadRspOne_address;
  reg  way_dataReadRspOneKeepAddress;
  reg [9:0] way_dataReadRspOneAddress;
  wire [31:0] way_dataReadRspOneWithoutBypass;
  wire  _zz_7_;
  wire  _zz_8_;
  reg  dataWriteCmd_valid_regNextWhen;
  reg [9:0] dataWriteCmd_payload_address_regNextWhen;
  reg [31:0] _zz_9_;
  reg [3:0] _zz_10_;
  reg [31:0] way_dataReadRspOne;
  wire  _zz_11_;
  wire  way_tagReadRspTwoEnable;
  wire  _zz_12_;
  wire  way_tagReadRspTwoRegIn_used;
  wire  way_tagReadRspTwoRegIn_dirty;
  wire [19:0] way_tagReadRspTwoRegIn_address;
  reg  way_tagReadRspTwo_used;
  reg  way_tagReadRspTwo_dirty;
  reg [19:0] way_tagReadRspTwo_address;
  wire  way_dataReadRspTwoEnable;
  reg [9:0] way_dataReadRspOneAddress_regNextWhen;
  wire  _zz_13_;
  wire  _zz_14_;
  reg [7:0] _zz_15_;
  reg [7:0] _zz_16_;
  reg [7:0] _zz_17_;
  reg [7:0] _zz_18_;
  wire [31:0] way_dataReadRspTwo;
  wire  cpuMemoryStageNeedReadData;
  reg  victim_requestIn_valid;
  wire  victim_requestIn_ready;
  reg [31:0] victim_requestIn_payload_address;
  wire  victim_requestIn_halfPipe_valid;
  reg  victim_requestIn_halfPipe_ready;
  wire [31:0] victim_requestIn_halfPipe_payload_address;
  reg  _zz_19_;
  reg  _zz_20_;
  reg [31:0] _zz_21_;
  reg [3:0] victim_readLineCmdCounter;
  reg  victim_dataReadCmdOccure;
  reg  victim_dataReadRestored;
  reg [3:0] victim_readLineRspCounter;
  reg  victim_dataReadCmdOccure_delay_1;
  reg [3:0] victim_bufferReadCounter;
  wire  victim_bufferReadStream_valid;
  wire  victim_bufferReadStream_ready;
  wire [2:0] victim_bufferReadStream_payload;
  wire  _zz_22_;
  wire  _zz_23_;
  reg  _zz_24_;
  wire  _zz_25_;
  reg  _zz_26_;
  reg  _zz_27_;
  reg [31:0] _zz_28_;
  reg [2:0] victim_bufferReadedCounter;
  reg  victim_memCmdAlreadyUsed;
  wire  victim_counter_willIncrement;
  wire  victim_counter_willClear;
  reg [2:0] victim_counter_valueNext;
  reg [2:0] victim_counter_value;
  wire  victim_counter_willOverflowIfInc;
  wire  victim_counter_willOverflow;
  reg `DataCacheCpuCmdKind_defaultEncoding_type stageA_request_kind;
  reg  stageA_request_wr;
  reg [31:0] stageA_request_address;
  reg [31:0] stageA_request_data;
  reg [1:0] stageA_request_size;
  reg  stageA_request_forceUncachedAccess;
  reg  stageA_request_clean;
  reg  stageA_request_invalidate;
  reg  stageA_request_way;
  reg `DataCacheCpuCmdKind_defaultEncoding_type stageB_request_kind;
  reg  stageB_request_wr;
  reg [31:0] stageB_request_address;
  reg [31:0] stageB_request_data;
  reg [1:0] stageB_request_size;
  reg  stageB_request_forceUncachedAccess;
  reg  stageB_request_clean;
  reg  stageB_request_invalidate;
  reg  stageB_request_way;
  reg [31:0] stageB_mmuRsp_baseAddress;
  reg  stageB_mmuRsp_isIoAccess;
  reg  stageB_mmuRsp_allowRead;
  reg  stageB_mmuRsp_allowWrite;
  reg  stageB_mmuRsp_allowExecute;
  reg  stageB_mmuRsp_allowUser;
  reg  stageB_mmuRsp_miss;
  reg  stageB_mmuRsp_hit;
  reg  stageB_waysHit;
  reg  stageB_loaderValid;
  reg  stageB_loaderReady;
  reg  stageB_loadingDone;
  reg  stageB_delayedIsStuck;
  reg  stageB_delayedWaysHitValid;
  reg  stageB_victimNotSent;
  reg  stageB_loadingNotDone;
  reg [3:0] _zz_29_;
  wire [3:0] stageB_writeMask;
  reg  stageB_hadMemRspErrorReg;
  wire  stageB_hadMemRspError;
  reg  stageB_bootEvicts_valid;
  wire [4:0] _zz_30_;
  wire  _zz_31_;
  wire  _zz_32_;
  reg  _zz_33_;
  wire [4:0] _zz_34_;
  reg  loader_valid;
  reg  loader_memCmdSent;
  reg  loader_counter_willIncrement;
  wire  loader_counter_willClear;
  reg [2:0] loader_counter_valueNext;
  reg [2:0] loader_counter_value;
  wire  loader_counter_willOverflowIfInc;
  wire  loader_counter_willOverflow;
  reg [21:0] way_tags [0:127];
  reg [7:0] way_data_symbol0 [0:1023];
  reg [7:0] way_data_symbol1 [0:1023];
  reg [7:0] way_data_symbol2 [0:1023];
  reg [7:0] way_data_symbol3 [0:1023];
  reg [7:0] _zz_53_;
  reg [7:0] _zz_54_;
  reg [7:0] _zz_55_;
  reg [7:0] _zz_56_;
  reg [31:0] victim_buffer [0:7];
  assign _zz_38_ = (! victim_readLineCmdCounter[3]);
  assign _zz_39_ = ((! victim_memCmdAlreadyUsed) && io_mem_cmd_ready);
  assign _zz_40_ = (stageB_mmuRsp_baseAddress[11 : 5] != (7'b1111111));
  assign _zz_41_ = (! victim_requestIn_halfPipe_valid);
  assign _zz_42_ = (! _zz_33_);
  assign _zz_43_ = (! _zz_19_);
  assign _zz_44_ = (! io_cpu_writeBack_isStuck);
  assign _zz_45_ = _zz_4_[0 : 0];
  assign _zz_46_ = _zz_4_[1 : 1];
  assign _zz_47_ = victim_readLineRspCounter[2:0];
  assign _zz_48_ = victim_counter_willIncrement;
  assign _zz_49_ = {2'd0, _zz_48_};
  assign _zz_50_ = loader_counter_willIncrement;
  assign _zz_51_ = {2'd0, _zz_50_};
  assign _zz_52_ = {tagsWriteCmd_payload_data_address,{tagsWriteCmd_payload_data_dirty,tagsWriteCmd_payload_data_used}};
  always @ (posedge clk) begin
    if(_zz_3_) begin
      way_tags[tagsWriteCmd_payload_address] <= _zz_52_;
    end
  end

  always @ (posedge clk) begin
    if(tagsReadCmd_valid) begin
      _zz_35_ <= way_tags[tagsReadCmd_payload];
    end
  end

  always @ (*) begin
    _zz_36_ = {_zz_56_, _zz_55_, _zz_54_, _zz_53_};
  end
  always @ (posedge clk) begin
    if(dataWriteCmd_payload_mask[0] && _zz_2_) begin
      way_data_symbol0[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[7 : 0];
    end
    if(dataWriteCmd_payload_mask[1] && _zz_2_) begin
      way_data_symbol1[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[15 : 8];
    end
    if(dataWriteCmd_payload_mask[2] && _zz_2_) begin
      way_data_symbol2[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[23 : 16];
    end
    if(dataWriteCmd_payload_mask[3] && _zz_2_) begin
      way_data_symbol3[dataWriteCmd_payload_address] <= dataWriteCmd_payload_data[31 : 24];
    end
  end

  always @ (posedge clk) begin
    if(dataReadCmd_valid) begin
      _zz_53_ <= way_data_symbol0[dataReadCmd_payload];
      _zz_54_ <= way_data_symbol1[dataReadCmd_payload];
      _zz_55_ <= way_data_symbol2[dataReadCmd_payload];
      _zz_56_ <= way_data_symbol3[dataReadCmd_payload];
    end
  end

  always @ (posedge clk) begin
    if(_zz_1_) begin
      victim_buffer[_zz_47_] <= way_dataReadRspOneWithoutBypass;
    end
  end

  always @ (posedge clk) begin
    if(victim_bufferReadStream_ready) begin
      _zz_37_ <= victim_buffer[victim_bufferReadStream_payload];
    end
  end

  always @ (*) begin
    _zz_1_ = 1'b0;
    if(victim_dataReadCmdOccure_delay_1)begin
      _zz_1_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_2_ = 1'b0;
    if(dataWriteCmd_valid)begin
      _zz_2_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_3_ = 1'b0;
    if(tagsWriteCmd_valid)begin
      _zz_3_ = 1'b1;
    end
  end

  assign haltCpu = 1'b0;
  always @ (*) begin
    tagsReadCmd_valid = 1'b0;
    tagsReadCmd_payload = (7'bxxxxxxx);
    dataReadCmd_valid = 1'b0;
    dataReadCmd_payload = (10'bxxxxxxxxxx);
    way_dataReadRspOneKeepAddress = 1'b0;
    if((io_cpu_execute_isValid && (! io_cpu_execute_isStuck)))begin
      tagsReadCmd_valid = 1'b1;
      tagsReadCmd_payload = io_cpu_execute_args_address[11 : 5];
      dataReadCmd_valid = 1'b1;
      dataReadCmd_payload = io_cpu_execute_args_address[11 : 2];
    end
    victim_dataReadCmdOccure = 1'b0;
    if(victim_requestIn_halfPipe_valid)begin
      if(_zz_38_)begin
        victim_dataReadCmdOccure = 1'b1;
        dataReadCmd_valid = 1'b1;
        dataReadCmd_payload = {victim_requestIn_halfPipe_payload_address[11 : 5],victim_readLineCmdCounter[2 : 0]};
        way_dataReadRspOneKeepAddress = 1'b1;
      end else begin
        if(((! victim_dataReadRestored) && cpuMemoryStageNeedReadData))begin
          dataReadCmd_valid = 1'b1;
          dataReadCmd_payload = way_dataReadRspOneAddress;
        end
      end
    end
  end

  always @ (*) begin
    tagsWriteCmd_valid = 1'b0;
    tagsWriteCmd_payload_address = (7'bxxxxxxx);
    tagsWriteCmd_payload_data_used = 1'bx;
    tagsWriteCmd_payload_data_dirty = 1'bx;
    tagsWriteCmd_payload_data_address = (20'bxxxxxxxxxxxxxxxxxxxx);
    dataWriteCmd_valid = 1'b0;
    dataWriteCmd_payload_address = (10'bxxxxxxxxxx);
    dataWriteCmd_payload_data = (32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
    dataWriteCmd_payload_mask = (4'bxxxx);
    io_mem_cmd_valid = 1'b0;
    io_mem_cmd_payload_wr = 1'bx;
    io_mem_cmd_payload_address = (32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
    io_mem_cmd_payload_data = (32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
    io_mem_cmd_payload_mask = (4'bxxxx);
    io_mem_cmd_payload_length = (3'bxxx);
    io_mem_cmd_payload_last = 1'bx;
    victim_requestIn_valid = 1'b0;
    victim_requestIn_payload_address = (32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
    victim_requestIn_halfPipe_ready = 1'b0;
    _zz_26_ = 1'b0;
    if(_zz_25_)begin
      io_mem_cmd_valid = 1'b1;
      io_mem_cmd_payload_wr = 1'b1;
      io_mem_cmd_payload_address = {victim_requestIn_halfPipe_payload_address[31 : 5],(5'b00000)};
      io_mem_cmd_payload_length = (3'b111);
      io_mem_cmd_payload_data = _zz_28_;
      io_mem_cmd_payload_mask = (4'b1111);
      io_mem_cmd_payload_last = (victim_bufferReadedCounter == (3'b111));
      if(_zz_39_)begin
        _zz_26_ = 1'b1;
        if((victim_bufferReadedCounter == (3'b111)))begin
          victim_requestIn_halfPipe_ready = 1'b1;
        end
      end
    end
    stageB_loaderValid = 1'b0;
    io_cpu_writeBack_haltIt = io_cpu_writeBack_isValid;
    io_cpu_writeBack_mmuMiss = 1'b0;
    io_cpu_writeBack_illegalAccess = 1'b0;
    io_cpu_writeBack_unalignedAccess = 1'b0;
    if(stageB_bootEvicts_valid)begin
      tagsWriteCmd_valid = stageB_bootEvicts_valid;
      tagsWriteCmd_payload_address = stageB_mmuRsp_baseAddress[11 : 5];
      tagsWriteCmd_payload_data_used = 1'b0;
      if(_zz_40_)begin
        io_cpu_writeBack_haltIt = 1'b1;
      end
    end
    if(io_cpu_writeBack_isValid)begin
      io_cpu_writeBack_mmuMiss = stageB_mmuRsp_miss;
      case(stageB_request_kind)
        `DataCacheCpuCmdKind_defaultEncoding_MANAGMENT : begin
          if((stageB_delayedIsStuck && (! stageB_mmuRsp_miss)))begin
            if((stageB_delayedWaysHitValid || (stageB_request_way && way_tagReadRspTwo_used)))begin
              if((! (victim_requestIn_valid && (! victim_requestIn_ready))))begin
                io_cpu_writeBack_haltIt = 1'b0;
              end
              victim_requestIn_valid = (stageB_request_clean && way_tagReadRspTwo_dirty);
              tagsWriteCmd_valid = victim_requestIn_ready;
            end else begin
              io_cpu_writeBack_haltIt = 1'b0;
            end
          end
          victim_requestIn_payload_address = {{way_tagReadRspTwo_address,stageB_mmuRsp_baseAddress[11 : 5]},_zz_30_};
          tagsWriteCmd_payload_address = stageB_mmuRsp_baseAddress[11 : 5];
          tagsWriteCmd_payload_data_used = (! stageB_request_invalidate);
          tagsWriteCmd_payload_data_dirty = (! stageB_request_clean);
        end
        default : begin
          io_cpu_writeBack_illegalAccess = _zz_31_;
          io_cpu_writeBack_unalignedAccess = _zz_32_;
          if((((1'b0 || (! stageB_mmuRsp_miss)) && (! _zz_31_)) && (! _zz_32_)))begin
            if((stageB_request_forceUncachedAccess || stageB_mmuRsp_isIoAccess))begin
              if(_zz_41_)begin
                io_mem_cmd_payload_wr = stageB_request_wr;
                io_mem_cmd_payload_address = {stageB_mmuRsp_baseAddress[31 : 2],(2'b00)};
                io_mem_cmd_payload_mask = stageB_writeMask;
                io_mem_cmd_payload_data = stageB_request_data;
                io_mem_cmd_payload_length = (3'b000);
                io_mem_cmd_payload_last = 1'b1;
                if(_zz_42_)begin
                  io_mem_cmd_valid = 1'b1;
                end
                if((_zz_33_ && (io_mem_rsp_valid || stageB_request_wr)))begin
                  io_cpu_writeBack_haltIt = 1'b0;
                end
              end
            end else begin
              if((stageB_waysHit || (! stageB_loadingNotDone)))begin
                io_cpu_writeBack_haltIt = 1'b0;
                dataWriteCmd_valid = stageB_request_wr;
                dataWriteCmd_payload_address = stageB_mmuRsp_baseAddress[11 : 2];
                dataWriteCmd_payload_data = stageB_request_data;
                dataWriteCmd_payload_mask = stageB_writeMask;
                tagsWriteCmd_valid = ((! stageB_loadingNotDone) || stageB_request_wr);
                tagsWriteCmd_payload_address = stageB_mmuRsp_baseAddress[11 : 5];
                tagsWriteCmd_payload_data_used = 1'b1;
                tagsWriteCmd_payload_data_dirty = stageB_request_wr;
                tagsWriteCmd_payload_data_address = stageB_mmuRsp_baseAddress[31 : 12];
              end else begin
                stageB_loaderValid = (stageB_loadingNotDone && (! (stageB_victimNotSent && (victim_requestIn_halfPipe_valid && (! victim_requestIn_halfPipe_ready)))));
                victim_requestIn_valid = ((way_tagReadRspTwo_used && way_tagReadRspTwo_dirty) && stageB_victimNotSent);
                victim_requestIn_payload_address = {{way_tagReadRspTwo_address,stageB_mmuRsp_baseAddress[11 : 5]},_zz_34_};
              end
            end
          end
        end
      endcase
    end
    if((loader_valid && (! loader_memCmdSent)))begin
      io_mem_cmd_valid = 1'b1;
      io_mem_cmd_payload_wr = 1'b0;
      io_mem_cmd_payload_address = {stageB_mmuRsp_baseAddress[31 : 5],(5'b00000)};
      io_mem_cmd_payload_length = (3'b111);
      io_mem_cmd_payload_last = 1'b1;
    end
    loader_counter_willIncrement = 1'b0;
    if((loader_valid && io_mem_rsp_valid))begin
      dataWriteCmd_valid = 1'b1;
      dataWriteCmd_payload_address = {stageB_mmuRsp_baseAddress[11 : 5],loader_counter_value};
      dataWriteCmd_payload_data = io_mem_rsp_payload_data;
      dataWriteCmd_payload_mask = (4'b1111);
      loader_counter_willIncrement = 1'b1;
    end
  end

  assign _zz_4_ = _zz_35_;
  assign _zz_5_ = (tagsReadCmd_valid || (tagsWriteCmd_valid && (tagsWriteCmd_payload_address == way_tagReadRspOneAddress)));
  assign _zz_6_ = (tagsWriteCmd_valid_regNextWhen && (tagsWriteCmd_payload_address_regNextWhen == way_tagReadRspOneAddress));
  assign way_tagReadRspOne_used = (_zz_6_ ? tagsWriteCmd_payload_data_regNextWhen_used : _zz_45_[0]);
  assign way_tagReadRspOne_dirty = (_zz_6_ ? tagsWriteCmd_payload_data_regNextWhen_dirty : _zz_46_[0]);
  assign way_tagReadRspOne_address = (_zz_6_ ? tagsWriteCmd_payload_data_regNextWhen_address : _zz_4_[21 : 2]);
  assign way_dataReadRspOneWithoutBypass = _zz_36_;
  assign _zz_7_ = (dataWriteCmd_valid && (dataWriteCmd_payload_address == way_dataReadRspOneAddress));
  assign _zz_8_ = (dataReadCmd_valid || _zz_7_);
  assign _zz_11_ = (dataWriteCmd_valid_regNextWhen && (dataWriteCmd_payload_address_regNextWhen == way_dataReadRspOneAddress));
  always @ (*) begin
    way_dataReadRspOne[7 : 0] = ((_zz_11_ && _zz_10_[0]) ? _zz_9_[7 : 0] : way_dataReadRspOneWithoutBypass[7 : 0]);
    way_dataReadRspOne[15 : 8] = ((_zz_11_ && _zz_10_[1]) ? _zz_9_[15 : 8] : way_dataReadRspOneWithoutBypass[15 : 8]);
    way_dataReadRspOne[23 : 16] = ((_zz_11_ && _zz_10_[2]) ? _zz_9_[23 : 16] : way_dataReadRspOneWithoutBypass[23 : 16]);
    way_dataReadRspOne[31 : 24] = ((_zz_11_ && _zz_10_[3]) ? _zz_9_[31 : 24] : way_dataReadRspOneWithoutBypass[31 : 24]);
  end

  assign way_tagReadRspTwoEnable = (! io_cpu_writeBack_isStuck);
  assign _zz_12_ = (tagsWriteCmd_valid && (tagsWriteCmd_payload_address == way_tagReadRspOneAddress));
  assign way_tagReadRspTwoRegIn_used = (_zz_12_ ? tagsWriteCmd_payload_data_used : way_tagReadRspOne_used);
  assign way_tagReadRspTwoRegIn_dirty = (_zz_12_ ? tagsWriteCmd_payload_data_dirty : way_tagReadRspOne_dirty);
  assign way_tagReadRspTwoRegIn_address = (_zz_12_ ? tagsWriteCmd_payload_data_address : way_tagReadRspOne_address);
  assign way_dataReadRspTwoEnable = (! io_cpu_writeBack_isStuck);
  assign _zz_13_ = (dataWriteCmd_valid && (way_dataReadRspOneAddress == dataWriteCmd_payload_address));
  assign _zz_14_ = (dataWriteCmd_valid && (way_dataReadRspOneAddress_regNextWhen == dataWriteCmd_payload_address));
  assign way_dataReadRspTwo = {_zz_18_,{_zz_17_,{_zz_16_,_zz_15_}}};
  assign victim_requestIn_halfPipe_valid = _zz_19_;
  assign victim_requestIn_halfPipe_payload_address = _zz_21_;
  assign victim_requestIn_ready = _zz_20_;
  assign io_cpu_memory_haltIt = ((cpuMemoryStageNeedReadData && victim_requestIn_halfPipe_valid) && (! victim_dataReadRestored));
  assign victim_bufferReadStream_valid = (victim_bufferReadCounter < victim_readLineRspCounter);
  assign victim_bufferReadStream_payload = victim_bufferReadCounter[2:0];
  assign victim_bufferReadStream_ready = ((! _zz_22_) || _zz_23_);
  assign _zz_22_ = _zz_24_;
  assign _zz_23_ = ((1'b1 && (! _zz_25_)) || _zz_26_);
  assign _zz_25_ = _zz_27_;
  always @ (*) begin
    victim_memCmdAlreadyUsed = 1'b0;
    if((loader_valid && (! loader_memCmdSent)))begin
      victim_memCmdAlreadyUsed = 1'b1;
    end
  end

  assign victim_counter_willIncrement = 1'b0;
  assign victim_counter_willClear = 1'b0;
  assign victim_counter_willOverflowIfInc = (victim_counter_value == (3'b111));
  assign victim_counter_willOverflow = (victim_counter_willOverflowIfInc && victim_counter_willIncrement);
  always @ (*) begin
    victim_counter_valueNext = (victim_counter_value + _zz_49_);
    if(victim_counter_willClear)begin
      victim_counter_valueNext = (3'b000);
    end
  end

  assign io_cpu_memory_mmuBus_cmd_isValid = (io_cpu_memory_isValid && (stageA_request_kind == `DataCacheCpuCmdKind_defaultEncoding_MEMORY));
  assign io_cpu_memory_mmuBus_cmd_virtualAddress = stageA_request_address;
  assign io_cpu_memory_mmuBus_cmd_bypassTranslation = stageA_request_way;
  assign io_cpu_memory_mmuBus_end = ((! io_cpu_memory_isStuck) || io_cpu_memory_isRemoved);
  assign cpuMemoryStageNeedReadData = ((io_cpu_memory_isValid && (stageA_request_kind == `DataCacheCpuCmdKind_defaultEncoding_MEMORY)) && (! stageA_request_wr));
  always @ (*) begin
    stageB_loaderReady = 1'b0;
    if(loader_counter_willOverflow)begin
      stageB_loaderReady = 1'b1;
    end
  end

  always @ (*) begin
    case(stageB_request_size)
      2'b00 : begin
        _zz_29_ = (4'b0001);
      end
      2'b01 : begin
        _zz_29_ = (4'b0011);
      end
      default : begin
        _zz_29_ = (4'b1111);
      end
    endcase
  end

  assign stageB_writeMask = (_zz_29_ <<< stageB_mmuRsp_baseAddress[1 : 0]);
  assign stageB_hadMemRspError = ((io_mem_rsp_valid && io_mem_rsp_payload_error) || stageB_hadMemRspErrorReg);
  assign io_cpu_writeBack_accessError = (stageB_hadMemRspError && (! io_cpu_writeBack_haltIt));
  assign io_cpu_writeBack_badAddr = stageB_request_address;
  assign _zz_30_[4 : 0] = (5'b00000);
  assign _zz_31_ = (((stageB_request_wr && (! stageB_mmuRsp_allowWrite)) || ((! stageB_request_wr) && (! stageB_mmuRsp_allowRead))) || (io_cpu_writeBack_isUser && (! stageB_mmuRsp_allowUser)));
  assign _zz_32_ = (((stageB_request_size == (2'b10)) && (stageB_mmuRsp_baseAddress[1 : 0] != (2'b00))) || ((stageB_request_size == (2'b01)) && (stageB_mmuRsp_baseAddress[0 : 0] != (1'b0))));
  assign _zz_34_[4 : 0] = (5'b00000);
  assign io_cpu_writeBack_data = ((stageB_request_forceUncachedAccess || stageB_mmuRsp_isIoAccess) ? io_mem_rsp_payload_data : way_dataReadRspTwo);
  assign loader_counter_willClear = 1'b0;
  assign loader_counter_willOverflowIfInc = (loader_counter_value == (3'b111));
  assign loader_counter_willOverflow = (loader_counter_willOverflowIfInc && loader_counter_willIncrement);
  always @ (*) begin
    loader_counter_valueNext = (loader_counter_value + _zz_51_);
    if(loader_counter_willClear)begin
      loader_counter_valueNext = (3'b000);
    end
  end

  always @ (posedge clk) begin
    tagsWriteLastCmd_valid <= tagsWriteCmd_valid;
    tagsWriteLastCmd_payload_address <= tagsWriteCmd_payload_address;
    tagsWriteLastCmd_payload_data_used <= tagsWriteCmd_payload_data_used;
    tagsWriteLastCmd_payload_data_dirty <= tagsWriteCmd_payload_data_dirty;
    tagsWriteLastCmd_payload_data_address <= tagsWriteCmd_payload_data_address;
    if(tagsReadCmd_valid)begin
      way_tagReadRspOneAddress <= tagsReadCmd_payload;
    end
    if(_zz_5_)begin
      tagsWriteCmd_valid_regNextWhen <= tagsWriteCmd_valid;
    end
    if(_zz_5_)begin
      tagsWriteCmd_payload_address_regNextWhen <= tagsWriteCmd_payload_address;
    end
    if(_zz_5_)begin
      tagsWriteCmd_payload_data_regNextWhen_used <= tagsWriteCmd_payload_data_used;
      tagsWriteCmd_payload_data_regNextWhen_dirty <= tagsWriteCmd_payload_data_dirty;
      tagsWriteCmd_payload_data_regNextWhen_address <= tagsWriteCmd_payload_data_address;
    end
    if((dataReadCmd_valid && (! way_dataReadRspOneKeepAddress)))begin
      way_dataReadRspOneAddress <= dataReadCmd_payload;
    end
    if(_zz_8_)begin
      dataWriteCmd_valid_regNextWhen <= dataWriteCmd_valid;
    end
    if(_zz_8_)begin
      dataWriteCmd_payload_address_regNextWhen <= dataWriteCmd_payload_address;
    end
    if((_zz_7_ && dataWriteCmd_payload_mask[0]))begin
      _zz_10_[0] <= 1'b1;
    end
    if(dataReadCmd_valid)begin
      _zz_10_[0] <= dataWriteCmd_payload_mask[0];
    end
    if((dataReadCmd_valid || (_zz_7_ && dataWriteCmd_payload_mask[0])))begin
      _zz_9_[7 : 0] <= dataWriteCmd_payload_data[7 : 0];
    end
    if((_zz_7_ && dataWriteCmd_payload_mask[1]))begin
      _zz_10_[1] <= 1'b1;
    end
    if(dataReadCmd_valid)begin
      _zz_10_[1] <= dataWriteCmd_payload_mask[1];
    end
    if((dataReadCmd_valid || (_zz_7_ && dataWriteCmd_payload_mask[1])))begin
      _zz_9_[15 : 8] <= dataWriteCmd_payload_data[15 : 8];
    end
    if((_zz_7_ && dataWriteCmd_payload_mask[2]))begin
      _zz_10_[2] <= 1'b1;
    end
    if(dataReadCmd_valid)begin
      _zz_10_[2] <= dataWriteCmd_payload_mask[2];
    end
    if((dataReadCmd_valid || (_zz_7_ && dataWriteCmd_payload_mask[2])))begin
      _zz_9_[23 : 16] <= dataWriteCmd_payload_data[23 : 16];
    end
    if((_zz_7_ && dataWriteCmd_payload_mask[3]))begin
      _zz_10_[3] <= 1'b1;
    end
    if(dataReadCmd_valid)begin
      _zz_10_[3] <= dataWriteCmd_payload_mask[3];
    end
    if((dataReadCmd_valid || (_zz_7_ && dataWriteCmd_payload_mask[3])))begin
      _zz_9_[31 : 24] <= dataWriteCmd_payload_data[31 : 24];
    end
    if(way_tagReadRspTwoEnable)begin
      way_tagReadRspTwo_used <= way_tagReadRspTwoRegIn_used;
      way_tagReadRspTwo_dirty <= way_tagReadRspTwoRegIn_dirty;
      way_tagReadRspTwo_address <= way_tagReadRspTwoRegIn_address;
    end
    if(way_dataReadRspTwoEnable)begin
      way_dataReadRspOneAddress_regNextWhen <= way_dataReadRspOneAddress;
    end
    if((way_dataReadRspTwoEnable || (_zz_14_ && dataWriteCmd_payload_mask[0])))begin
      _zz_15_ <= (((! way_dataReadRspTwoEnable) || (_zz_13_ && dataWriteCmd_payload_mask[0])) ? dataWriteCmd_payload_data[7 : 0] : way_dataReadRspOne[7 : 0]);
    end
    if((way_dataReadRspTwoEnable || (_zz_14_ && dataWriteCmd_payload_mask[1])))begin
      _zz_16_ <= (((! way_dataReadRspTwoEnable) || (_zz_13_ && dataWriteCmd_payload_mask[1])) ? dataWriteCmd_payload_data[15 : 8] : way_dataReadRspOne[15 : 8]);
    end
    if((way_dataReadRspTwoEnable || (_zz_14_ && dataWriteCmd_payload_mask[2])))begin
      _zz_17_ <= (((! way_dataReadRspTwoEnable) || (_zz_13_ && dataWriteCmd_payload_mask[2])) ? dataWriteCmd_payload_data[23 : 16] : way_dataReadRspOne[23 : 16]);
    end
    if((way_dataReadRspTwoEnable || (_zz_14_ && dataWriteCmd_payload_mask[3])))begin
      _zz_18_ <= (((! way_dataReadRspTwoEnable) || (_zz_13_ && dataWriteCmd_payload_mask[3])) ? dataWriteCmd_payload_data[31 : 24] : way_dataReadRspOne[31 : 24]);
    end
    if(_zz_43_)begin
      _zz_21_ <= victim_requestIn_payload_address;
    end
    if(_zz_23_)begin
      _zz_28_ <= _zz_37_;
    end
    if((! io_cpu_memory_isStuck))begin
      stageA_request_kind <= io_cpu_execute_args_kind;
      stageA_request_wr <= io_cpu_execute_args_wr;
      stageA_request_address <= io_cpu_execute_args_address;
      stageA_request_data <= io_cpu_execute_args_data;
      stageA_request_size <= io_cpu_execute_args_size;
      stageA_request_forceUncachedAccess <= io_cpu_execute_args_forceUncachedAccess;
      stageA_request_clean <= io_cpu_execute_args_clean;
      stageA_request_invalidate <= io_cpu_execute_args_invalidate;
      stageA_request_way <= io_cpu_execute_args_way;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_request_kind <= stageA_request_kind;
      stageB_request_wr <= stageA_request_wr;
      stageB_request_address <= stageA_request_address;
      stageB_request_data <= stageA_request_data;
      stageB_request_size <= stageA_request_size;
      stageB_request_forceUncachedAccess <= stageA_request_forceUncachedAccess;
      stageB_request_clean <= stageA_request_clean;
      stageB_request_invalidate <= stageA_request_invalidate;
      stageB_request_way <= stageA_request_way;
    end
    if(_zz_44_)begin
      stageB_mmuRsp_isIoAccess <= io_cpu_memory_mmuBus_rsp_isIoAccess;
      stageB_mmuRsp_allowRead <= io_cpu_memory_mmuBus_rsp_allowRead;
      stageB_mmuRsp_allowWrite <= io_cpu_memory_mmuBus_rsp_allowWrite;
      stageB_mmuRsp_allowExecute <= io_cpu_memory_mmuBus_rsp_allowExecute;
      stageB_mmuRsp_allowUser <= io_cpu_memory_mmuBus_rsp_allowUser;
      stageB_mmuRsp_miss <= io_cpu_memory_mmuBus_rsp_miss;
      stageB_mmuRsp_hit <= io_cpu_memory_mmuBus_rsp_hit;
    end
    if((! io_cpu_writeBack_isStuck))begin
      stageB_waysHit <= (way_tagReadRspTwoRegIn_used && (io_cpu_memory_mmuBus_rsp_physicalAddress[31 : 12] == way_tagReadRspTwoRegIn_address));
    end
    stageB_delayedIsStuck <= io_cpu_writeBack_isStuck;
    stageB_delayedWaysHitValid <= stageB_waysHit;
    if(!(! ((io_cpu_writeBack_isValid && (! io_cpu_writeBack_haltIt)) && io_cpu_writeBack_isStuck))) begin
      $display("ERROR writeBack stuck by another plugin is not allowed");
    end
  end

  always @ (posedge clk) begin
    if(reset) begin
      _zz_19_ <= 1'b0;
      _zz_20_ <= 1'b1;
      victim_readLineCmdCounter <= (4'b0000);
      victim_dataReadRestored <= 1'b0;
      victim_readLineRspCounter <= (4'b0000);
      victim_dataReadCmdOccure_delay_1 <= 1'b0;
      victim_bufferReadCounter <= (4'b0000);
      _zz_24_ <= 1'b0;
      _zz_27_ <= 1'b0;
      victim_bufferReadedCounter <= (3'b000);
      victim_counter_value <= (3'b000);
      stageB_loadingDone <= 1'b0;
      stageB_victimNotSent <= 1'b0;
      stageB_loadingNotDone <= 1'b0;
      stageB_hadMemRspErrorReg <= 1'b0;
      stageB_bootEvicts_valid <= 1'b1;
      stageB_mmuRsp_baseAddress <= (32'b00000000000000000000000000000000);
      loader_valid <= 1'b0;
      loader_memCmdSent <= 1'b0;
      loader_counter_value <= (3'b000);
    end else begin
      if(_zz_43_)begin
        _zz_19_ <= victim_requestIn_valid;
        _zz_20_ <= (! victim_requestIn_valid);
      end else begin
        _zz_19_ <= (! victim_requestIn_halfPipe_ready);
        _zz_20_ <= victim_requestIn_halfPipe_ready;
      end
      if(victim_requestIn_halfPipe_valid)begin
        if(_zz_38_)begin
          victim_readLineCmdCounter <= (victim_readLineCmdCounter + (4'b0001));
        end else begin
          victim_dataReadRestored <= 1'b1;
        end
      end
      if(victim_requestIn_halfPipe_ready)begin
        victim_dataReadRestored <= 1'b0;
      end
      victim_dataReadCmdOccure_delay_1 <= victim_dataReadCmdOccure;
      if(victim_dataReadCmdOccure_delay_1)begin
        victim_readLineRspCounter <= (victim_readLineRspCounter + (4'b0001));
      end
      if((victim_bufferReadStream_valid && victim_bufferReadStream_ready))begin
        victim_bufferReadCounter <= (victim_bufferReadCounter + (4'b0001));
      end
      if(_zz_23_)begin
        _zz_24_ <= 1'b0;
      end
      if(victim_bufferReadStream_ready)begin
        _zz_24_ <= victim_bufferReadStream_valid;
      end
      if(_zz_23_)begin
        _zz_27_ <= _zz_22_;
      end
      if(_zz_25_)begin
        if(_zz_39_)begin
          victim_bufferReadedCounter <= (victim_bufferReadedCounter + (3'b001));
        end
      end
      victim_counter_value <= victim_counter_valueNext;
      if(victim_requestIn_halfPipe_ready)begin
        victim_readLineCmdCounter[3] <= 1'b0;
        victim_readLineRspCounter[3] <= 1'b0;
        victim_bufferReadCounter[3] <= 1'b0;
      end
      if(_zz_44_)begin
        stageB_mmuRsp_baseAddress <= io_cpu_memory_mmuBus_rsp_physicalAddress;
      end
      stageB_loadingDone <= (stageB_loaderValid && stageB_loaderReady);
      if(victim_requestIn_ready)begin
        stageB_victimNotSent <= 1'b0;
      end
      if((! io_cpu_memory_isStuck))begin
        stageB_victimNotSent <= 1'b1;
      end
      if(stageB_loaderReady)begin
        stageB_loadingNotDone <= 1'b0;
      end
      if((! io_cpu_memory_isStuck))begin
        stageB_loadingNotDone <= 1'b1;
      end
      stageB_hadMemRspErrorReg <= (stageB_hadMemRspError && io_cpu_writeBack_haltIt);
      if(stageB_bootEvicts_valid)begin
        if(_zz_40_)begin
          stageB_mmuRsp_baseAddress[11 : 5] <= (stageB_mmuRsp_baseAddress[11 : 5] + (7'b0000001));
        end else begin
          stageB_bootEvicts_valid <= 1'b0;
        end
      end
      loader_valid <= stageB_loaderValid;
      if((loader_valid && io_mem_cmd_ready))begin
        loader_memCmdSent <= 1'b1;
      end
      loader_counter_value <= loader_counter_valueNext;
      if(loader_counter_willOverflow)begin
        loader_memCmdSent <= 1'b0;
        loader_valid <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(reset) begin
      _zz_33_ <= 1'b0;
    end else begin
      if(_zz_41_)begin
        if(_zz_42_)begin
          if(io_mem_cmd_ready)begin
            _zz_33_ <= 1'b1;
          end
        end
      end
      if((! io_cpu_writeBack_isStuck))begin
        _zz_33_ <= 1'b0;
      end
    end
  end

endmodule

module JtagBridge (
      input   io_jtag_tms,
      input   io_jtag_tdi,
      output reg  io_jtag_tdo,
      input   io_jtag_tck,
      output  io_remote_cmd_valid,
      input   io_remote_cmd_ready,
      output  io_remote_cmd_payload_last,
      output [0:0] io_remote_cmd_payload_fragment,
      input   io_remote_rsp_valid,
      output  io_remote_rsp_ready,
      input   io_remote_rsp_payload_error,
      input  [31:0] io_remote_rsp_payload_data,
      input   clk,
      input   reset);
  wire  _zz_2_;
  wire  _zz_3_;
  wire [0:0] _zz_4_;
  wire  _zz_5_;
  wire  _zz_6_;
  wire [5:0] _zz_7_;
  wire [5:0] _zz_8_;
  wire [5:0] _zz_9_;
  wire  system_cmd_valid;
  wire  system_cmd_payload_last;
  wire [0:0] system_cmd_payload_fragment;
  reg  system_rsp_valid;
  reg  system_rsp_payload_error;
  reg [31:0] system_rsp_payload_data;
  wire `JtagState_defaultEncoding_type jtag_tap_fsm_stateNext;
  reg `JtagState_defaultEncoding_type jtag_tap_fsm_state = `JtagState_defaultEncoding_RESET;
  reg `JtagState_defaultEncoding_type _zz_1_;
  reg [5:0] jtag_tap_instruction;
  reg [5:0] jtag_tap_instructionShift;
  reg  jtag_tap_bypass;
  wire [0:0] jtag_idcodeArea_instructionId;
  wire  jtag_idcodeArea_instructionHit;
  reg [31:0] jtag_idcodeArea_shifter;
  wire [1:0] jtag_writeArea_instructionId;
  wire  jtag_writeArea_instructionHit;
  reg  jtag_writeArea_source_valid;
  wire  jtag_writeArea_source_payload_last;
  wire [0:0] jtag_writeArea_source_payload_fragment;
  wire [1:0] jtag_readArea_instructionId;
  wire  jtag_readArea_instructionHit;
  reg [33:0] jtag_readArea_shifter;
  assign _zz_5_ = (jtag_tap_fsm_state == `JtagState_defaultEncoding_DR_SHIFT);
  assign _zz_6_ = (jtag_tap_fsm_state == `JtagState_defaultEncoding_DR_SHIFT);
  assign _zz_7_ = {5'd0, jtag_idcodeArea_instructionId};
  assign _zz_8_ = {4'd0, jtag_writeArea_instructionId};
  assign _zz_9_ = {4'd0, jtag_readArea_instructionId};
  FlowCCByToggle flowCCByToggle_1_ ( 
    .io_input_valid(jtag_writeArea_source_valid),
    .io_input_payload_last(jtag_writeArea_source_payload_last),
    .io_input_payload_fragment(jtag_writeArea_source_payload_fragment),
    .io_output_valid(_zz_2_),
    .io_output_payload_last(_zz_3_),
    .io_output_payload_fragment(_zz_4_),
    .io_jtag_tck(io_jtag_tck),
    .clk(clk),
    .reset(reset) 
  );
  assign io_remote_cmd_valid = system_cmd_valid;
  assign io_remote_cmd_payload_last = system_cmd_payload_last;
  assign io_remote_cmd_payload_fragment = system_cmd_payload_fragment;
  assign io_remote_rsp_ready = 1'b1;
  always @ (*) begin
    case(jtag_tap_fsm_state)
      `JtagState_defaultEncoding_IDLE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_SELECT : `JtagState_defaultEncoding_IDLE);
      end
      `JtagState_defaultEncoding_IR_SELECT : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_RESET : `JtagState_defaultEncoding_IR_CAPTURE);
      end
      `JtagState_defaultEncoding_IR_CAPTURE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_EXIT1 : `JtagState_defaultEncoding_IR_SHIFT);
      end
      `JtagState_defaultEncoding_IR_SHIFT : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_EXIT1 : `JtagState_defaultEncoding_IR_SHIFT);
      end
      `JtagState_defaultEncoding_IR_EXIT1 : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_UPDATE : `JtagState_defaultEncoding_IR_PAUSE);
      end
      `JtagState_defaultEncoding_IR_PAUSE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_EXIT2 : `JtagState_defaultEncoding_IR_PAUSE);
      end
      `JtagState_defaultEncoding_IR_EXIT2 : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_UPDATE : `JtagState_defaultEncoding_IR_SHIFT);
      end
      `JtagState_defaultEncoding_IR_UPDATE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_SELECT : `JtagState_defaultEncoding_IDLE);
      end
      `JtagState_defaultEncoding_DR_SELECT : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_IR_SELECT : `JtagState_defaultEncoding_DR_CAPTURE);
      end
      `JtagState_defaultEncoding_DR_CAPTURE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_EXIT1 : `JtagState_defaultEncoding_DR_SHIFT);
      end
      `JtagState_defaultEncoding_DR_SHIFT : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_EXIT1 : `JtagState_defaultEncoding_DR_SHIFT);
      end
      `JtagState_defaultEncoding_DR_EXIT1 : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_UPDATE : `JtagState_defaultEncoding_DR_PAUSE);
      end
      `JtagState_defaultEncoding_DR_PAUSE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_EXIT2 : `JtagState_defaultEncoding_DR_PAUSE);
      end
      `JtagState_defaultEncoding_DR_EXIT2 : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_UPDATE : `JtagState_defaultEncoding_DR_SHIFT);
      end
      `JtagState_defaultEncoding_DR_UPDATE : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_DR_SELECT : `JtagState_defaultEncoding_IDLE);
      end
      default : begin
        _zz_1_ = (io_jtag_tms ? `JtagState_defaultEncoding_RESET : `JtagState_defaultEncoding_IDLE);
      end
    endcase
  end

  assign jtag_tap_fsm_stateNext = _zz_1_;
  always @ (*) begin
    io_jtag_tdo = jtag_tap_bypass;
    case(jtag_tap_fsm_state)
      `JtagState_defaultEncoding_IR_CAPTURE : begin
      end
      `JtagState_defaultEncoding_IR_SHIFT : begin
        io_jtag_tdo = jtag_tap_instructionShift[0];
      end
      `JtagState_defaultEncoding_IR_UPDATE : begin
      end
      `JtagState_defaultEncoding_DR_SHIFT : begin
      end
      default : begin
      end
    endcase
    if(jtag_idcodeArea_instructionHit)begin
      if(_zz_5_)begin
        io_jtag_tdo = jtag_idcodeArea_shifter[0];
      end
    end
    if(jtag_readArea_instructionHit)begin
      if(_zz_6_)begin
        io_jtag_tdo = jtag_readArea_shifter[0];
      end
    end
  end

  assign jtag_idcodeArea_instructionId = (1'b1);
  assign jtag_idcodeArea_instructionHit = (jtag_tap_instruction == _zz_7_);
  assign jtag_writeArea_instructionId = (2'b10);
  assign jtag_writeArea_instructionHit = (jtag_tap_instruction == _zz_8_);
  always @ (*) begin
    jtag_writeArea_source_valid = 1'b0;
    if(jtag_writeArea_instructionHit)begin
      if((jtag_tap_fsm_state == `JtagState_defaultEncoding_DR_SHIFT))begin
        jtag_writeArea_source_valid = 1'b1;
      end
    end
  end

  assign jtag_writeArea_source_payload_last = io_jtag_tms;
  assign jtag_writeArea_source_payload_fragment[0] = io_jtag_tdi;
  assign system_cmd_valid = _zz_2_;
  assign system_cmd_payload_last = _zz_3_;
  assign system_cmd_payload_fragment = _zz_4_;
  assign jtag_readArea_instructionId = (2'b11);
  assign jtag_readArea_instructionHit = (jtag_tap_instruction == _zz_9_);
  always @ (posedge clk) begin
    if(io_remote_cmd_valid)begin
      system_rsp_valid <= 1'b0;
    end
    if((io_remote_rsp_valid && io_remote_rsp_ready))begin
      system_rsp_valid <= 1'b1;
      system_rsp_payload_error <= io_remote_rsp_payload_error;
      system_rsp_payload_data <= io_remote_rsp_payload_data;
    end
  end

  always @ (posedge io_jtag_tck) begin
    jtag_tap_fsm_state <= jtag_tap_fsm_stateNext;
    case(jtag_tap_fsm_state)
      `JtagState_defaultEncoding_IR_CAPTURE : begin
        jtag_tap_instructionShift <= jtag_tap_instruction;
      end
      `JtagState_defaultEncoding_IR_SHIFT : begin
        jtag_tap_instructionShift <= ({io_jtag_tdi,jtag_tap_instructionShift} >>> 1);
      end
      `JtagState_defaultEncoding_IR_UPDATE : begin
        jtag_tap_instruction <= jtag_tap_instructionShift;
      end
      `JtagState_defaultEncoding_DR_SHIFT : begin
        jtag_tap_bypass <= io_jtag_tdi;
      end
      default : begin
      end
    endcase
    if(jtag_idcodeArea_instructionHit)begin
      if(_zz_5_)begin
        jtag_idcodeArea_shifter <= ({io_jtag_tdi,jtag_idcodeArea_shifter} >>> 1);
      end
    end
    if((jtag_tap_fsm_state == `JtagState_defaultEncoding_RESET))begin
      jtag_idcodeArea_shifter <= (32'b00010000000000000001111111111111);
      jtag_tap_instruction <= {5'd0, jtag_idcodeArea_instructionId};
    end
    if(jtag_readArea_instructionHit)begin
      if((jtag_tap_fsm_state == `JtagState_defaultEncoding_DR_CAPTURE))begin
        jtag_readArea_shifter <= {{system_rsp_payload_data,system_rsp_payload_error},system_rsp_valid};
      end
      if(_zz_6_)begin
        jtag_readArea_shifter <= ({io_jtag_tdi,jtag_readArea_shifter} >>> 1);
      end
    end
  end

endmodule

module SystemDebugger (
      input   io_remote_cmd_valid,
      output  io_remote_cmd_ready,
      input   io_remote_cmd_payload_last,
      input  [0:0] io_remote_cmd_payload_fragment,
      output  io_remote_rsp_valid,
      input   io_remote_rsp_ready,
      output  io_remote_rsp_payload_error,
      output [31:0] io_remote_rsp_payload_data,
      output  io_mem_cmd_valid,
      input   io_mem_cmd_ready,
      output [31:0] io_mem_cmd_payload_address,
      output [31:0] io_mem_cmd_payload_data,
      output  io_mem_cmd_payload_wr,
      output [1:0] io_mem_cmd_payload_size,
      input   io_mem_rsp_valid,
      input  [31:0] io_mem_rsp_payload,
      input   clk,
      input   reset);
  wire  _zz_2_;
  wire [0:0] _zz_3_;
  reg [66:0] dispatcher_dataShifter;
  reg  dispatcher_dataLoaded;
  reg [7:0] dispatcher_headerShifter;
  wire [7:0] dispatcher_header;
  reg  dispatcher_headerLoaded;
  reg [2:0] dispatcher_counter;
  wire [66:0] _zz_1_;
  assign _zz_2_ = (dispatcher_headerLoaded == 1'b0);
  assign _zz_3_ = _zz_1_[64 : 64];
  assign dispatcher_header = dispatcher_headerShifter[7 : 0];
  assign io_remote_cmd_ready = (! dispatcher_dataLoaded);
  assign _zz_1_ = dispatcher_dataShifter[66 : 0];
  assign io_mem_cmd_payload_address = _zz_1_[31 : 0];
  assign io_mem_cmd_payload_data = _zz_1_[63 : 32];
  assign io_mem_cmd_payload_wr = _zz_3_[0];
  assign io_mem_cmd_payload_size = _zz_1_[66 : 65];
  assign io_mem_cmd_valid = (dispatcher_dataLoaded && (dispatcher_header == (8'b00000000)));
  assign io_remote_rsp_valid = io_mem_rsp_valid;
  assign io_remote_rsp_payload_error = 1'b0;
  assign io_remote_rsp_payload_data = io_mem_rsp_payload;
  always @ (posedge clk) begin
    if(reset) begin
      dispatcher_dataLoaded <= 1'b0;
      dispatcher_headerLoaded <= 1'b0;
      dispatcher_counter <= (3'b000);
    end else begin
      if(io_remote_cmd_valid)begin
        if(_zz_2_)begin
          dispatcher_counter <= (dispatcher_counter + (3'b001));
          if((dispatcher_counter == (3'b111)))begin
            dispatcher_headerLoaded <= 1'b1;
          end
        end
        if(io_remote_cmd_payload_last)begin
          dispatcher_headerLoaded <= 1'b1;
          dispatcher_dataLoaded <= 1'b1;
          dispatcher_counter <= (3'b000);
        end
      end
      if((io_mem_cmd_valid && io_mem_cmd_ready))begin
        dispatcher_headerLoaded <= 1'b0;
        dispatcher_dataLoaded <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    if(io_remote_cmd_valid)begin
      if(_zz_2_)begin
        dispatcher_headerShifter <= ({io_remote_cmd_payload_fragment,dispatcher_headerShifter} >>> 1);
      end else begin
        dispatcher_dataShifter <= ({io_remote_cmd_payload_fragment,dispatcher_dataShifter} >>> 1);
      end
    end
  end

endmodule

module VexRiscv (
      input  [31:0] externalResetVector,
      input   timerInterrupt,
      input   externalInterrupt,
      input   timerInterruptS,
      input  [31:0] externalInterruptArray,
      output  debug_resetOut,
      output reg  iBusWishbone_CYC,
      output reg  iBusWishbone_STB,
      input   iBusWishbone_ACK,
      output  iBusWishbone_WE,
      output [29:0] iBusWishbone_ADR,
      input  [31:0] iBusWishbone_DAT_MISO,
      output [31:0] iBusWishbone_DAT_MOSI,
      output [3:0] iBusWishbone_SEL,
      input   iBusWishbone_ERR,
      output [1:0] iBusWishbone_BTE,
      output [2:0] iBusWishbone_CTI,
      output  dBusWishbone_CYC,
      output  dBusWishbone_STB,
      input   dBusWishbone_ACK,
      output  dBusWishbone_WE,
      output [29:0] dBusWishbone_ADR,
      input  [31:0] dBusWishbone_DAT_MISO,
      output [31:0] dBusWishbone_DAT_MOSI,
      output [3:0] dBusWishbone_SEL,
      input   dBusWishbone_ERR,
      output [1:0] dBusWishbone_BTE,
      output [2:0] dBusWishbone_CTI,
      input   jtag_tms,
      input   jtag_tdi,
      output  jtag_tdo,
      input   jtag_tck,
      input   clk,
      input   reset,
      input   debugReset);
  reg  _zz_272_;
  wire  _zz_273_;
  wire  _zz_274_;
  wire  _zz_275_;
  wire  _zz_276_;
  wire  _zz_277_;
  wire  _zz_278_;
  wire `DataCacheCpuCmdKind_defaultEncoding_type _zz_279_;
  wire [31:0] _zz_280_;
  wire  _zz_281_;
  wire  _zz_282_;
  wire  _zz_283_;
  wire  _zz_284_;
  wire  _zz_285_;
  wire  _zz_286_;
  wire  _zz_287_;
  wire  _zz_288_;
  reg [44:0] _zz_289_;
  reg [31:0] _zz_290_;
  reg [31:0] _zz_291_;
  reg [31:0] _zz_292_;
  reg  _zz_293_;
  reg [19:0] _zz_294_;
  reg [19:0] _zz_295_;
  reg  _zz_296_;
  reg  _zz_297_;
  reg  _zz_298_;
  reg  _zz_299_;
  reg  _zz_300_;
  reg [19:0] _zz_301_;
  reg [19:0] _zz_302_;
  reg  _zz_303_;
  reg  _zz_304_;
  reg  _zz_305_;
  reg  _zz_306_;
  wire  _zz_307_;
  wire  _zz_308_;
  wire  _zz_309_;
  wire [31:0] _zz_310_;
  wire [31:0] _zz_311_;
  wire  _zz_312_;
  wire [31:0] _zz_313_;
  wire  _zz_314_;
  wire  _zz_315_;
  wire  _zz_316_;
  wire  _zz_317_;
  wire  _zz_318_;
  wire [31:0] _zz_319_;
  wire  _zz_320_;
  wire [31:0] _zz_321_;
  wire  _zz_322_;
  wire [31:0] _zz_323_;
  wire [2:0] _zz_324_;
  wire  _zz_325_;
  wire  _zz_326_;
  wire [31:0] _zz_327_;
  wire  _zz_328_;
  wire  _zz_329_;
  wire  _zz_330_;
  wire [31:0] _zz_331_;
  wire  _zz_332_;
  wire  _zz_333_;
  wire  _zz_334_;
  wire  _zz_335_;
  wire [31:0] _zz_336_;
  wire  _zz_337_;
  wire  _zz_338_;
  wire [31:0] _zz_339_;
  wire [31:0] _zz_340_;
  wire [3:0] _zz_341_;
  wire [2:0] _zz_342_;
  wire  _zz_343_;
  wire  _zz_344_;
  wire  _zz_345_;
  wire  _zz_346_;
  wire [0:0] _zz_347_;
  wire  _zz_348_;
  wire  _zz_349_;
  wire  _zz_350_;
  wire  _zz_351_;
  wire [31:0] _zz_352_;
  wire  _zz_353_;
  wire [31:0] _zz_354_;
  wire [31:0] _zz_355_;
  wire  _zz_356_;
  wire [1:0] _zz_357_;
  wire  _zz_358_;
  wire  _zz_359_;
  wire  _zz_360_;
  wire [1:0] _zz_361_;
  wire  _zz_362_;
  wire  _zz_363_;
  wire  _zz_364_;
  wire  _zz_365_;
  wire  _zz_366_;
  wire [1:0] _zz_367_;
  wire  _zz_368_;
  wire  _zz_369_;
  wire  _zz_370_;
  wire  _zz_371_;
  wire  _zz_372_;
  wire  _zz_373_;
  wire [5:0] _zz_374_;
  wire  _zz_375_;
  wire [1:0] _zz_376_;
  wire [1:0] _zz_377_;
  wire [1:0] _zz_378_;
  wire  _zz_379_;
  wire [3:0] _zz_380_;
  wire [2:0] _zz_381_;
  wire [31:0] _zz_382_;
  wire [11:0] _zz_383_;
  wire [31:0] _zz_384_;
  wire [19:0] _zz_385_;
  wire [11:0] _zz_386_;
  wire [2:0] _zz_387_;
  wire [0:0] _zz_388_;
  wire [0:0] _zz_389_;
  wire [0:0] _zz_390_;
  wire [0:0] _zz_391_;
  wire [0:0] _zz_392_;
  wire [0:0] _zz_393_;
  wire [1:0] _zz_394_;
  wire [2:0] _zz_395_;
  wire [0:0] _zz_396_;
  wire [1:0] _zz_397_;
  wire [2:0] _zz_398_;
  wire [31:0] _zz_399_;
  wire [0:0] _zz_400_;
  wire [0:0] _zz_401_;
  wire [0:0] _zz_402_;
  wire [0:0] _zz_403_;
  wire [0:0] _zz_404_;
  wire [0:0] _zz_405_;
  wire [0:0] _zz_406_;
  wire [0:0] _zz_407_;
  wire [0:0] _zz_408_;
  wire [0:0] _zz_409_;
  wire [0:0] _zz_410_;
  wire [0:0] _zz_411_;
  wire [0:0] _zz_412_;
  wire [0:0] _zz_413_;
  wire [0:0] _zz_414_;
  wire [0:0] _zz_415_;
  wire [0:0] _zz_416_;
  wire [0:0] _zz_417_;
  wire [0:0] _zz_418_;
  wire [0:0] _zz_419_;
  wire [2:0] _zz_420_;
  wire [4:0] _zz_421_;
  wire [11:0] _zz_422_;
  wire [11:0] _zz_423_;
  wire [31:0] _zz_424_;
  wire [31:0] _zz_425_;
  wire [31:0] _zz_426_;
  wire [31:0] _zz_427_;
  wire [1:0] _zz_428_;
  wire [31:0] _zz_429_;
  wire [1:0] _zz_430_;
  wire [1:0] _zz_431_;
  wire [32:0] _zz_432_;
  wire [31:0] _zz_433_;
  wire [32:0] _zz_434_;
  wire [51:0] _zz_435_;
  wire [51:0] _zz_436_;
  wire [51:0] _zz_437_;
  wire [32:0] _zz_438_;
  wire [51:0] _zz_439_;
  wire [49:0] _zz_440_;
  wire [51:0] _zz_441_;
  wire [49:0] _zz_442_;
  wire [51:0] _zz_443_;
  wire [65:0] _zz_444_;
  wire [65:0] _zz_445_;
  wire [31:0] _zz_446_;
  wire [31:0] _zz_447_;
  wire [0:0] _zz_448_;
  wire [5:0] _zz_449_;
  wire [32:0] _zz_450_;
  wire [32:0] _zz_451_;
  wire [31:0] _zz_452_;
  wire [31:0] _zz_453_;
  wire [32:0] _zz_454_;
  wire [32:0] _zz_455_;
  wire [32:0] _zz_456_;
  wire [0:0] _zz_457_;
  wire [32:0] _zz_458_;
  wire [0:0] _zz_459_;
  wire [32:0] _zz_460_;
  wire [0:0] _zz_461_;
  wire [31:0] _zz_462_;
  wire [11:0] _zz_463_;
  wire [19:0] _zz_464_;
  wire [11:0] _zz_465_;
  wire [31:0] _zz_466_;
  wire [31:0] _zz_467_;
  wire [31:0] _zz_468_;
  wire [11:0] _zz_469_;
  wire [19:0] _zz_470_;
  wire [11:0] _zz_471_;
  wire [2:0] _zz_472_;
  wire [1:0] _zz_473_;
  wire [1:0] _zz_474_;
  wire [0:0] _zz_475_;
  wire [0:0] _zz_476_;
  wire [0:0] _zz_477_;
  wire [0:0] _zz_478_;
  wire [0:0] _zz_479_;
  wire [0:0] _zz_480_;
  wire [0:0] _zz_481_;
  wire [0:0] _zz_482_;
  wire [0:0] _zz_483_;
  wire [0:0] _zz_484_;
  wire [0:0] _zz_485_;
  wire [0:0] _zz_486_;
  wire [0:0] _zz_487_;
  wire [0:0] _zz_488_;
  wire [26:0] _zz_489_;
  wire  _zz_490_;
  wire [7:0] _zz_491_;
  wire [44:0] _zz_492_;
  wire  _zz_493_;
  wire  _zz_494_;
  wire [1:0] _zz_495_;
  wire [0:0] _zz_496_;
  wire [7:0] _zz_497_;
  wire  _zz_498_;
  wire [0:0] _zz_499_;
  wire [0:0] _zz_500_;
  wire  _zz_501_;
  wire [0:0] _zz_502_;
  wire [0:0] _zz_503_;
  wire  _zz_504_;
  wire [2:0] _zz_505_;
  wire [2:0] _zz_506_;
  wire  _zz_507_;
  wire [0:0] _zz_508_;
  wire [27:0] _zz_509_;
  wire [31:0] _zz_510_;
  wire [31:0] _zz_511_;
  wire [31:0] _zz_512_;
  wire [0:0] _zz_513_;
  wire [0:0] _zz_514_;
  wire [0:0] _zz_515_;
  wire [1:0] _zz_516_;
  wire [0:0] _zz_517_;
  wire [0:0] _zz_518_;
  wire  _zz_519_;
  wire [0:0] _zz_520_;
  wire [24:0] _zz_521_;
  wire [31:0] _zz_522_;
  wire [31:0] _zz_523_;
  wire [31:0] _zz_524_;
  wire [31:0] _zz_525_;
  wire [31:0] _zz_526_;
  wire [31:0] _zz_527_;
  wire [0:0] _zz_528_;
  wire [0:0] _zz_529_;
  wire  _zz_530_;
  wire [4:0] _zz_531_;
  wire [4:0] _zz_532_;
  wire  _zz_533_;
  wire [0:0] _zz_534_;
  wire [21:0] _zz_535_;
  wire [31:0] _zz_536_;
  wire [31:0] _zz_537_;
  wire [31:0] _zz_538_;
  wire [31:0] _zz_539_;
  wire  _zz_540_;
  wire [0:0] _zz_541_;
  wire [1:0] _zz_542_;
  wire  _zz_543_;
  wire  _zz_544_;
  wire  _zz_545_;
  wire [0:0] _zz_546_;
  wire [0:0] _zz_547_;
  wire  _zz_548_;
  wire [0:0] _zz_549_;
  wire [18:0] _zz_550_;
  wire [31:0] _zz_551_;
  wire [31:0] _zz_552_;
  wire [31:0] _zz_553_;
  wire  _zz_554_;
  wire  _zz_555_;
  wire [31:0] _zz_556_;
  wire [31:0] _zz_557_;
  wire [31:0] _zz_558_;
  wire [31:0] _zz_559_;
  wire [31:0] _zz_560_;
  wire [0:0] _zz_561_;
  wire [1:0] _zz_562_;
  wire [1:0] _zz_563_;
  wire [1:0] _zz_564_;
  wire  _zz_565_;
  wire [0:0] _zz_566_;
  wire [16:0] _zz_567_;
  wire [31:0] _zz_568_;
  wire [31:0] _zz_569_;
  wire [31:0] _zz_570_;
  wire [31:0] _zz_571_;
  wire  _zz_572_;
  wire  _zz_573_;
  wire [0:0] _zz_574_;
  wire [1:0] _zz_575_;
  wire [0:0] _zz_576_;
  wire [0:0] _zz_577_;
  wire  _zz_578_;
  wire [0:0] _zz_579_;
  wire [13:0] _zz_580_;
  wire [31:0] _zz_581_;
  wire [31:0] _zz_582_;
  wire [31:0] _zz_583_;
  wire [31:0] _zz_584_;
  wire [31:0] _zz_585_;
  wire [31:0] _zz_586_;
  wire [31:0] _zz_587_;
  wire [31:0] _zz_588_;
  wire [0:0] _zz_589_;
  wire [3:0] _zz_590_;
  wire [0:0] _zz_591_;
  wire [0:0] _zz_592_;
  wire  _zz_593_;
  wire [0:0] _zz_594_;
  wire [10:0] _zz_595_;
  wire [31:0] _zz_596_;
  wire [31:0] _zz_597_;
  wire  _zz_598_;
  wire [0:0] _zz_599_;
  wire [0:0] _zz_600_;
  wire [0:0] _zz_601_;
  wire [1:0] _zz_602_;
  wire  _zz_603_;
  wire [1:0] _zz_604_;
  wire [1:0] _zz_605_;
  wire  _zz_606_;
  wire [0:0] _zz_607_;
  wire [7:0] _zz_608_;
  wire [31:0] _zz_609_;
  wire [31:0] _zz_610_;
  wire [31:0] _zz_611_;
  wire [31:0] _zz_612_;
  wire [31:0] _zz_613_;
  wire [31:0] _zz_614_;
  wire [31:0] _zz_615_;
  wire  _zz_616_;
  wire  _zz_617_;
  wire [31:0] _zz_618_;
  wire  _zz_619_;
  wire  _zz_620_;
  wire  _zz_621_;
  wire [0:0] _zz_622_;
  wire [0:0] _zz_623_;
  wire  _zz_624_;
  wire [0:0] _zz_625_;
  wire [5:0] _zz_626_;
  wire [31:0] _zz_627_;
  wire [31:0] _zz_628_;
  wire [31:0] _zz_629_;
  wire [31:0] _zz_630_;
  wire [31:0] _zz_631_;
  wire [31:0] _zz_632_;
  wire [31:0] _zz_633_;
  wire [0:0] _zz_634_;
  wire [4:0] _zz_635_;
  wire [1:0] _zz_636_;
  wire [1:0] _zz_637_;
  wire  _zz_638_;
  wire [0:0] _zz_639_;
  wire [3:0] _zz_640_;
  wire [31:0] _zz_641_;
  wire [31:0] _zz_642_;
  wire [31:0] _zz_643_;
  wire  _zz_644_;
  wire [0:0] _zz_645_;
  wire [1:0] _zz_646_;
  wire [31:0] _zz_647_;
  wire [31:0] _zz_648_;
  wire [31:0] _zz_649_;
  wire [31:0] _zz_650_;
  wire [0:0] _zz_651_;
  wire [0:0] _zz_652_;
  wire [5:0] _zz_653_;
  wire [5:0] _zz_654_;
  wire  _zz_655_;
  wire [0:0] _zz_656_;
  wire [0:0] _zz_657_;
  wire [31:0] _zz_658_;
  wire [31:0] _zz_659_;
  wire [31:0] _zz_660_;
  wire  _zz_661_;
  wire  _zz_662_;
  wire [31:0] _zz_663_;
  wire [31:0] _zz_664_;
  wire [31:0] _zz_665_;
  wire [31:0] _zz_666_;
  wire [0:0] _zz_667_;
  wire [3:0] _zz_668_;
  wire  _zz_669_;
  wire [1:0] _zz_670_;
  wire [1:0] _zz_671_;
  wire [4:0] _zz_672_;
  wire [4:0] _zz_673_;
  wire [31:0] _zz_674_;
  wire [31:0] _zz_675_;
  wire [31:0] _zz_676_;
  wire  _zz_677_;
  wire [0:0] _zz_678_;
  wire [0:0] _zz_679_;
  wire [31:0] _zz_680_;
  wire [31:0] _zz_681_;
  wire [31:0] _zz_682_;
  wire [31:0] _zz_683_;
  wire [31:0] _zz_684_;
  wire [31:0] _zz_685_;
  wire  _zz_686_;
  wire [0:0] _zz_687_;
  wire [1:0] _zz_688_;
  wire [31:0] _zz_689_;
  wire [31:0] _zz_690_;
  wire [31:0] _zz_691_;
  wire  _zz_692_;
  wire [0:0] _zz_693_;
  wire [16:0] _zz_694_;
  wire [31:0] _zz_695_;
  wire [31:0] _zz_696_;
  wire [31:0] _zz_697_;
  wire  _zz_698_;
  wire [0:0] _zz_699_;
  wire [10:0] _zz_700_;
  wire [31:0] _zz_701_;
  wire [31:0] _zz_702_;
  wire [31:0] _zz_703_;
  wire  _zz_704_;
  wire [0:0] _zz_705_;
  wire [4:0] _zz_706_;
  wire [31:0] _zz_707_;
  wire [31:0] _zz_708_;
  wire [31:0] _zz_709_;
  wire [31:0] _zz_710_;
  wire [31:0] _zz_711_;
  wire  _zz_712_;
  wire  _zz_713_;
  wire  _zz_714_;
  wire  decode_MEMORY_ENABLE;
  wire `Src1CtrlEnum_defaultEncoding_type decode_SRC1_CTRL;
  wire `Src1CtrlEnum_defaultEncoding_type _zz_1_;
  wire `Src1CtrlEnum_defaultEncoding_type _zz_2_;
  wire `Src1CtrlEnum_defaultEncoding_type _zz_3_;
  wire  decode_IS_TLB;
  wire [31:0] memory_PC;
  wire  memory_MEMORY_WR;
  wire  decode_MEMORY_WR;
  wire `AluCtrlEnum_defaultEncoding_type decode_ALU_CTRL;
  wire `AluCtrlEnum_defaultEncoding_type _zz_4_;
  wire `AluCtrlEnum_defaultEncoding_type _zz_5_;
  wire `AluCtrlEnum_defaultEncoding_type _zz_6_;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_7_;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_8_;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_9_;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_10_;
  wire `EnvCtrlEnum_defaultEncoding_type decode_ENV_CTRL;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_11_;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_12_;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_13_;
  wire `BranchCtrlEnum_defaultEncoding_type _zz_14_;
  wire `BranchCtrlEnum_defaultEncoding_type _zz_15_;
  wire [31:0] writeBack_FORMAL_PC_NEXT;
  wire [31:0] memory_FORMAL_PC_NEXT;
  wire [31:0] execute_FORMAL_PC_NEXT;
  wire [31:0] decode_FORMAL_PC_NEXT;
  wire  decode_IS_DIV;
  wire `Src2CtrlEnum_defaultEncoding_type decode_SRC2_CTRL;
  wire `Src2CtrlEnum_defaultEncoding_type _zz_16_;
  wire `Src2CtrlEnum_defaultEncoding_type _zz_17_;
  wire `Src2CtrlEnum_defaultEncoding_type _zz_18_;
  wire  decode_CSR_READ_OPCODE;
  wire  decode_PREDICTION_HAD_BRANCHED2;
  wire [33:0] execute_MUL_HL;
  wire [31:0] execute_SHIFT_RIGHT;
  wire  decode_IS_CSR;
  wire  decode_DO_EBREAK;
  wire `ShiftCtrlEnum_defaultEncoding_type _zz_19_;
  wire `ShiftCtrlEnum_defaultEncoding_type _zz_20_;
  wire `ShiftCtrlEnum_defaultEncoding_type decode_SHIFT_CTRL;
  wire `ShiftCtrlEnum_defaultEncoding_type _zz_21_;
  wire `ShiftCtrlEnum_defaultEncoding_type _zz_22_;
  wire `ShiftCtrlEnum_defaultEncoding_type _zz_23_;
  wire  execute_BYPASSABLE_MEMORY_STAGE;
  wire  decode_BYPASSABLE_MEMORY_STAGE;
  wire [1:0] memory_MEMORY_ADDRESS_LOW;
  wire [1:0] execute_MEMORY_ADDRESS_LOW;
  wire  execute_BRANCH_DO;
  wire  memory_IS_MUL;
  wire  execute_IS_MUL;
  wire  decode_IS_MUL;
  wire  decode_BYPASSABLE_EXECUTE_STAGE;
  wire  decode_SRC_USE_SUB_LESS;
  wire [33:0] memory_MUL_HH;
  wire [33:0] execute_MUL_HH;
  wire [33:0] execute_MUL_LH;
  wire  execute_FLUSH_ALL;
  wire  decode_FLUSH_ALL;
  wire [51:0] memory_MUL_LOW;
  wire [31:0] execute_MUL_LL;
  wire [31:0] writeBack_REGFILE_WRITE_DATA;
  wire [31:0] memory_REGFILE_WRITE_DATA;
  wire  decode_IS_RS1_SIGNED;
  wire  decode_CSR_WRITE_OPCODE;
  wire `AluBitwiseCtrlEnum_defaultEncoding_type decode_ALU_BITWISE_CTRL;
  wire `AluBitwiseCtrlEnum_defaultEncoding_type _zz_24_;
  wire `AluBitwiseCtrlEnum_defaultEncoding_type _zz_25_;
  wire `AluBitwiseCtrlEnum_defaultEncoding_type _zz_26_;
  wire  decode_IS_RS2_SIGNED;
  wire  decode_MEMORY_MANAGMENT;
  wire [31:0] execute_BRANCH_CALC;
  wire  decode_SRC_LESS_UNSIGNED;
  wire  execute_DO_EBREAK;
  wire  decode_IS_EBREAK;
  wire  _zz_27_;
  wire  execute_CSR_READ_OPCODE;
  wire  execute_CSR_WRITE_OPCODE;
  wire [31:0] execute_REGFILE_WRITE_DATA;
  wire  execute_IS_CSR;
  wire `EnvCtrlEnum_defaultEncoding_type memory_ENV_CTRL;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_28_;
  wire `EnvCtrlEnum_defaultEncoding_type execute_ENV_CTRL;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_29_;
  wire  _zz_30_;
  wire  _zz_31_;
  wire `EnvCtrlEnum_defaultEncoding_type writeBack_ENV_CTRL;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_32_;
  wire  execute_IS_FENCEI;
  reg [31:0] _zz_33_;
  wire [31:0] memory_BRANCH_CALC;
  wire  memory_BRANCH_DO;
  wire [31:0] _zz_34_;
  wire [31:0] execute_PC;
  wire  execute_PREDICTION_HAD_BRANCHED2;
  wire  _zz_35_;
  wire  execute_BRANCH_COND_RESULT;
  wire `BranchCtrlEnum_defaultEncoding_type execute_BRANCH_CTRL;
  wire `BranchCtrlEnum_defaultEncoding_type _zz_36_;
  wire  _zz_37_;
  wire  decode_IS_FENCEI;
  wire  _zz_38_;
  wire  decode_RS2_USE;
  wire  decode_RS1_USE;
  reg [31:0] _zz_39_;
  wire  execute_REGFILE_WRITE_VALID;
  wire  execute_BYPASSABLE_EXECUTE_STAGE;
  wire  memory_REGFILE_WRITE_VALID;
  wire  memory_BYPASSABLE_MEMORY_STAGE;
  wire  writeBack_REGFILE_WRITE_VALID;
  reg [31:0] decode_RS2;
  reg [31:0] decode_RS1;
  wire  execute_IS_RS1_SIGNED;
  wire [31:0] execute_RS1;
  wire  execute_IS_DIV;
  wire  execute_IS_RS2_SIGNED;
  wire [31:0] memory_INSTRUCTION;
  wire  memory_IS_DIV;
  wire  writeBack_IS_MUL;
  wire [33:0] writeBack_MUL_HH;
  wire [51:0] writeBack_MUL_LOW;
  wire [33:0] memory_MUL_HL;
  wire [33:0] memory_MUL_LH;
  wire [31:0] memory_MUL_LL;
  wire [51:0] _zz_40_;
  wire [33:0] _zz_41_;
  wire [33:0] _zz_42_;
  wire [33:0] _zz_43_;
  wire [31:0] _zz_44_;
  wire [31:0] memory_SHIFT_RIGHT;
  reg [31:0] _zz_45_;
  wire `ShiftCtrlEnum_defaultEncoding_type memory_SHIFT_CTRL;
  wire `ShiftCtrlEnum_defaultEncoding_type _zz_46_;
  wire [31:0] _zz_47_;
  wire `ShiftCtrlEnum_defaultEncoding_type execute_SHIFT_CTRL;
  wire `ShiftCtrlEnum_defaultEncoding_type _zz_48_;
  wire  _zz_49_;
  wire [31:0] _zz_50_;
  wire [31:0] _zz_51_;
  wire  execute_SRC_LESS_UNSIGNED;
  wire  execute_SRC_USE_SUB_LESS;
  wire [31:0] _zz_52_;
  wire `Src2CtrlEnum_defaultEncoding_type execute_SRC2_CTRL;
  wire `Src2CtrlEnum_defaultEncoding_type _zz_53_;
  wire [31:0] _zz_54_;
  wire `Src1CtrlEnum_defaultEncoding_type execute_SRC1_CTRL;
  wire `Src1CtrlEnum_defaultEncoding_type _zz_55_;
  wire [31:0] _zz_56_;
  wire [31:0] execute_SRC_ADD_SUB;
  wire  execute_SRC_LESS;
  wire `AluCtrlEnum_defaultEncoding_type execute_ALU_CTRL;
  wire `AluCtrlEnum_defaultEncoding_type _zz_57_;
  wire [31:0] _zz_58_;
  wire [31:0] execute_SRC2;
  wire `AluBitwiseCtrlEnum_defaultEncoding_type execute_ALU_BITWISE_CTRL;
  wire `AluBitwiseCtrlEnum_defaultEncoding_type _zz_59_;
  wire [31:0] _zz_60_;
  wire  _zz_61_;
  reg  _zz_62_;
  wire [31:0] _zz_63_;
  wire [31:0] _zz_64_;
  wire [31:0] decode_INSTRUCTION_ANTICIPATED;
  reg  decode_REGFILE_WRITE_VALID;
  wire  decode_LEGAL_INSTRUCTION;
  wire  decode_INSTRUCTION_READY;
  wire `Src2CtrlEnum_defaultEncoding_type _zz_65_;
  wire  _zz_66_;
  wire `AluBitwiseCtrlEnum_defaultEncoding_type _zz_67_;
  wire `AluCtrlEnum_defaultEncoding_type _zz_68_;
  wire `BranchCtrlEnum_defaultEncoding_type _zz_69_;
  wire  _zz_70_;
  wire  _zz_71_;
  wire  _zz_72_;
  wire  _zz_73_;
  wire `Src1CtrlEnum_defaultEncoding_type _zz_74_;
  wire `ShiftCtrlEnum_defaultEncoding_type _zz_75_;
  wire  _zz_76_;
  wire  _zz_77_;
  wire  _zz_78_;
  wire  _zz_79_;
  wire  _zz_80_;
  wire  _zz_81_;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_82_;
  wire  _zz_83_;
  wire  _zz_84_;
  wire  _zz_85_;
  wire  _zz_86_;
  wire  _zz_87_;
  wire  _zz_88_;
  wire  _zz_89_;
  wire  _zz_90_;
  wire  _zz_91_;
  reg  _zz_92_;
  wire [31:0] execute_SRC1;
  wire  execute_IS_TLB;
  reg  MemoryTranslatorPlugin_shared_free;
  reg  _zz_93_;
  reg [31:0] _zz_94_;
  wire [1:0] writeBack_MEMORY_ADDRESS_LOW;
  wire  writeBack_MEMORY_WR;
  wire  writeBack_MEMORY_ENABLE;
  wire  memory_MEMORY_ENABLE;
  wire [1:0] _zz_95_;
  wire  execute_MEMORY_MANAGMENT;
  wire [31:0] execute_RS2;
  wire [31:0] execute_SRC_ADD;
  wire  execute_MEMORY_WR;
  wire  execute_MEMORY_ENABLE;
  wire [31:0] execute_INSTRUCTION;
  wire  memory_FLUSH_ALL;
  reg  IBusCachedPlugin_issueDetected;
  reg  _zz_96_;
  wire [31:0] _zz_97_;
  wire `BranchCtrlEnum_defaultEncoding_type decode_BRANCH_CTRL;
  wire `BranchCtrlEnum_defaultEncoding_type _zz_98_;
  reg [31:0] _zz_99_;
  reg [31:0] _zz_100_;
  wire [31:0] _zz_101_;
  wire [31:0] _zz_102_;
  wire [31:0] _zz_103_;
  wire [31:0] writeBack_PC /* verilator public */ ;
  wire [31:0] writeBack_INSTRUCTION /* verilator public */ ;
  wire [31:0] decode_PC /* verilator public */ ;
  reg [31:0] decode_INSTRUCTION /* verilator public */ ;
  reg  decode_arbitration_haltItself /* verilator public */ ;
  reg  decode_arbitration_haltByOther;
  reg  decode_arbitration_removeIt;
  reg  decode_arbitration_flushAll /* verilator public */ ;
  wire  decode_arbitration_redoIt;
  reg  decode_arbitration_isValid /* verilator public */ ;
  wire  decode_arbitration_isStuck;
  wire  decode_arbitration_isStuckByOthers;
  wire  decode_arbitration_isFlushed;
  wire  decode_arbitration_isMoving;
  wire  decode_arbitration_isFiring;
  reg  execute_arbitration_haltItself;
  reg  execute_arbitration_haltByOther;
  reg  execute_arbitration_removeIt;
  reg  execute_arbitration_flushAll;
  wire  execute_arbitration_redoIt;
  reg  execute_arbitration_isValid;
  wire  execute_arbitration_isStuck;
  wire  execute_arbitration_isStuckByOthers;
  wire  execute_arbitration_isFlushed;
  wire  execute_arbitration_isMoving;
  wire  execute_arbitration_isFiring;
  reg  memory_arbitration_haltItself;
  wire  memory_arbitration_haltByOther;
  reg  memory_arbitration_removeIt;
  reg  memory_arbitration_flushAll;
  wire  memory_arbitration_redoIt;
  reg  memory_arbitration_isValid;
  wire  memory_arbitration_isStuck;
  wire  memory_arbitration_isStuckByOthers;
  wire  memory_arbitration_isFlushed;
  wire  memory_arbitration_isMoving;
  wire  memory_arbitration_isFiring;
  reg  writeBack_arbitration_haltItself;
  wire  writeBack_arbitration_haltByOther;
  reg  writeBack_arbitration_removeIt;
  wire  writeBack_arbitration_flushAll;
  wire  writeBack_arbitration_redoIt;
  reg  writeBack_arbitration_isValid /* verilator public */ ;
  wire  writeBack_arbitration_isStuck;
  wire  writeBack_arbitration_isStuckByOthers;
  wire  writeBack_arbitration_isFlushed;
  wire  writeBack_arbitration_isMoving;
  wire  writeBack_arbitration_isFiring /* verilator public */ ;
  reg  _zz_104_;
  reg  _zz_105_;
  reg  _zz_106_;
  wire  _zz_107_;
  wire [31:0] _zz_108_;
  wire  _zz_109_;
  wire  _zz_110_;
  wire [31:0] _zz_111_;
  reg  _zz_112_;
  wire  _zz_113_;
  wire [31:0] _zz_114_;
  wire  _zz_115_;
  reg [31:0] _zz_116_;
  reg  _zz_117_;
  reg  _zz_118_;
  reg  _zz_119_;
  reg  _zz_120_;
  wire  _zz_121_;
  reg  _zz_122_;
  wire  _zz_123_;
  wire [31:0] _zz_124_;
  wire  _zz_125_;
  reg [31:0] _zz_126_;
  reg  _zz_127_;
  reg  _zz_128_;
  reg  _zz_129_;
  reg  _zz_130_;
  wire  _zz_131_;
  reg  _zz_132_;
  wire  writeBack_exception_agregat_valid;
  reg [3:0] writeBack_exception_agregat_payload_code;
  wire [31:0] writeBack_exception_agregat_payload_badAddr;
  reg  decodeExceptionPort_valid;
  reg [3:0] decodeExceptionPort_1_code;
  reg [31:0] decodeExceptionPort_1_badAddr;
  wire  _zz_133_;
  wire [31:0] _zz_134_;
  wire  memory_exception_agregat_valid;
  wire [3:0] memory_exception_agregat_payload_code;
  wire [31:0] memory_exception_agregat_payload_badAddr;
  reg  _zz_135_;
  reg [31:0] _zz_136_;
  wire  externalInterruptS;
  wire  contextSwitching;
  reg [1:0] CsrPlugin_privilege;
  reg  _zz_137_;
  reg  _zz_138_;
  wire  debug_bus_cmd_valid;
  reg  debug_bus_cmd_ready;
  wire  debug_bus_cmd_payload_wr;
  wire [7:0] debug_bus_cmd_payload_address;
  wire [31:0] debug_bus_cmd_payload_data;
  reg [31:0] debug_bus_rsp_data;
  reg  _zz_139_;
  reg  _zz_140_;
  wire  IBusCachedPlugin_jump_pcLoad_valid;
  wire [31:0] IBusCachedPlugin_jump_pcLoad_payload;
  wire [3:0] _zz_141_;
  wire [3:0] _zz_142_;
  wire  _zz_143_;
  wire  _zz_144_;
  wire  _zz_145_;
  wire  IBusCachedPlugin_fetchPc_preOutput_valid;
  wire  IBusCachedPlugin_fetchPc_preOutput_ready;
  wire [31:0] IBusCachedPlugin_fetchPc_preOutput_payload;
  wire  _zz_146_;
  wire  IBusCachedPlugin_fetchPc_output_valid;
  wire  IBusCachedPlugin_fetchPc_output_ready;
  wire [31:0] IBusCachedPlugin_fetchPc_output_payload;
  reg [31:0] IBusCachedPlugin_fetchPc_pcReg /* verilator public */ ;
  reg  IBusCachedPlugin_fetchPc_inc;
  reg  IBusCachedPlugin_fetchPc_propagatePc;
  reg [31:0] IBusCachedPlugin_fetchPc_pc;
  reg  IBusCachedPlugin_fetchPc_samplePcNext;
  reg  _zz_147_;
  wire  IBusCachedPlugin_iBusRsp_stages_0_input_valid;
  wire  IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  wire [31:0] IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  wire  IBusCachedPlugin_iBusRsp_stages_0_output_valid;
  wire  IBusCachedPlugin_iBusRsp_stages_0_output_ready;
  wire [31:0] IBusCachedPlugin_iBusRsp_stages_0_output_payload;
  reg  IBusCachedPlugin_iBusRsp_stages_0_halt;
  wire  IBusCachedPlugin_iBusRsp_stages_0_inputSample;
  wire  IBusCachedPlugin_iBusRsp_stages_1_input_valid;
  wire  IBusCachedPlugin_iBusRsp_stages_1_input_ready;
  wire [31:0] IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  wire  IBusCachedPlugin_iBusRsp_stages_1_output_valid;
  wire  IBusCachedPlugin_iBusRsp_stages_1_output_ready;
  wire [31:0] IBusCachedPlugin_iBusRsp_stages_1_output_payload;
  reg  IBusCachedPlugin_iBusRsp_stages_1_halt;
  wire  IBusCachedPlugin_iBusRsp_stages_1_inputSample;
  wire  IBusCachedPlugin_stages_2_input_valid;
  wire  IBusCachedPlugin_stages_2_input_ready;
  wire [31:0] IBusCachedPlugin_stages_2_input_payload;
  wire  IBusCachedPlugin_stages_2_output_valid;
  wire  IBusCachedPlugin_stages_2_output_ready;
  wire [31:0] IBusCachedPlugin_stages_2_output_payload;
  reg  IBusCachedPlugin_stages_2_halt;
  wire  IBusCachedPlugin_stages_2_inputSample;
  wire  _zz_148_;
  wire  _zz_149_;
  wire  _zz_150_;
  wire  _zz_151_;
  wire  _zz_152_;
  reg  _zz_153_;
  wire  _zz_154_;
  reg  _zz_155_;
  reg [31:0] _zz_156_;
  wire  IBusCachedPlugin_iBusRsp_readyForError;
  wire  IBusCachedPlugin_iBusRsp_decodeInput_valid;
  wire  IBusCachedPlugin_iBusRsp_decodeInput_ready;
  wire [31:0] IBusCachedPlugin_iBusRsp_decodeInput_payload_pc;
  wire  IBusCachedPlugin_iBusRsp_decodeInput_payload_rsp_error;
  wire [31:0] IBusCachedPlugin_iBusRsp_decodeInput_payload_rsp_rawInDecode;
  wire  IBusCachedPlugin_iBusRsp_decodeInput_payload_isRvc;
  reg  IBusCachedPlugin_injector_nextPcCalc_valids_0;
  reg  IBusCachedPlugin_injector_nextPcCalc_0;
  reg  IBusCachedPlugin_injector_nextPcCalc_1;
  reg  IBusCachedPlugin_injector_nextPcCalc_2;
  reg  IBusCachedPlugin_injector_nextPcCalc_3;
  reg  IBusCachedPlugin_injector_decodeRemoved;
  wire  _zz_157_;
  reg [18:0] _zz_158_;
  wire  _zz_159_;
  reg [10:0] _zz_160_;
  wire  _zz_161_;
  reg [18:0] _zz_162_;
  wire  iBus_cmd_valid;
  wire  iBus_cmd_ready;
  reg [31:0] iBus_cmd_payload_address;
  wire [2:0] iBus_cmd_payload_size;
  wire  iBus_rsp_valid;
  wire [31:0] iBus_rsp_payload_data;
  wire  iBus_rsp_payload_error;
  wire  IBusCachedPlugin_iBusRspOutputHalt;
  reg  IBusCachedPlugin_redoFetch;
  wire  dBus_cmd_valid;
  wire  dBus_cmd_ready;
  wire  dBus_cmd_payload_wr;
  wire [31:0] dBus_cmd_payload_address;
  wire [31:0] dBus_cmd_payload_data;
  wire [3:0] dBus_cmd_payload_mask;
  wire [2:0] dBus_cmd_payload_length;
  wire  dBus_cmd_payload_last;
  wire  dBus_rsp_valid;
  wire [31:0] dBus_rsp_payload_data;
  wire  dBus_rsp_payload_error;
  wire [1:0] execute_DBusCachedPlugin_size;
  reg [31:0] _zz_163_;
  reg [31:0] writeBack_DBusCachedPlugin_rspShifted;
  wire  _zz_164_;
  reg [31:0] _zz_165_;
  wire  _zz_166_;
  reg [31:0] _zz_167_;
  reg [31:0] writeBack_DBusCachedPlugin_rspFormated;
  reg [7:0] MemoryTranslatorPlugin_shared_readAddr;
  wire [44:0] _zz_168_;
  reg  MemoryTranslatorPlugin_shared_readData_valid;
  reg [19:0] MemoryTranslatorPlugin_shared_readData_virtualAddress;
  reg [19:0] MemoryTranslatorPlugin_shared_readData_physicalAddress;
  reg  MemoryTranslatorPlugin_shared_readData_allowRead;
  reg  MemoryTranslatorPlugin_shared_readData_allowWrite;
  reg  MemoryTranslatorPlugin_shared_readData_allowExecute;
  reg  MemoryTranslatorPlugin_shared_readData_allowUser;
  reg  MemoryTranslatorPlugin_mmuEnabled;
  reg  MemoryTranslatorPlugin_ports_0_cache_0_valid;
  reg [19:0] MemoryTranslatorPlugin_ports_0_cache_0_virtualAddress;
  reg [19:0] MemoryTranslatorPlugin_ports_0_cache_0_physicalAddress;
  reg  MemoryTranslatorPlugin_ports_0_cache_0_allowRead;
  reg  MemoryTranslatorPlugin_ports_0_cache_0_allowWrite;
  reg  MemoryTranslatorPlugin_ports_0_cache_0_allowExecute;
  reg  MemoryTranslatorPlugin_ports_0_cache_0_allowUser;
  reg  MemoryTranslatorPlugin_ports_0_cache_1_valid;
  reg [19:0] MemoryTranslatorPlugin_ports_0_cache_1_virtualAddress;
  reg [19:0] MemoryTranslatorPlugin_ports_0_cache_1_physicalAddress;
  reg  MemoryTranslatorPlugin_ports_0_cache_1_allowRead;
  reg  MemoryTranslatorPlugin_ports_0_cache_1_allowWrite;
  reg  MemoryTranslatorPlugin_ports_0_cache_1_allowExecute;
  reg  MemoryTranslatorPlugin_ports_0_cache_1_allowUser;
  reg  MemoryTranslatorPlugin_ports_0_cache_2_valid;
  reg [19:0] MemoryTranslatorPlugin_ports_0_cache_2_virtualAddress;
  reg [19:0] MemoryTranslatorPlugin_ports_0_cache_2_physicalAddress;
  reg  MemoryTranslatorPlugin_ports_0_cache_2_allowRead;
  reg  MemoryTranslatorPlugin_ports_0_cache_2_allowWrite;
  reg  MemoryTranslatorPlugin_ports_0_cache_2_allowExecute;
  reg  MemoryTranslatorPlugin_ports_0_cache_2_allowUser;
  reg  MemoryTranslatorPlugin_ports_0_cache_3_valid;
  reg [19:0] MemoryTranslatorPlugin_ports_0_cache_3_virtualAddress;
  reg [19:0] MemoryTranslatorPlugin_ports_0_cache_3_physicalAddress;
  reg  MemoryTranslatorPlugin_ports_0_cache_3_allowRead;
  reg  MemoryTranslatorPlugin_ports_0_cache_3_allowWrite;
  reg  MemoryTranslatorPlugin_ports_0_cache_3_allowExecute;
  reg  MemoryTranslatorPlugin_ports_0_cache_3_allowUser;
  wire  MemoryTranslatorPlugin_ports_0_cacheHits_0;
  wire  MemoryTranslatorPlugin_ports_0_cacheHits_1;
  wire  MemoryTranslatorPlugin_ports_0_cacheHits_2;
  wire  MemoryTranslatorPlugin_ports_0_cacheHits_3;
  wire  MemoryTranslatorPlugin_ports_0_cacheHit;
  wire  _zz_169_;
  wire  _zz_170_;
  wire [1:0] _zz_171_;
  wire  MemoryTranslatorPlugin_ports_0_cacheLine_valid;
  wire [19:0] MemoryTranslatorPlugin_ports_0_cacheLine_virtualAddress;
  wire [19:0] MemoryTranslatorPlugin_ports_0_cacheLine_physicalAddress;
  wire  MemoryTranslatorPlugin_ports_0_cacheLine_allowRead;
  wire  MemoryTranslatorPlugin_ports_0_cacheLine_allowWrite;
  wire  MemoryTranslatorPlugin_ports_0_cacheLine_allowExecute;
  wire  MemoryTranslatorPlugin_ports_0_cacheLine_allowUser;
  wire  MemoryTranslatorPlugin_ports_0_isInMmuRange;
  wire  MemoryTranslatorPlugin_ports_0_isInKernelRange;
  reg  MemoryTranslatorPlugin_ports_0_sharedMiss;
  reg [8:0] MemoryTranslatorPlugin_ports_0_sharedIterator;
  reg [1:0] MemoryTranslatorPlugin_ports_0_sharedAccessed;
  reg  MemoryTranslatorPlugin_ports_0_entryToReplace_willIncrement;
  wire  MemoryTranslatorPlugin_ports_0_entryToReplace_willClear;
  reg [1:0] MemoryTranslatorPlugin_ports_0_entryToReplace_valueNext;
  reg [1:0] MemoryTranslatorPlugin_ports_0_entryToReplace_value;
  wire  MemoryTranslatorPlugin_ports_0_entryToReplace_willOverflowIfInc;
  wire  MemoryTranslatorPlugin_ports_0_entryToReplace_willOverflow;
  reg  MemoryTranslatorPlugin_ports_0_sharedAccessAsked;
  wire  MemoryTranslatorPlugin_ports_0_sharedAccessGranted;
  wire [3:0] _zz_172_;
  wire  _zz_173_;
  wire  _zz_174_;
  wire  _zz_175_;
  wire  _zz_176_;
  reg  MemoryTranslatorPlugin_ports_1_cache_0_valid;
  reg [19:0] MemoryTranslatorPlugin_ports_1_cache_0_virtualAddress;
  reg [19:0] MemoryTranslatorPlugin_ports_1_cache_0_physicalAddress;
  reg  MemoryTranslatorPlugin_ports_1_cache_0_allowRead;
  reg  MemoryTranslatorPlugin_ports_1_cache_0_allowWrite;
  reg  MemoryTranslatorPlugin_ports_1_cache_0_allowExecute;
  reg  MemoryTranslatorPlugin_ports_1_cache_0_allowUser;
  reg  MemoryTranslatorPlugin_ports_1_cache_1_valid;
  reg [19:0] MemoryTranslatorPlugin_ports_1_cache_1_virtualAddress;
  reg [19:0] MemoryTranslatorPlugin_ports_1_cache_1_physicalAddress;
  reg  MemoryTranslatorPlugin_ports_1_cache_1_allowRead;
  reg  MemoryTranslatorPlugin_ports_1_cache_1_allowWrite;
  reg  MemoryTranslatorPlugin_ports_1_cache_1_allowExecute;
  reg  MemoryTranslatorPlugin_ports_1_cache_1_allowUser;
  reg  MemoryTranslatorPlugin_ports_1_cache_2_valid;
  reg [19:0] MemoryTranslatorPlugin_ports_1_cache_2_virtualAddress;
  reg [19:0] MemoryTranslatorPlugin_ports_1_cache_2_physicalAddress;
  reg  MemoryTranslatorPlugin_ports_1_cache_2_allowRead;
  reg  MemoryTranslatorPlugin_ports_1_cache_2_allowWrite;
  reg  MemoryTranslatorPlugin_ports_1_cache_2_allowExecute;
  reg  MemoryTranslatorPlugin_ports_1_cache_2_allowUser;
  reg  MemoryTranslatorPlugin_ports_1_cache_3_valid;
  reg [19:0] MemoryTranslatorPlugin_ports_1_cache_3_virtualAddress;
  reg [19:0] MemoryTranslatorPlugin_ports_1_cache_3_physicalAddress;
  reg  MemoryTranslatorPlugin_ports_1_cache_3_allowRead;
  reg  MemoryTranslatorPlugin_ports_1_cache_3_allowWrite;
  reg  MemoryTranslatorPlugin_ports_1_cache_3_allowExecute;
  reg  MemoryTranslatorPlugin_ports_1_cache_3_allowUser;
  wire  MemoryTranslatorPlugin_ports_1_cacheHits_0;
  wire  MemoryTranslatorPlugin_ports_1_cacheHits_1;
  wire  MemoryTranslatorPlugin_ports_1_cacheHits_2;
  wire  MemoryTranslatorPlugin_ports_1_cacheHits_3;
  wire  MemoryTranslatorPlugin_ports_1_cacheHit;
  wire  _zz_177_;
  wire  _zz_178_;
  wire [1:0] _zz_179_;
  wire  MemoryTranslatorPlugin_ports_1_cacheLine_valid;
  wire [19:0] MemoryTranslatorPlugin_ports_1_cacheLine_virtualAddress;
  wire [19:0] MemoryTranslatorPlugin_ports_1_cacheLine_physicalAddress;
  wire  MemoryTranslatorPlugin_ports_1_cacheLine_allowRead;
  wire  MemoryTranslatorPlugin_ports_1_cacheLine_allowWrite;
  wire  MemoryTranslatorPlugin_ports_1_cacheLine_allowExecute;
  wire  MemoryTranslatorPlugin_ports_1_cacheLine_allowUser;
  wire  MemoryTranslatorPlugin_ports_1_isInMmuRange;
  wire  MemoryTranslatorPlugin_ports_1_isInKernelRange;
  reg  MemoryTranslatorPlugin_ports_1_sharedMiss;
  reg [8:0] MemoryTranslatorPlugin_ports_1_sharedIterator;
  reg [1:0] MemoryTranslatorPlugin_ports_1_sharedAccessed;
  reg  MemoryTranslatorPlugin_ports_1_entryToReplace_willIncrement;
  wire  MemoryTranslatorPlugin_ports_1_entryToReplace_willClear;
  reg [1:0] MemoryTranslatorPlugin_ports_1_entryToReplace_valueNext;
  reg [1:0] MemoryTranslatorPlugin_ports_1_entryToReplace_value;
  wire  MemoryTranslatorPlugin_ports_1_entryToReplace_willOverflowIfInc;
  wire  MemoryTranslatorPlugin_ports_1_entryToReplace_willOverflow;
  reg  MemoryTranslatorPlugin_ports_1_sharedAccessAsked;
  wire  MemoryTranslatorPlugin_ports_1_sharedAccessGranted;
  wire [3:0] _zz_180_;
  wire  _zz_181_;
  wire  _zz_182_;
  wire  _zz_183_;
  wire  _zz_184_;
  reg [19:0] execute_MemoryTranslatorPlugin_tlbWriteBuffer;
  wire [33:0] _zz_185_;
  wire  _zz_186_;
  wire  _zz_187_;
  wire  _zz_188_;
  wire  _zz_189_;
  wire  _zz_190_;
  wire  _zz_191_;
  wire  _zz_192_;
  wire  _zz_193_;
  wire `EnvCtrlEnum_defaultEncoding_type _zz_194_;
  wire `ShiftCtrlEnum_defaultEncoding_type _zz_195_;
  wire `Src1CtrlEnum_defaultEncoding_type _zz_196_;
  wire `BranchCtrlEnum_defaultEncoding_type _zz_197_;
  wire `AluCtrlEnum_defaultEncoding_type _zz_198_;
  wire `AluBitwiseCtrlEnum_defaultEncoding_type _zz_199_;
  wire `Src2CtrlEnum_defaultEncoding_type _zz_200_;
  wire [4:0] decode_RegFilePlugin_regFileReadAddress1;
  wire [4:0] decode_RegFilePlugin_regFileReadAddress2;
  wire [31:0] decode_RegFilePlugin_rs1Data;
  wire [31:0] decode_RegFilePlugin_rs2Data;
  reg  writeBack_RegFilePlugin_regFileWrite_valid /* verilator public */ ;
  wire [4:0] writeBack_RegFilePlugin_regFileWrite_payload_address /* verilator public */ ;
  wire [31:0] writeBack_RegFilePlugin_regFileWrite_payload_data /* verilator public */ ;
  reg  _zz_201_;
  reg [31:0] execute_IntAluPlugin_bitwise;
  reg [31:0] _zz_202_;
  reg [31:0] _zz_203_;
  wire  _zz_204_;
  reg [19:0] _zz_205_;
  wire  _zz_206_;
  reg [19:0] _zz_207_;
  reg [31:0] _zz_208_;
  wire [31:0] execute_SrcPlugin_addSub;
  wire  execute_SrcPlugin_less;
  wire [4:0] execute_FullBarrelShifterPlugin_amplitude;
  reg [31:0] _zz_209_;
  wire [31:0] execute_FullBarrelShifterPlugin_reversed;
  reg [31:0] _zz_210_;
  reg  execute_MulPlugin_aSigned;
  reg  execute_MulPlugin_bSigned;
  wire [31:0] execute_MulPlugin_a;
  wire [31:0] execute_MulPlugin_b;
  wire [15:0] execute_MulPlugin_aULow;
  wire [15:0] execute_MulPlugin_bULow;
  wire [16:0] execute_MulPlugin_aSLow;
  wire [16:0] execute_MulPlugin_bSLow;
  wire [16:0] execute_MulPlugin_aHigh;
  wire [16:0] execute_MulPlugin_bHigh;
  wire [65:0] writeBack_MulPlugin_result;
  reg [32:0] memory_DivPlugin_rs1;
  reg [31:0] memory_DivPlugin_rs2;
  reg [64:0] memory_DivPlugin_accumulator;
  reg  memory_DivPlugin_div_needRevert;
  reg  memory_DivPlugin_div_counter_willIncrement;
  reg  memory_DivPlugin_div_counter_willClear;
  reg [5:0] memory_DivPlugin_div_counter_valueNext;
  reg [5:0] memory_DivPlugin_div_counter_value;
  wire  memory_DivPlugin_div_willOverflowIfInc;
  wire  memory_DivPlugin_div_counter_willOverflow;
  reg [31:0] memory_DivPlugin_div_result;
  wire [31:0] _zz_211_;
  wire [32:0] _zz_212_;
  wire [32:0] _zz_213_;
  wire [31:0] _zz_214_;
  wire  _zz_215_;
  wire  _zz_216_;
  reg [32:0] _zz_217_;
  reg  _zz_218_;
  reg  _zz_219_;
  wire  _zz_220_;
  reg  _zz_221_;
  reg [4:0] _zz_222_;
  reg [31:0] _zz_223_;
  wire  _zz_224_;
  wire  _zz_225_;
  wire  _zz_226_;
  wire  _zz_227_;
  wire  _zz_228_;
  wire  _zz_229_;
  wire  execute_BranchPlugin_eq;
  wire [2:0] _zz_230_;
  reg  _zz_231_;
  reg  _zz_232_;
  wire  _zz_233_;
  reg [19:0] _zz_234_;
  wire  _zz_235_;
  reg [10:0] _zz_236_;
  wire  _zz_237_;
  reg [18:0] _zz_238_;
  reg  _zz_239_;
  wire  execute_BranchPlugin_missAlignedTarget;
  reg [31:0] execute_BranchPlugin_branch_src1;
  reg [31:0] execute_BranchPlugin_branch_src2;
  wire  _zz_240_;
  reg [19:0] _zz_241_;
  wire  _zz_242_;
  reg [10:0] _zz_243_;
  wire  _zz_244_;
  reg [18:0] _zz_245_;
  wire [31:0] execute_BranchPlugin_branchAdder;
  wire [1:0] CsrPlugin_misa_base;
  wire [25:0] CsrPlugin_misa_extensions;
  reg [31:0] CsrPlugin_mtvec;
  reg [31:0] CsrPlugin_mepc;
  reg  CsrPlugin_mstatus_MIE;
  reg  CsrPlugin_mstatus_MPIE;
  reg [1:0] CsrPlugin_mstatus_MPP;
  reg  CsrPlugin_mip_MEIP;
  reg  CsrPlugin_mip_MTIP;
  reg  CsrPlugin_mip_MSIP;
  reg  CsrPlugin_mie_MEIE;
  reg  CsrPlugin_mie_MTIE;
  reg  CsrPlugin_mie_MSIE;
  reg [31:0] CsrPlugin_mscratch;
  reg  CsrPlugin_mcause_interrupt;
  reg [3:0] CsrPlugin_mcause_exceptionCode;
  reg [31:0] CsrPlugin_mtval;
  reg [63:0] CsrPlugin_mcycle = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  reg [63:0] CsrPlugin_minstret = 64'b0000000000000000000000000000000000000000000000000000000000000000;
  reg [31:0] CsrPlugin_medeleg;
  reg [31:0] CsrPlugin_mideleg;
  reg  CsrPlugin_sstatus_SIE;
  reg  CsrPlugin_sstatus_SPIE;
  reg [0:0] CsrPlugin_sstatus_SPP;
  reg  CsrPlugin_sip_SEIP;
  reg  CsrPlugin_sip_STIP;
  reg  CsrPlugin_sip_SSIP;
  reg  CsrPlugin_sie_SEIE;
  reg  CsrPlugin_sie_STIE;
  reg  CsrPlugin_sie_SSIE;
  reg [31:0] CsrPlugin_stvec;
  reg [31:0] CsrPlugin_sscratch;
  reg  CsrPlugin_scause_interrupt;
  reg [3:0] CsrPlugin_scause_exceptionCode;
  reg [31:0] CsrPlugin_stval;
  reg [31:0] CsrPlugin_sepc;
  reg [21:0] CsrPlugin_satp_PPN;
  reg [8:0] CsrPlugin_satp_ASID;
  reg [0:0] CsrPlugin_satp_MODE;
  wire  _zz_246_;
  wire  _zz_247_;
  wire  _zz_248_;
  wire  _zz_249_;
  wire  _zz_250_;
  wire  _zz_251_;
  reg  CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
  reg  CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
  reg  CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
  reg  CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack;
  reg  CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
  reg  CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
  reg  CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
  reg  CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
  reg [3:0] CsrPlugin_exceptionPortCtrl_exceptionContext_code;
  reg [31:0] CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
  reg [1:0] CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
  wire  decode_exception_agregat_valid;
  wire [3:0] decode_exception_agregat_payload_code;
  wire [31:0] decode_exception_agregat_payload_badAddr;
  wire [1:0] _zz_252_;
  wire  _zz_253_;
  reg  CsrPlugin_interrupt;
  reg [3:0] CsrPlugin_interruptCode /* verilator public */ ;
  reg [1:0] CsrPlugin_interruptTargetPrivilege;
  reg [1:0] _zz_254_;
  reg [1:0] _zz_255_;
  reg [1:0] _zz_256_;
  wire  CsrPlugin_exception;
  reg  CsrPlugin_writeBackWasWfi;
  reg  CsrPlugin_pipelineLiberator_done;
  wire  CsrPlugin_interruptJump /* verilator public */ ;
  reg  CsrPlugin_hadException;
  reg [1:0] CsrPlugin_targetPrivilege;
  reg [3:0] CsrPlugin_trapCause;
  wire  execute_CsrPlugin_blockedBySideEffects;
  reg  execute_CsrPlugin_illegalAccess;
  reg  execute_CsrPlugin_illegalInstruction;
  reg [31:0] execute_CsrPlugin_readData;
  reg [31:0] execute_CsrPlugin_writeData;
  wire  execute_CsrPlugin_writeInstruction;
  wire  execute_CsrPlugin_readInstruction;
  wire  execute_CsrPlugin_writeEnable;
  wire  execute_CsrPlugin_readEnable;
  wire [11:0] execute_CsrPlugin_csrAddress;
  reg [31:0] _zz_257_;
  reg [31:0] externalInterruptArray_regNext;
  wire [31:0] _zz_258_;
  reg  DebugPlugin_firstCycle;
  reg  DebugPlugin_secondCycle;
  reg  DebugPlugin_resetIt;
  reg  DebugPlugin_haltIt;
  reg  DebugPlugin_stepIt;
  reg  DebugPlugin_isPipActive;
  reg  DebugPlugin_isPipActive_regNext;
  wire  DebugPlugin_isPipBusy;
  reg  DebugPlugin_haltedByBreak;
  reg [31:0] DebugPlugin_busReadDataReg;
  reg  _zz_259_;
  reg  DebugPlugin_resetIt_regNext;
  reg [31:0] decode_to_execute_INSTRUCTION;
  reg [31:0] execute_to_memory_INSTRUCTION;
  reg [31:0] memory_to_writeBack_INSTRUCTION;
  reg  decode_to_execute_SRC_LESS_UNSIGNED;
  reg [31:0] execute_to_memory_BRANCH_CALC;
  reg  decode_to_execute_MEMORY_MANAGMENT;
  reg  decode_to_execute_IS_RS2_SIGNED;
  reg `AluBitwiseCtrlEnum_defaultEncoding_type decode_to_execute_ALU_BITWISE_CTRL;
  reg  decode_to_execute_CSR_WRITE_OPCODE;
  reg  decode_to_execute_IS_RS1_SIGNED;
  reg [31:0] execute_to_memory_REGFILE_WRITE_DATA;
  reg [31:0] memory_to_writeBack_REGFILE_WRITE_DATA;
  reg [31:0] execute_to_memory_MUL_LL;
  reg [51:0] memory_to_writeBack_MUL_LOW;
  reg [31:0] decode_to_execute_RS2;
  reg  decode_to_execute_FLUSH_ALL;
  reg  execute_to_memory_FLUSH_ALL;
  reg [33:0] execute_to_memory_MUL_LH;
  reg [33:0] execute_to_memory_MUL_HH;
  reg [33:0] memory_to_writeBack_MUL_HH;
  reg  decode_to_execute_SRC_USE_SUB_LESS;
  reg  decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  reg  decode_to_execute_IS_MUL;
  reg  execute_to_memory_IS_MUL;
  reg  memory_to_writeBack_IS_MUL;
  reg  decode_to_execute_REGFILE_WRITE_VALID;
  reg  execute_to_memory_REGFILE_WRITE_VALID;
  reg  memory_to_writeBack_REGFILE_WRITE_VALID;
  reg  execute_to_memory_BRANCH_DO;
  reg [1:0] execute_to_memory_MEMORY_ADDRESS_LOW;
  reg [1:0] memory_to_writeBack_MEMORY_ADDRESS_LOW;
  reg  decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  reg  execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  reg `ShiftCtrlEnum_defaultEncoding_type decode_to_execute_SHIFT_CTRL;
  reg `ShiftCtrlEnum_defaultEncoding_type execute_to_memory_SHIFT_CTRL;
  reg  decode_to_execute_DO_EBREAK;
  reg  decode_to_execute_IS_CSR;
  reg [31:0] execute_to_memory_SHIFT_RIGHT;
  reg  decode_to_execute_IS_FENCEI;
  reg [33:0] execute_to_memory_MUL_HL;
  reg  decode_to_execute_PREDICTION_HAD_BRANCHED2;
  reg  decode_to_execute_CSR_READ_OPCODE;
  reg `Src2CtrlEnum_defaultEncoding_type decode_to_execute_SRC2_CTRL;
  reg  decode_to_execute_IS_DIV;
  reg  execute_to_memory_IS_DIV;
  reg [31:0] decode_to_execute_FORMAL_PC_NEXT;
  reg [31:0] execute_to_memory_FORMAL_PC_NEXT;
  reg [31:0] memory_to_writeBack_FORMAL_PC_NEXT;
  reg `BranchCtrlEnum_defaultEncoding_type decode_to_execute_BRANCH_CTRL;
  reg `EnvCtrlEnum_defaultEncoding_type decode_to_execute_ENV_CTRL;
  reg `EnvCtrlEnum_defaultEncoding_type execute_to_memory_ENV_CTRL;
  reg `EnvCtrlEnum_defaultEncoding_type memory_to_writeBack_ENV_CTRL;
  reg `AluCtrlEnum_defaultEncoding_type decode_to_execute_ALU_CTRL;
  reg [31:0] decode_to_execute_RS1;
  reg  decode_to_execute_MEMORY_WR;
  reg  execute_to_memory_MEMORY_WR;
  reg  memory_to_writeBack_MEMORY_WR;
  reg [31:0] decode_to_execute_PC;
  reg [31:0] execute_to_memory_PC;
  reg [31:0] memory_to_writeBack_PC;
  reg  decode_to_execute_IS_TLB;
  reg `Src1CtrlEnum_defaultEncoding_type decode_to_execute_SRC1_CTRL;
  reg  decode_to_execute_MEMORY_ENABLE;
  reg  execute_to_memory_MEMORY_ENABLE;
  reg  memory_to_writeBack_MEMORY_ENABLE;
  reg [2:0] _zz_260_;
  reg [31:0] _zz_261_;
  reg [2:0] _zz_262_;
  reg  _zz_263_;
  reg [31:0] iBusWishbone_DAT_MISO_regNext;
  reg [2:0] _zz_264_;
  wire  _zz_265_;
  wire  _zz_266_;
  wire  _zz_267_;
  wire  _zz_268_;
  wire  _zz_269_;
  reg  _zz_270_;
  reg [31:0] dBusWishbone_DAT_MISO_regNext;
  reg  _zz_271_;
  reg [44:0] MemoryTranslatorPlugin_shared_cache [0:255];
  reg [31:0] RegFilePlugin_regFile [0:31] /* verilator public */ ;
  assign _zz_358_ = (memory_arbitration_isValid && memory_IS_DIV);
  assign _zz_359_ = (! memory_DivPlugin_div_willOverflowIfInc);
  assign _zz_360_ = (execute_arbitration_isFiring && execute_IS_TLB);
  assign _zz_361_ = execute_INSTRUCTION[26 : 25];
  assign _zz_362_ = (execute_arbitration_isValid && execute_DO_EBREAK);
  assign _zz_363_ = ((memory_arbitration_isValid || writeBack_arbitration_isValid) == 1'b0);
  assign _zz_364_ = (DebugPlugin_stepIt && _zz_106_);
  assign _zz_365_ = (CsrPlugin_hadException || (CsrPlugin_interruptJump && (! CsrPlugin_exception)));
  assign _zz_366_ = (writeBack_arbitration_isValid && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET));
  assign _zz_367_ = writeBack_INSTRUCTION[29 : 28];
  assign _zz_368_ = (IBusCachedPlugin_fetchPc_preOutput_valid && IBusCachedPlugin_fetchPc_preOutput_ready);
  assign _zz_369_ = MemoryTranslatorPlugin_ports_0_sharedAccessed[1];
  assign _zz_370_ = (MemoryTranslatorPlugin_shared_readData_virtualAddress == _zz_124_[31 : 12]);
  assign _zz_371_ = MemoryTranslatorPlugin_ports_1_sharedAccessed[1];
  assign _zz_372_ = (MemoryTranslatorPlugin_shared_readData_virtualAddress == _zz_114_[31 : 12]);
  assign _zz_373_ = (! memory_arbitration_isStuck);
  assign _zz_374_ = debug_bus_cmd_payload_address[7 : 2];
  assign _zz_375_ = (iBus_cmd_valid || (_zz_262_ != (3'b000)));
  assign _zz_376_ = writeBack_INSTRUCTION[13 : 12];
  assign _zz_377_ = execute_INSTRUCTION[13 : 12];
  assign _zz_378_ = writeBack_INSTRUCTION[13 : 12];
  assign _zz_379_ = execute_INSTRUCTION[13];
  assign _zz_380_ = (_zz_141_ - (4'b0001));
  assign _zz_381_ = {IBusCachedPlugin_fetchPc_inc,(2'b00)};
  assign _zz_382_ = {29'd0, _zz_381_};
  assign _zz_383_ = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_384_ = {{_zz_158_,{{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_385_ = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[19 : 12]},decode_INSTRUCTION[20]},decode_INSTRUCTION[30 : 21]};
  assign _zz_386_ = {{{decode_INSTRUCTION[31],decode_INSTRUCTION[7]},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]};
  assign _zz_387_ = (writeBack_MEMORY_WR ? (3'b110) : (3'b100));
  assign _zz_388_ = _zz_168_[0 : 0];
  assign _zz_389_ = _zz_168_[41 : 41];
  assign _zz_390_ = _zz_168_[42 : 42];
  assign _zz_391_ = _zz_168_[43 : 43];
  assign _zz_392_ = _zz_168_[44 : 44];
  assign _zz_393_ = MemoryTranslatorPlugin_ports_0_entryToReplace_willIncrement;
  assign _zz_394_ = {1'd0, _zz_393_};
  assign _zz_395_ = {MemoryTranslatorPlugin_ports_0_sharedAccessed,MemoryTranslatorPlugin_ports_0_sharedAccessGranted};
  assign _zz_396_ = MemoryTranslatorPlugin_ports_1_entryToReplace_willIncrement;
  assign _zz_397_ = {1'd0, _zz_396_};
  assign _zz_398_ = {MemoryTranslatorPlugin_ports_1_sharedAccessed,MemoryTranslatorPlugin_ports_1_sharedAccessGranted};
  assign _zz_399_ = execute_SRC1;
  assign _zz_400_ = _zz_185_[0 : 0];
  assign _zz_401_ = _zz_185_[1 : 1];
  assign _zz_402_ = _zz_185_[2 : 2];
  assign _zz_403_ = _zz_185_[3 : 3];
  assign _zz_404_ = _zz_185_[4 : 4];
  assign _zz_405_ = _zz_185_[5 : 5];
  assign _zz_406_ = _zz_185_[6 : 6];
  assign _zz_407_ = _zz_185_[8 : 8];
  assign _zz_408_ = _zz_185_[11 : 11];
  assign _zz_409_ = _zz_185_[12 : 12];
  assign _zz_410_ = _zz_185_[13 : 13];
  assign _zz_411_ = _zz_185_[14 : 14];
  assign _zz_412_ = _zz_185_[15 : 15];
  assign _zz_413_ = _zz_185_[16 : 16];
  assign _zz_414_ = _zz_185_[21 : 21];
  assign _zz_415_ = _zz_185_[22 : 22];
  assign _zz_416_ = _zz_185_[23 : 23];
  assign _zz_417_ = _zz_185_[24 : 24];
  assign _zz_418_ = _zz_185_[31 : 31];
  assign _zz_419_ = execute_SRC_LESS;
  assign _zz_420_ = (3'b100);
  assign _zz_421_ = execute_INSTRUCTION[19 : 15];
  assign _zz_422_ = execute_INSTRUCTION[31 : 20];
  assign _zz_423_ = {execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]};
  assign _zz_424_ = ($signed(_zz_425_) + $signed(_zz_429_));
  assign _zz_425_ = ($signed(_zz_426_) + $signed(_zz_427_));
  assign _zz_426_ = execute_SRC1;
  assign _zz_427_ = (execute_SRC_USE_SUB_LESS ? (~ execute_SRC2) : execute_SRC2);
  assign _zz_428_ = (execute_SRC_USE_SUB_LESS ? _zz_430_ : _zz_431_);
  assign _zz_429_ = {{30{_zz_428_[1]}}, _zz_428_};
  assign _zz_430_ = (2'b01);
  assign _zz_431_ = (2'b00);
  assign _zz_432_ = ($signed(_zz_434_) >>> execute_FullBarrelShifterPlugin_amplitude);
  assign _zz_433_ = _zz_432_[31 : 0];
  assign _zz_434_ = {((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SRA_1) && execute_FullBarrelShifterPlugin_reversed[31]),execute_FullBarrelShifterPlugin_reversed};
  assign _zz_435_ = ($signed(_zz_436_) + $signed(_zz_441_));
  assign _zz_436_ = ($signed(_zz_437_) + $signed(_zz_439_));
  assign _zz_437_ = (52'b0000000000000000000000000000000000000000000000000000);
  assign _zz_438_ = {1'b0,memory_MUL_LL};
  assign _zz_439_ = {{19{_zz_438_[32]}}, _zz_438_};
  assign _zz_440_ = ({16'd0,memory_MUL_LH} <<< 16);
  assign _zz_441_ = {{2{_zz_440_[49]}}, _zz_440_};
  assign _zz_442_ = ({16'd0,memory_MUL_HL} <<< 16);
  assign _zz_443_ = {{2{_zz_442_[49]}}, _zz_442_};
  assign _zz_444_ = {{14{writeBack_MUL_LOW[51]}}, writeBack_MUL_LOW};
  assign _zz_445_ = ({32'd0,writeBack_MUL_HH} <<< 32);
  assign _zz_446_ = writeBack_MUL_LOW[31 : 0];
  assign _zz_447_ = writeBack_MulPlugin_result[63 : 32];
  assign _zz_448_ = memory_DivPlugin_div_counter_willIncrement;
  assign _zz_449_ = {5'd0, _zz_448_};
  assign _zz_450_ = {1'd0, memory_DivPlugin_rs2};
  assign _zz_451_ = {_zz_211_,(! _zz_213_[32])};
  assign _zz_452_ = _zz_213_[31:0];
  assign _zz_453_ = _zz_212_[31:0];
  assign _zz_454_ = _zz_455_;
  assign _zz_455_ = _zz_456_;
  assign _zz_456_ = ({1'b0,(memory_DivPlugin_div_needRevert ? (~ _zz_214_) : _zz_214_)} + _zz_458_);
  assign _zz_457_ = memory_DivPlugin_div_needRevert;
  assign _zz_458_ = {32'd0, _zz_457_};
  assign _zz_459_ = _zz_216_;
  assign _zz_460_ = {32'd0, _zz_459_};
  assign _zz_461_ = _zz_215_;
  assign _zz_462_ = {31'd0, _zz_461_};
  assign _zz_463_ = execute_INSTRUCTION[31 : 20];
  assign _zz_464_ = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_465_ = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_466_ = {_zz_234_,execute_INSTRUCTION[31 : 20]};
  assign _zz_467_ = {{_zz_236_,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0};
  assign _zz_468_ = {{_zz_238_,{{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0};
  assign _zz_469_ = execute_INSTRUCTION[31 : 20];
  assign _zz_470_ = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]};
  assign _zz_471_ = {{{execute_INSTRUCTION[31],execute_INSTRUCTION[7]},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]};
  assign _zz_472_ = (3'b100);
  assign _zz_473_ = (_zz_252_ & (~ _zz_474_));
  assign _zz_474_ = (_zz_252_ - (2'b01));
  assign _zz_475_ = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_476_ = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_477_ = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_478_ = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_479_ = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_480_ = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_481_ = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_482_ = execute_CsrPlugin_writeData[11 : 11];
  assign _zz_483_ = execute_CsrPlugin_writeData[7 : 7];
  assign _zz_484_ = execute_CsrPlugin_writeData[3 : 3];
  assign _zz_485_ = execute_CsrPlugin_writeData[31 : 31];
  assign _zz_486_ = execute_CsrPlugin_writeData[9 : 9];
  assign _zz_487_ = execute_CsrPlugin_writeData[5 : 5];
  assign _zz_488_ = execute_CsrPlugin_writeData[1 : 1];
  assign _zz_489_ = (iBus_cmd_payload_address >>> 5);
  assign _zz_490_ = 1'b1;
  assign _zz_491_ = execute_SRC1[7 : 0];
  assign _zz_492_ = {execute_RS2[27],{execute_RS2[30],{execute_RS2[29],{execute_RS2[28],{execute_RS2[19 : 0],{execute_MemoryTranslatorPlugin_tlbWriteBuffer,execute_RS2[31]}}}}}};
  assign _zz_493_ = 1'b1;
  assign _zz_494_ = 1'b1;
  assign _zz_495_ = {_zz_145_,_zz_144_};
  assign _zz_496_ = decode_INSTRUCTION[31];
  assign _zz_497_ = decode_INSTRUCTION[19 : 12];
  assign _zz_498_ = decode_INSTRUCTION[20];
  assign _zz_499_ = decode_INSTRUCTION[31];
  assign _zz_500_ = decode_INSTRUCTION[7];
  assign _zz_501_ = ((decode_INSTRUCTION & (32'b00000000000000000000000001110000)) == (32'b00000000000000000000000000100000));
  assign _zz_502_ = ((decode_INSTRUCTION & _zz_510_) == (32'b00000000000000000000000000000100));
  assign _zz_503_ = _zz_186_;
  assign _zz_504_ = ((decode_INSTRUCTION & (32'b00000000000000000101000001001000)) == (32'b00000000000000000001000000001000));
  assign _zz_505_ = {(_zz_511_ == _zz_512_),{_zz_193_,_zz_191_}};
  assign _zz_506_ = (3'b000);
  assign _zz_507_ = ({_zz_193_,{_zz_513_,_zz_514_}} != (3'b000));
  assign _zz_508_ = ({_zz_515_,_zz_516_} != (3'b000));
  assign _zz_509_ = {(_zz_517_ != _zz_518_),{_zz_519_,{_zz_520_,_zz_521_}}};
  assign _zz_510_ = (32'b00000000000000000100000000000100);
  assign _zz_511_ = (decode_INSTRUCTION & (32'b00000000000000000001000000000000));
  assign _zz_512_ = (32'b00000000000000000001000000000000);
  assign _zz_513_ = _zz_191_;
  assign _zz_514_ = ((decode_INSTRUCTION & _zz_522_) == (32'b00000000000000000010000000000000));
  assign _zz_515_ = _zz_190_;
  assign _zz_516_ = {(_zz_523_ == _zz_524_),(_zz_525_ == _zz_526_)};
  assign _zz_517_ = ((decode_INSTRUCTION & _zz_527_) == (32'b00000000000000000010000000010000));
  assign _zz_518_ = (1'b0);
  assign _zz_519_ = ({_zz_188_,{_zz_528_,_zz_529_}} != (3'b000));
  assign _zz_520_ = (_zz_530_ != (1'b0));
  assign _zz_521_ = {(_zz_531_ != _zz_532_),{_zz_533_,{_zz_534_,_zz_535_}}};
  assign _zz_522_ = (32'b00000000000000000011000000000000);
  assign _zz_523_ = (decode_INSTRUCTION & (32'b00000000000000000000000001100100));
  assign _zz_524_ = (32'b00000000000000000000000000100100);
  assign _zz_525_ = (decode_INSTRUCTION & (32'b00000000000000000100000000010100));
  assign _zz_526_ = (32'b00000000000000000100000000010000);
  assign _zz_527_ = (32'b00000000000000000110000001010100);
  assign _zz_528_ = ((decode_INSTRUCTION & _zz_536_) == (32'b00000000000000000001000000001000));
  assign _zz_529_ = ((decode_INSTRUCTION & _zz_537_) == (32'b00000000000000000000000000000100));
  assign _zz_530_ = ((decode_INSTRUCTION & (32'b00000000000000000000000001011000)) == (32'b00000000000000000000000001000000));
  assign _zz_531_ = {(_zz_538_ == _zz_539_),{_zz_540_,{_zz_541_,_zz_542_}}};
  assign _zz_532_ = (5'b00000);
  assign _zz_533_ = ({_zz_543_,_zz_544_} != (2'b00));
  assign _zz_534_ = (_zz_545_ != (1'b0));
  assign _zz_535_ = {(_zz_546_ != _zz_547_),{_zz_548_,{_zz_549_,_zz_550_}}};
  assign _zz_536_ = (32'b00000000000000000101000000001000);
  assign _zz_537_ = (32'b00000000000000000000000000011100);
  assign _zz_538_ = (decode_INSTRUCTION & (32'b00000000000000000000000000110100));
  assign _zz_539_ = (32'b00000000000000000000000000100000);
  assign _zz_540_ = ((decode_INSTRUCTION & _zz_551_) == (32'b00000000000000000000000000100000));
  assign _zz_541_ = (_zz_552_ == _zz_553_);
  assign _zz_542_ = {_zz_554_,_zz_555_};
  assign _zz_543_ = ((decode_INSTRUCTION & _zz_556_) == (32'b00000000000000000010000000000000));
  assign _zz_544_ = ((decode_INSTRUCTION & _zz_557_) == (32'b00000000000000000001000000000000));
  assign _zz_545_ = ((decode_INSTRUCTION & _zz_558_) == (32'b00000000000100000000000001010000));
  assign _zz_546_ = (_zz_559_ == _zz_560_);
  assign _zz_547_ = (1'b0);
  assign _zz_548_ = ({_zz_561_,_zz_562_} != (3'b000));
  assign _zz_549_ = (_zz_563_ != _zz_564_);
  assign _zz_550_ = {_zz_565_,{_zz_566_,_zz_567_}};
  assign _zz_551_ = (32'b00000000000000000000000001100100);
  assign _zz_552_ = (decode_INSTRUCTION & (32'b00000010000000000011000001010000));
  assign _zz_553_ = (32'b00000010000000000011000000000000);
  assign _zz_554_ = ((decode_INSTRUCTION & (32'b00000000000000000111000001001000)) == (32'b00000000000000000101000000001000));
  assign _zz_555_ = ((decode_INSTRUCTION & (32'b00000100000000000011000001010000)) == (32'b00000100000000000011000000000000));
  assign _zz_556_ = (32'b00000000000000000010000000010000);
  assign _zz_557_ = (32'b00000000000000000101000000000000);
  assign _zz_558_ = (32'b00010000000100000011000001010000);
  assign _zz_559_ = (decode_INSTRUCTION & (32'b00000010000000000100000001110100));
  assign _zz_560_ = (32'b00000010000000000000000000110000);
  assign _zz_561_ = _zz_188_;
  assign _zz_562_ = {_zz_192_,(_zz_568_ == _zz_569_)};
  assign _zz_563_ = {_zz_192_,(_zz_570_ == _zz_571_)};
  assign _zz_564_ = (2'b00);
  assign _zz_565_ = ({_zz_572_,_zz_573_} != (2'b00));
  assign _zz_566_ = ({_zz_574_,_zz_575_} != (3'b000));
  assign _zz_567_ = {(_zz_576_ != _zz_577_),{_zz_578_,{_zz_579_,_zz_580_}}};
  assign _zz_568_ = (decode_INSTRUCTION & (32'b00000000000000000100000000010100));
  assign _zz_569_ = (32'b00000000000000000000000000000100);
  assign _zz_570_ = (decode_INSTRUCTION & (32'b00000000000000000000000001001100));
  assign _zz_571_ = (32'b00000000000000000000000000000100);
  assign _zz_572_ = ((decode_INSTRUCTION & (32'b00000000000000000111000000110100)) == (32'b00000000000000000101000000010000));
  assign _zz_573_ = ((decode_INSTRUCTION & (32'b00000010000000000111000001100100)) == (32'b00000000000000000101000000100000));
  assign _zz_574_ = ((decode_INSTRUCTION & _zz_581_) == (32'b01000000000000000001000000010000));
  assign _zz_575_ = {(_zz_582_ == _zz_583_),(_zz_584_ == _zz_585_)};
  assign _zz_576_ = ((decode_INSTRUCTION & _zz_586_) == (32'b00000000000000000000000000100000));
  assign _zz_577_ = (1'b0);
  assign _zz_578_ = ((_zz_587_ == _zz_588_) != (1'b0));
  assign _zz_579_ = ({_zz_589_,_zz_590_} != (5'b00000));
  assign _zz_580_ = {(_zz_591_ != _zz_592_),{_zz_593_,{_zz_594_,_zz_595_}}};
  assign _zz_581_ = (32'b01000000000000000011000001010100);
  assign _zz_582_ = (decode_INSTRUCTION & (32'b00000000000000000111000000110100));
  assign _zz_583_ = (32'b00000000000000000001000000010000);
  assign _zz_584_ = (decode_INSTRUCTION & (32'b00000010000000000111000001010100));
  assign _zz_585_ = (32'b00000000000000000001000000010000);
  assign _zz_586_ = (32'b00000000000000000000000000100000);
  assign _zz_587_ = (decode_INSTRUCTION & (32'b00000010000000000100000001100100));
  assign _zz_588_ = (32'b00000010000000000100000000100000);
  assign _zz_589_ = _zz_191_;
  assign _zz_590_ = {(_zz_596_ == _zz_597_),{_zz_598_,{_zz_599_,_zz_600_}}};
  assign _zz_591_ = _zz_189_;
  assign _zz_592_ = (1'b0);
  assign _zz_593_ = ({_zz_191_,{_zz_601_,_zz_602_}} != (4'b0000));
  assign _zz_594_ = (_zz_603_ != (1'b0));
  assign _zz_595_ = {(_zz_604_ != _zz_605_),{_zz_606_,{_zz_607_,_zz_608_}}};
  assign _zz_596_ = (decode_INSTRUCTION & (32'b00000000000000000010000000110000));
  assign _zz_597_ = (32'b00000000000000000010000000010000);
  assign _zz_598_ = ((decode_INSTRUCTION & _zz_609_) == (32'b00000000000000000010000000100000));
  assign _zz_599_ = (_zz_610_ == _zz_611_);
  assign _zz_600_ = (_zz_612_ == _zz_613_);
  assign _zz_601_ = (_zz_614_ == _zz_615_);
  assign _zz_602_ = {_zz_616_,_zz_617_};
  assign _zz_603_ = ((decode_INSTRUCTION & _zz_618_) == (32'b00000000000000000011000000000000));
  assign _zz_604_ = {_zz_619_,_zz_620_};
  assign _zz_605_ = (2'b00);
  assign _zz_606_ = (_zz_621_ != (1'b0));
  assign _zz_607_ = (_zz_622_ != _zz_623_);
  assign _zz_608_ = {_zz_624_,{_zz_625_,_zz_626_}};
  assign _zz_609_ = (32'b00000010000000000010000000100000);
  assign _zz_610_ = (decode_INSTRUCTION & (32'b00000010000000000001000000100000));
  assign _zz_611_ = (32'b00000000000000000000000000100000);
  assign _zz_612_ = (decode_INSTRUCTION & (32'b00000000000000000001000000110000));
  assign _zz_613_ = (32'b00000000000000000000000000010000);
  assign _zz_614_ = (decode_INSTRUCTION & (32'b00000000000000000100000000100000));
  assign _zz_615_ = (32'b00000000000000000100000000100000);
  assign _zz_616_ = ((decode_INSTRUCTION & _zz_627_) == (32'b00000000000000000000000000010000));
  assign _zz_617_ = ((decode_INSTRUCTION & _zz_628_) == (32'b00000000000000000000000000100000));
  assign _zz_618_ = (32'b00000000000000000011000001010000);
  assign _zz_619_ = ((decode_INSTRUCTION & _zz_629_) == (32'b00010000000000000000000001010000));
  assign _zz_620_ = ((decode_INSTRUCTION & _zz_630_) == (32'b00000000000000000000000001010000));
  assign _zz_621_ = ((decode_INSTRUCTION & _zz_631_) == (32'b00000000000000000000000001010000));
  assign _zz_622_ = (_zz_632_ == _zz_633_);
  assign _zz_623_ = (1'b0);
  assign _zz_624_ = ({_zz_634_,_zz_635_} != (6'b000000));
  assign _zz_625_ = (_zz_636_ != _zz_637_);
  assign _zz_626_ = {_zz_638_,{_zz_639_,_zz_640_}};
  assign _zz_627_ = (32'b00000000000000000000000000110000);
  assign _zz_628_ = (32'b00000010000000000000000000100000);
  assign _zz_629_ = (32'b00010000001000000011000001010000);
  assign _zz_630_ = (32'b00010000000100000011000001010000);
  assign _zz_631_ = (32'b00000000000100000011000001010000);
  assign _zz_632_ = (decode_INSTRUCTION & (32'b00000000000000000101000001001000));
  assign _zz_633_ = (32'b00000000000000000100000000001000);
  assign _zz_634_ = ((decode_INSTRUCTION & _zz_641_) == (32'b00000000000000000010000001000000));
  assign _zz_635_ = {(_zz_642_ == _zz_643_),{_zz_644_,{_zz_645_,_zz_646_}}};
  assign _zz_636_ = {(_zz_647_ == _zz_648_),(_zz_649_ == _zz_650_)};
  assign _zz_637_ = (2'b00);
  assign _zz_638_ = ({_zz_190_,{_zz_651_,_zz_652_}} != (3'b000));
  assign _zz_639_ = (_zz_189_ != (1'b0));
  assign _zz_640_ = {(_zz_653_ != _zz_654_),{_zz_655_,{_zz_656_,_zz_657_}}};
  assign _zz_641_ = (32'b00000000000000000010000001000000);
  assign _zz_642_ = (decode_INSTRUCTION & (32'b00000000000000000001000001000000));
  assign _zz_643_ = (32'b00000000000000000001000001000000);
  assign _zz_644_ = ((decode_INSTRUCTION & _zz_658_) == (32'b00000000000000000000000001000000));
  assign _zz_645_ = (_zz_659_ == _zz_660_);
  assign _zz_646_ = {_zz_661_,_zz_662_};
  assign _zz_647_ = (decode_INSTRUCTION & (32'b00000000000000000001000001010000));
  assign _zz_648_ = (32'b00000000000000000001000001010000);
  assign _zz_649_ = (decode_INSTRUCTION & (32'b00000000000000000010000001010000));
  assign _zz_650_ = (32'b00000000000000000010000001010000);
  assign _zz_651_ = (_zz_663_ == _zz_664_);
  assign _zz_652_ = (_zz_665_ == _zz_666_);
  assign _zz_653_ = {_zz_188_,{_zz_667_,_zz_668_}};
  assign _zz_654_ = (6'b000000);
  assign _zz_655_ = (_zz_669_ != (1'b0));
  assign _zz_656_ = (_zz_670_ != _zz_671_);
  assign _zz_657_ = (_zz_672_ != _zz_673_);
  assign _zz_658_ = (32'b00000000000100000000000001000000);
  assign _zz_659_ = (decode_INSTRUCTION & (32'b00000000000000000000000001010000));
  assign _zz_660_ = (32'b00000000000000000000000001000000);
  assign _zz_661_ = ((decode_INSTRUCTION & (32'b00000000000000000000000000111000)) == (32'b00000000000000000000000000000000));
  assign _zz_662_ = ((decode_INSTRUCTION & (32'b00000000000000000101000000110000)) == (32'b00000000000000000001000000000000));
  assign _zz_663_ = (decode_INSTRUCTION & (32'b01000000000000000000000000110000));
  assign _zz_664_ = (32'b01000000000000000000000000110000);
  assign _zz_665_ = (decode_INSTRUCTION & (32'b00000000000000000010000000010100));
  assign _zz_666_ = (32'b00000000000000000010000000010000);
  assign _zz_667_ = ((decode_INSTRUCTION & _zz_674_) == (32'b00000000000000000001000000010000));
  assign _zz_668_ = {(_zz_675_ == _zz_676_),{_zz_677_,{_zz_678_,_zz_679_}}};
  assign _zz_669_ = ((decode_INSTRUCTION & (32'b00000000000000000000000000001000)) == (32'b00000000000000000000000000001000));
  assign _zz_670_ = {(_zz_680_ == _zz_681_),(_zz_682_ == _zz_683_)};
  assign _zz_671_ = (2'b00);
  assign _zz_672_ = {(_zz_684_ == _zz_685_),{_zz_686_,{_zz_687_,_zz_688_}}};
  assign _zz_673_ = (5'b00000);
  assign _zz_674_ = (32'b00000000000000000001000000010000);
  assign _zz_675_ = (decode_INSTRUCTION & (32'b00000000000000000010000000010000));
  assign _zz_676_ = (32'b00000000000000000010000000010000);
  assign _zz_677_ = ((decode_INSTRUCTION & (32'b00000000000000000000000001010000)) == (32'b00000000000000000000000000010000));
  assign _zz_678_ = _zz_187_;
  assign _zz_679_ = _zz_186_;
  assign _zz_680_ = (decode_INSTRUCTION & (32'b00000000000000000000000001011000));
  assign _zz_681_ = (32'b00000000000000000000000000000000);
  assign _zz_682_ = (decode_INSTRUCTION & (32'b00000000000000000111000001010000));
  assign _zz_683_ = (32'b00000000000000000101000000000000);
  assign _zz_684_ = (decode_INSTRUCTION & (32'b00000000000000000000000001000100));
  assign _zz_685_ = (32'b00000000000000000000000000000000);
  assign _zz_686_ = ((decode_INSTRUCTION & (32'b00000000000000000000000000011000)) == (32'b00000000000000000000000000000000));
  assign _zz_687_ = ((decode_INSTRUCTION & (32'b00000000000000000110000000000100)) == (32'b00000000000000000010000000000000));
  assign _zz_688_ = {((decode_INSTRUCTION & (32'b00000000000000000101000000000100)) == (32'b00000000000000000001000000000000)),((decode_INSTRUCTION & (32'b00000000000000000101000001010000)) == (32'b00000000000000000101000000000000))};
  assign _zz_689_ = (32'b00000000000000000001000001111111);
  assign _zz_690_ = (decode_INSTRUCTION & (32'b00000000000000000010000001111111));
  assign _zz_691_ = (32'b00000000000000000010000001110011);
  assign _zz_692_ = ((decode_INSTRUCTION & (32'b00000000000000000100000001111111)) == (32'b00000000000000000100000001100011));
  assign _zz_693_ = ((decode_INSTRUCTION & (32'b00000000000000000010000001111111)) == (32'b00000000000000000010000000010011));
  assign _zz_694_ = {((decode_INSTRUCTION & (32'b00000000000000000110000000111111)) == (32'b00000000000000000000000000100011)),{((decode_INSTRUCTION & (32'b00000000000000000010000001111111)) == (32'b00000000000000000000000000000011)),{((decode_INSTRUCTION & _zz_695_) == (32'b00000000000000000000000000000011)),{(_zz_696_ == _zz_697_),{_zz_698_,{_zz_699_,_zz_700_}}}}}};
  assign _zz_695_ = (32'b00000000000000000101000001011111);
  assign _zz_696_ = (decode_INSTRUCTION & (32'b00000000000000000111000001111011));
  assign _zz_697_ = (32'b00000000000000000000000001100011);
  assign _zz_698_ = ((decode_INSTRUCTION & (32'b00000000000000000011000001111111)) == (32'b00000000000000000000000000001111));
  assign _zz_699_ = ((decode_INSTRUCTION & (32'b11111100000000000000000001111111)) == (32'b00000000000000000000000000110011));
  assign _zz_700_ = {((decode_INSTRUCTION & (32'b00000001111100000111000001111111)) == (32'b00000000000000000101000000001111)),{((decode_INSTRUCTION & (32'b10111100000000000111000001111111)) == (32'b00000000000000000101000000010011)),{((decode_INSTRUCTION & _zz_701_) == (32'b00000000000000000001000000010011)),{(_zz_702_ == _zz_703_),{_zz_704_,{_zz_705_,_zz_706_}}}}}};
  assign _zz_701_ = (32'b11111100000000000011000001111111);
  assign _zz_702_ = (decode_INSTRUCTION & (32'b11111100000000000111000001111111));
  assign _zz_703_ = (32'b00000000000000000111000000001111);
  assign _zz_704_ = ((decode_INSTRUCTION & (32'b11111010000000000111000001111111)) == (32'b00000000000000000111000000001111));
  assign _zz_705_ = ((decode_INSTRUCTION & (32'b10111110000000000111000001111111)) == (32'b00000000000000000101000000110011));
  assign _zz_706_ = {((decode_INSTRUCTION & (32'b10111110000000000111000001111111)) == (32'b00000000000000000000000000110011)),{((decode_INSTRUCTION & (32'b11011111111111111111111111111111)) == (32'b00010000001000000000000001110011)),{((decode_INSTRUCTION & _zz_707_) == (32'b00000000000000000000000001110011)),{(_zz_708_ == _zz_709_),(_zz_710_ == _zz_711_)}}}};
  assign _zz_707_ = (32'b11111111111011111111111111111111);
  assign _zz_708_ = (decode_INSTRUCTION & (32'b11111111111111111111111111111111));
  assign _zz_709_ = (32'b00010000010100000000000001110011);
  assign _zz_710_ = (decode_INSTRUCTION & (32'b11111111111111111111111111111111));
  assign _zz_711_ = (32'b00000000000000000001000000001111);
  assign _zz_712_ = execute_INSTRUCTION[31];
  assign _zz_713_ = execute_INSTRUCTION[31];
  assign _zz_714_ = execute_INSTRUCTION[7];
  always @ (posedge clk) begin
    if(_zz_92_) begin
      MemoryTranslatorPlugin_shared_cache[_zz_491_] <= _zz_492_;
    end
  end

  always @ (posedge clk) begin
    if(_zz_490_) begin
      _zz_289_ <= MemoryTranslatorPlugin_shared_cache[MemoryTranslatorPlugin_shared_readAddr];
    end
  end

  always @ (posedge clk) begin
    if(_zz_62_) begin
      RegFilePlugin_regFile[writeBack_RegFilePlugin_regFileWrite_payload_address] <= writeBack_RegFilePlugin_regFileWrite_payload_data;
    end
  end

  always @ (posedge clk) begin
    if(_zz_493_) begin
      _zz_290_ <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress1];
    end
  end

  always @ (posedge clk) begin
    if(_zz_494_) begin
      _zz_291_ <= RegFilePlugin_regFile[decode_RegFilePlugin_regFileReadAddress2];
    end
  end

  InstructionCache IBusCachedPlugin_cache ( 
    .io_flush_cmd_valid(_zz_272_),
    .io_flush_cmd_ready(_zz_307_),
    .io_flush_rsp(_zz_308_),
    .io_cpu_prefetch_isValid(IBusCachedPlugin_iBusRsp_stages_0_input_valid),
    .io_cpu_prefetch_haltIt(_zz_309_),
    .io_cpu_prefetch_pc(IBusCachedPlugin_iBusRsp_stages_0_input_payload),
    .io_cpu_fetch_isValid(IBusCachedPlugin_iBusRsp_stages_1_input_valid),
    .io_cpu_fetch_isStuck(_zz_273_),
    .io_cpu_fetch_isRemoved(_zz_274_),
    .io_cpu_fetch_pc(IBusCachedPlugin_iBusRsp_stages_1_input_payload),
    .io_cpu_fetch_data(_zz_310_),
    .io_cpu_fetch_mmuBus_cmd_isValid(_zz_312_),
    .io_cpu_fetch_mmuBus_cmd_virtualAddress(_zz_313_),
    .io_cpu_fetch_mmuBus_cmd_bypassTranslation(_zz_314_),
    .io_cpu_fetch_mmuBus_rsp_physicalAddress(_zz_116_),
    .io_cpu_fetch_mmuBus_rsp_isIoAccess(_zz_275_),
    .io_cpu_fetch_mmuBus_rsp_allowRead(_zz_117_),
    .io_cpu_fetch_mmuBus_rsp_allowWrite(_zz_118_),
    .io_cpu_fetch_mmuBus_rsp_allowExecute(_zz_119_),
    .io_cpu_fetch_mmuBus_rsp_allowUser(_zz_120_),
    .io_cpu_fetch_mmuBus_rsp_miss(_zz_121_),
    .io_cpu_fetch_mmuBus_rsp_hit(_zz_122_),
    .io_cpu_fetch_mmuBus_end(_zz_315_),
    .io_cpu_fetch_physicalAddress(_zz_311_),
    .io_cpu_decode_isValid(IBusCachedPlugin_stages_2_input_valid),
    .io_cpu_decode_isStuck(_zz_276_),
    .io_cpu_decode_pc(IBusCachedPlugin_stages_2_input_payload),
    .io_cpu_decode_physicalAddress(_zz_321_),
    .io_cpu_decode_data(_zz_319_),
    .io_cpu_decode_cacheMiss(_zz_320_),
    .io_cpu_decode_error(_zz_316_),
    .io_cpu_decode_mmuMiss(_zz_317_),
    .io_cpu_decode_illegalAccess(_zz_318_),
    .io_cpu_decode_isUser(_zz_277_),
    .io_cpu_fill_valid(IBusCachedPlugin_redoFetch),
    .io_cpu_fill_payload(_zz_321_),
    .io_mem_cmd_valid(_zz_322_),
    .io_mem_cmd_ready(iBus_cmd_ready),
    .io_mem_cmd_payload_address(_zz_323_),
    .io_mem_cmd_payload_size(_zz_324_),
    .io_mem_rsp_valid(iBus_rsp_valid),
    .io_mem_rsp_payload_data(iBus_rsp_payload_data),
    .io_mem_rsp_payload_error(iBus_rsp_payload_error),
    .clk(clk),
    .reset(reset) 
  );
  DataCache dataCache_1_ ( 
    .io_cpu_execute_isValid(_zz_278_),
    .io_cpu_execute_isStuck(execute_arbitration_isStuck),
    .io_cpu_execute_args_kind(_zz_279_),
    .io_cpu_execute_args_wr(execute_MEMORY_WR),
    .io_cpu_execute_args_address(_zz_280_),
    .io_cpu_execute_args_data(_zz_163_),
    .io_cpu_execute_args_size(execute_DBusCachedPlugin_size),
    .io_cpu_execute_args_forceUncachedAccess(_zz_281_),
    .io_cpu_execute_args_clean(_zz_282_),
    .io_cpu_execute_args_invalidate(_zz_283_),
    .io_cpu_execute_args_way(_zz_284_),
    .io_cpu_memory_isValid(_zz_285_),
    .io_cpu_memory_isStuck(memory_arbitration_isStuck),
    .io_cpu_memory_isRemoved(memory_arbitration_removeIt),
    .io_cpu_memory_haltIt(_zz_325_),
    .io_cpu_memory_mmuBus_cmd_isValid(_zz_326_),
    .io_cpu_memory_mmuBus_cmd_virtualAddress(_zz_327_),
    .io_cpu_memory_mmuBus_cmd_bypassTranslation(_zz_328_),
    .io_cpu_memory_mmuBus_rsp_physicalAddress(_zz_126_),
    .io_cpu_memory_mmuBus_rsp_isIoAccess(_zz_286_),
    .io_cpu_memory_mmuBus_rsp_allowRead(_zz_127_),
    .io_cpu_memory_mmuBus_rsp_allowWrite(_zz_128_),
    .io_cpu_memory_mmuBus_rsp_allowExecute(_zz_129_),
    .io_cpu_memory_mmuBus_rsp_allowUser(_zz_130_),
    .io_cpu_memory_mmuBus_rsp_miss(_zz_131_),
    .io_cpu_memory_mmuBus_rsp_hit(_zz_132_),
    .io_cpu_memory_mmuBus_end(_zz_329_),
    .io_cpu_writeBack_isValid(_zz_287_),
    .io_cpu_writeBack_isStuck(writeBack_arbitration_isStuck),
    .io_cpu_writeBack_isUser(_zz_288_),
    .io_cpu_writeBack_haltIt(_zz_330_),
    .io_cpu_writeBack_data(_zz_331_),
    .io_cpu_writeBack_mmuMiss(_zz_332_),
    .io_cpu_writeBack_illegalAccess(_zz_333_),
    .io_cpu_writeBack_unalignedAccess(_zz_334_),
    .io_cpu_writeBack_accessError(_zz_335_),
    .io_cpu_writeBack_badAddr(_zz_336_),
    .io_mem_cmd_valid(_zz_337_),
    .io_mem_cmd_ready(dBus_cmd_ready),
    .io_mem_cmd_payload_wr(_zz_338_),
    .io_mem_cmd_payload_address(_zz_339_),
    .io_mem_cmd_payload_data(_zz_340_),
    .io_mem_cmd_payload_mask(_zz_341_),
    .io_mem_cmd_payload_length(_zz_342_),
    .io_mem_cmd_payload_last(_zz_343_),
    .io_mem_rsp_valid(dBus_rsp_valid),
    .io_mem_rsp_payload_data(dBus_rsp_payload_data),
    .io_mem_rsp_payload_error(dBus_rsp_payload_error),
    .clk(clk),
    .reset(reset) 
  );
  JtagBridge jtagBridge_1_ ( 
    .io_jtag_tms(jtag_tms),
    .io_jtag_tdi(jtag_tdi),
    .io_jtag_tdo(_zz_344_),
    .io_jtag_tck(jtag_tck),
    .io_remote_cmd_valid(_zz_345_),
    .io_remote_cmd_ready(_zz_349_),
    .io_remote_cmd_payload_last(_zz_346_),
    .io_remote_cmd_payload_fragment(_zz_347_),
    .io_remote_rsp_valid(_zz_350_),
    .io_remote_rsp_ready(_zz_348_),
    .io_remote_rsp_payload_error(_zz_351_),
    .io_remote_rsp_payload_data(_zz_352_),
    .clk(clk),
    .reset(reset) 
  );
  SystemDebugger systemDebugger_1_ ( 
    .io_remote_cmd_valid(_zz_345_),
    .io_remote_cmd_ready(_zz_349_),
    .io_remote_cmd_payload_last(_zz_346_),
    .io_remote_cmd_payload_fragment(_zz_347_),
    .io_remote_rsp_valid(_zz_350_),
    .io_remote_rsp_ready(_zz_348_),
    .io_remote_rsp_payload_error(_zz_351_),
    .io_remote_rsp_payload_data(_zz_352_),
    .io_mem_cmd_valid(_zz_353_),
    .io_mem_cmd_ready(debug_bus_cmd_ready),
    .io_mem_cmd_payload_address(_zz_354_),
    .io_mem_cmd_payload_data(_zz_355_),
    .io_mem_cmd_payload_wr(_zz_356_),
    .io_mem_cmd_payload_size(_zz_357_),
    .io_mem_rsp_valid(_zz_271_),
    .io_mem_rsp_payload(debug_bus_rsp_data),
    .clk(clk),
    .reset(reset) 
  );
  always @(*) begin
    case(_zz_495_)
      2'b00 : begin
        _zz_292_ = _zz_136_;
      end
      2'b01 : begin
        _zz_292_ = _zz_134_;
      end
      2'b10 : begin
        _zz_292_ = _zz_111_;
      end
      default : begin
        _zz_292_ = _zz_108_;
      end
    endcase
  end

  always @(*) begin
    case(_zz_171_)
      2'b00 : begin
        _zz_293_ = MemoryTranslatorPlugin_ports_0_cache_0_valid;
        _zz_294_ = MemoryTranslatorPlugin_ports_0_cache_0_virtualAddress;
        _zz_295_ = MemoryTranslatorPlugin_ports_0_cache_0_physicalAddress;
        _zz_296_ = MemoryTranslatorPlugin_ports_0_cache_0_allowRead;
        _zz_297_ = MemoryTranslatorPlugin_ports_0_cache_0_allowWrite;
        _zz_298_ = MemoryTranslatorPlugin_ports_0_cache_0_allowExecute;
        _zz_299_ = MemoryTranslatorPlugin_ports_0_cache_0_allowUser;
      end
      2'b01 : begin
        _zz_293_ = MemoryTranslatorPlugin_ports_0_cache_1_valid;
        _zz_294_ = MemoryTranslatorPlugin_ports_0_cache_1_virtualAddress;
        _zz_295_ = MemoryTranslatorPlugin_ports_0_cache_1_physicalAddress;
        _zz_296_ = MemoryTranslatorPlugin_ports_0_cache_1_allowRead;
        _zz_297_ = MemoryTranslatorPlugin_ports_0_cache_1_allowWrite;
        _zz_298_ = MemoryTranslatorPlugin_ports_0_cache_1_allowExecute;
        _zz_299_ = MemoryTranslatorPlugin_ports_0_cache_1_allowUser;
      end
      2'b10 : begin
        _zz_293_ = MemoryTranslatorPlugin_ports_0_cache_2_valid;
        _zz_294_ = MemoryTranslatorPlugin_ports_0_cache_2_virtualAddress;
        _zz_295_ = MemoryTranslatorPlugin_ports_0_cache_2_physicalAddress;
        _zz_296_ = MemoryTranslatorPlugin_ports_0_cache_2_allowRead;
        _zz_297_ = MemoryTranslatorPlugin_ports_0_cache_2_allowWrite;
        _zz_298_ = MemoryTranslatorPlugin_ports_0_cache_2_allowExecute;
        _zz_299_ = MemoryTranslatorPlugin_ports_0_cache_2_allowUser;
      end
      default : begin
        _zz_293_ = MemoryTranslatorPlugin_ports_0_cache_3_valid;
        _zz_294_ = MemoryTranslatorPlugin_ports_0_cache_3_virtualAddress;
        _zz_295_ = MemoryTranslatorPlugin_ports_0_cache_3_physicalAddress;
        _zz_296_ = MemoryTranslatorPlugin_ports_0_cache_3_allowRead;
        _zz_297_ = MemoryTranslatorPlugin_ports_0_cache_3_allowWrite;
        _zz_298_ = MemoryTranslatorPlugin_ports_0_cache_3_allowExecute;
        _zz_299_ = MemoryTranslatorPlugin_ports_0_cache_3_allowUser;
      end
    endcase
  end

  always @(*) begin
    case(_zz_179_)
      2'b00 : begin
        _zz_300_ = MemoryTranslatorPlugin_ports_1_cache_0_valid;
        _zz_301_ = MemoryTranslatorPlugin_ports_1_cache_0_virtualAddress;
        _zz_302_ = MemoryTranslatorPlugin_ports_1_cache_0_physicalAddress;
        _zz_303_ = MemoryTranslatorPlugin_ports_1_cache_0_allowRead;
        _zz_304_ = MemoryTranslatorPlugin_ports_1_cache_0_allowWrite;
        _zz_305_ = MemoryTranslatorPlugin_ports_1_cache_0_allowExecute;
        _zz_306_ = MemoryTranslatorPlugin_ports_1_cache_0_allowUser;
      end
      2'b01 : begin
        _zz_300_ = MemoryTranslatorPlugin_ports_1_cache_1_valid;
        _zz_301_ = MemoryTranslatorPlugin_ports_1_cache_1_virtualAddress;
        _zz_302_ = MemoryTranslatorPlugin_ports_1_cache_1_physicalAddress;
        _zz_303_ = MemoryTranslatorPlugin_ports_1_cache_1_allowRead;
        _zz_304_ = MemoryTranslatorPlugin_ports_1_cache_1_allowWrite;
        _zz_305_ = MemoryTranslatorPlugin_ports_1_cache_1_allowExecute;
        _zz_306_ = MemoryTranslatorPlugin_ports_1_cache_1_allowUser;
      end
      2'b10 : begin
        _zz_300_ = MemoryTranslatorPlugin_ports_1_cache_2_valid;
        _zz_301_ = MemoryTranslatorPlugin_ports_1_cache_2_virtualAddress;
        _zz_302_ = MemoryTranslatorPlugin_ports_1_cache_2_physicalAddress;
        _zz_303_ = MemoryTranslatorPlugin_ports_1_cache_2_allowRead;
        _zz_304_ = MemoryTranslatorPlugin_ports_1_cache_2_allowWrite;
        _zz_305_ = MemoryTranslatorPlugin_ports_1_cache_2_allowExecute;
        _zz_306_ = MemoryTranslatorPlugin_ports_1_cache_2_allowUser;
      end
      default : begin
        _zz_300_ = MemoryTranslatorPlugin_ports_1_cache_3_valid;
        _zz_301_ = MemoryTranslatorPlugin_ports_1_cache_3_virtualAddress;
        _zz_302_ = MemoryTranslatorPlugin_ports_1_cache_3_physicalAddress;
        _zz_303_ = MemoryTranslatorPlugin_ports_1_cache_3_allowRead;
        _zz_304_ = MemoryTranslatorPlugin_ports_1_cache_3_allowWrite;
        _zz_305_ = MemoryTranslatorPlugin_ports_1_cache_3_allowExecute;
        _zz_306_ = MemoryTranslatorPlugin_ports_1_cache_3_allowUser;
      end
    endcase
  end

  assign decode_MEMORY_ENABLE = _zz_89_;
  assign decode_SRC1_CTRL = _zz_1_;
  assign _zz_2_ = _zz_3_;
  assign decode_IS_TLB = _zz_81_;
  assign memory_PC = execute_to_memory_PC;
  assign memory_MEMORY_WR = execute_to_memory_MEMORY_WR;
  assign decode_MEMORY_WR = _zz_76_;
  assign decode_ALU_CTRL = _zz_4_;
  assign _zz_5_ = _zz_6_;
  assign _zz_7_ = _zz_8_;
  assign _zz_9_ = _zz_10_;
  assign decode_ENV_CTRL = _zz_11_;
  assign _zz_12_ = _zz_13_;
  assign _zz_14_ = _zz_15_;
  assign writeBack_FORMAL_PC_NEXT = memory_to_writeBack_FORMAL_PC_NEXT;
  assign memory_FORMAL_PC_NEXT = execute_to_memory_FORMAL_PC_NEXT;
  assign execute_FORMAL_PC_NEXT = decode_to_execute_FORMAL_PC_NEXT;
  assign decode_FORMAL_PC_NEXT = _zz_101_;
  assign decode_IS_DIV = _zz_77_;
  assign decode_SRC2_CTRL = _zz_16_;
  assign _zz_17_ = _zz_18_;
  assign decode_CSR_READ_OPCODE = _zz_30_;
  assign decode_PREDICTION_HAD_BRANCHED2 = _zz_38_;
  assign execute_MUL_HL = _zz_42_;
  assign execute_SHIFT_RIGHT = _zz_47_;
  assign decode_IS_CSR = _zz_84_;
  assign decode_DO_EBREAK = _zz_27_;
  assign _zz_19_ = _zz_20_;
  assign decode_SHIFT_CTRL = _zz_21_;
  assign _zz_22_ = _zz_23_;
  assign execute_BYPASSABLE_MEMORY_STAGE = decode_to_execute_BYPASSABLE_MEMORY_STAGE;
  assign decode_BYPASSABLE_MEMORY_STAGE = _zz_80_;
  assign memory_MEMORY_ADDRESS_LOW = execute_to_memory_MEMORY_ADDRESS_LOW;
  assign execute_MEMORY_ADDRESS_LOW = _zz_95_;
  assign execute_BRANCH_DO = _zz_35_;
  assign memory_IS_MUL = execute_to_memory_IS_MUL;
  assign execute_IS_MUL = decode_to_execute_IS_MUL;
  assign decode_IS_MUL = _zz_73_;
  assign decode_BYPASSABLE_EXECUTE_STAGE = _zz_78_;
  assign decode_SRC_USE_SUB_LESS = _zz_85_;
  assign memory_MUL_HH = execute_to_memory_MUL_HH;
  assign execute_MUL_HH = _zz_41_;
  assign execute_MUL_LH = _zz_43_;
  assign execute_FLUSH_ALL = decode_to_execute_FLUSH_ALL;
  assign decode_FLUSH_ALL = _zz_83_;
  assign memory_MUL_LOW = _zz_40_;
  assign execute_MUL_LL = _zz_44_;
  assign writeBack_REGFILE_WRITE_DATA = memory_to_writeBack_REGFILE_WRITE_DATA;
  assign memory_REGFILE_WRITE_DATA = execute_to_memory_REGFILE_WRITE_DATA;
  assign decode_IS_RS1_SIGNED = _zz_79_;
  assign decode_CSR_WRITE_OPCODE = _zz_31_;
  assign decode_ALU_BITWISE_CTRL = _zz_24_;
  assign _zz_25_ = _zz_26_;
  assign decode_IS_RS2_SIGNED = _zz_86_;
  assign decode_MEMORY_MANAGMENT = _zz_88_;
  assign execute_BRANCH_CALC = _zz_34_;
  assign decode_SRC_LESS_UNSIGNED = _zz_71_;
  assign execute_DO_EBREAK = decode_to_execute_DO_EBREAK;
  assign decode_IS_EBREAK = _zz_72_;
  assign execute_CSR_READ_OPCODE = decode_to_execute_CSR_READ_OPCODE;
  assign execute_CSR_WRITE_OPCODE = decode_to_execute_CSR_WRITE_OPCODE;
  assign execute_REGFILE_WRITE_DATA = _zz_58_;
  assign execute_IS_CSR = decode_to_execute_IS_CSR;
  assign memory_ENV_CTRL = _zz_28_;
  assign execute_ENV_CTRL = _zz_29_;
  assign writeBack_ENV_CTRL = _zz_32_;
  assign execute_IS_FENCEI = decode_to_execute_IS_FENCEI;
  always @ (*) begin
    _zz_33_ = decode_INSTRUCTION;
    if(decode_IS_FENCEI)begin
      _zz_33_[12] = 1'b0;
      _zz_33_[22] = 1'b1;
    end
  end

  assign memory_BRANCH_CALC = execute_to_memory_BRANCH_CALC;
  assign memory_BRANCH_DO = execute_to_memory_BRANCH_DO;
  assign execute_PC = decode_to_execute_PC;
  assign execute_PREDICTION_HAD_BRANCHED2 = decode_to_execute_PREDICTION_HAD_BRANCHED2;
  assign execute_BRANCH_COND_RESULT = _zz_37_;
  assign execute_BRANCH_CTRL = _zz_36_;
  assign decode_IS_FENCEI = _zz_66_;
  assign decode_RS2_USE = _zz_70_;
  assign decode_RS1_USE = _zz_90_;
  always @ (*) begin
    _zz_39_ = execute_REGFILE_WRITE_DATA;
    execute_arbitration_haltItself = 1'b0;
    if((execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI)))begin
      if((! CsrPlugin_interrupt))begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
    if((execute_arbitration_isValid && execute_IS_CSR))begin
      _zz_39_ = execute_CsrPlugin_readData;
      if(execute_CsrPlugin_blockedBySideEffects)begin
        execute_arbitration_haltItself = 1'b1;
      end
    end
  end

  assign execute_REGFILE_WRITE_VALID = decode_to_execute_REGFILE_WRITE_VALID;
  assign execute_BYPASSABLE_EXECUTE_STAGE = decode_to_execute_BYPASSABLE_EXECUTE_STAGE;
  assign memory_REGFILE_WRITE_VALID = execute_to_memory_REGFILE_WRITE_VALID;
  assign memory_BYPASSABLE_MEMORY_STAGE = execute_to_memory_BYPASSABLE_MEMORY_STAGE;
  assign writeBack_REGFILE_WRITE_VALID = memory_to_writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    decode_RS2 = _zz_63_;
    decode_RS1 = _zz_64_;
    if(_zz_221_)begin
      if((_zz_222_ == decode_INSTRUCTION[19 : 15]))begin
        decode_RS1 = _zz_223_;
      end
      if((_zz_222_ == decode_INSTRUCTION[24 : 20]))begin
        decode_RS2 = _zz_223_;
      end
    end
    if((writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID))begin
      if(1'b1)begin
        if(_zz_224_)begin
          decode_RS1 = _zz_94_;
        end
        if(_zz_225_)begin
          decode_RS2 = _zz_94_;
        end
      end
    end
    if((memory_arbitration_isValid && memory_REGFILE_WRITE_VALID))begin
      if(memory_BYPASSABLE_MEMORY_STAGE)begin
        if(_zz_226_)begin
          decode_RS1 = _zz_45_;
        end
        if(_zz_227_)begin
          decode_RS2 = _zz_45_;
        end
      end
    end
    if((execute_arbitration_isValid && execute_REGFILE_WRITE_VALID))begin
      if(execute_BYPASSABLE_EXECUTE_STAGE)begin
        if(_zz_228_)begin
          decode_RS1 = _zz_39_;
        end
        if(_zz_229_)begin
          decode_RS2 = _zz_39_;
        end
      end
    end
  end

  assign execute_IS_RS1_SIGNED = decode_to_execute_IS_RS1_SIGNED;
  assign execute_RS1 = decode_to_execute_RS1;
  assign execute_IS_DIV = decode_to_execute_IS_DIV;
  assign execute_IS_RS2_SIGNED = decode_to_execute_IS_RS2_SIGNED;
  assign memory_INSTRUCTION = execute_to_memory_INSTRUCTION;
  assign memory_IS_DIV = execute_to_memory_IS_DIV;
  assign writeBack_IS_MUL = memory_to_writeBack_IS_MUL;
  assign writeBack_MUL_HH = memory_to_writeBack_MUL_HH;
  assign writeBack_MUL_LOW = memory_to_writeBack_MUL_LOW;
  assign memory_MUL_HL = execute_to_memory_MUL_HL;
  assign memory_MUL_LH = execute_to_memory_MUL_LH;
  assign memory_MUL_LL = execute_to_memory_MUL_LL;
  assign memory_SHIFT_RIGHT = execute_to_memory_SHIFT_RIGHT;
  always @ (*) begin
    _zz_45_ = memory_REGFILE_WRITE_DATA;
    decode_arbitration_flushAll = 1'b0;
    memory_arbitration_haltItself = 1'b0;
    _zz_272_ = 1'b0;
    if((memory_arbitration_isValid && memory_FLUSH_ALL))begin
      _zz_272_ = 1'b1;
      decode_arbitration_flushAll = 1'b1;
      if((! _zz_307_))begin
        memory_arbitration_haltItself = 1'b1;
      end
    end
    if(_zz_325_)begin
      memory_arbitration_haltItself = 1'b1;
    end
    if(((_zz_123_ && (! _zz_132_)) && (! _zz_131_)))begin
      memory_arbitration_haltItself = 1'b1;
    end
    case(memory_SHIFT_CTRL)
      `ShiftCtrlEnum_defaultEncoding_SLL_1 : begin
        _zz_45_ = _zz_210_;
      end
      `ShiftCtrlEnum_defaultEncoding_SRL_1, `ShiftCtrlEnum_defaultEncoding_SRA_1 : begin
        _zz_45_ = memory_SHIFT_RIGHT;
      end
      default : begin
      end
    endcase
    memory_DivPlugin_div_counter_willIncrement = 1'b0;
    if(_zz_358_)begin
      if(_zz_359_)begin
        memory_arbitration_haltItself = 1'b1;
        memory_DivPlugin_div_counter_willIncrement = 1'b1;
      end
      _zz_45_ = memory_DivPlugin_div_result;
    end
  end

  assign memory_SHIFT_CTRL = _zz_46_;
  assign execute_SHIFT_CTRL = _zz_48_;
  assign execute_SRC_LESS_UNSIGNED = decode_to_execute_SRC_LESS_UNSIGNED;
  assign execute_SRC_USE_SUB_LESS = decode_to_execute_SRC_USE_SUB_LESS;
  assign _zz_52_ = execute_PC;
  assign execute_SRC2_CTRL = _zz_53_;
  assign execute_SRC1_CTRL = _zz_55_;
  assign execute_SRC_ADD_SUB = _zz_51_;
  assign execute_SRC_LESS = _zz_49_;
  assign execute_ALU_CTRL = _zz_57_;
  assign execute_SRC2 = _zz_54_;
  assign execute_ALU_BITWISE_CTRL = _zz_59_;
  assign _zz_60_ = writeBack_INSTRUCTION;
  assign _zz_61_ = writeBack_REGFILE_WRITE_VALID;
  always @ (*) begin
    _zz_62_ = 1'b0;
    if(writeBack_RegFilePlugin_regFileWrite_valid)begin
      _zz_62_ = 1'b1;
    end
  end

  assign decode_INSTRUCTION_ANTICIPATED = _zz_97_;
  always @ (*) begin
    decode_REGFILE_WRITE_VALID = _zz_87_;
    if((decode_INSTRUCTION[11 : 7] == (5'b00000)))begin
      decode_REGFILE_WRITE_VALID = 1'b0;
    end
  end

  assign decode_LEGAL_INSTRUCTION = _zz_91_;
  assign decode_INSTRUCTION_READY = 1'b1;
  always @ (*) begin
    _zz_92_ = 1'b0;
    if(_zz_360_)begin
      case(_zz_361_)
        2'b00 : begin
        end
        2'b01 : begin
          _zz_92_ = 1'b1;
        end
        2'b10 : begin
        end
        default : begin
        end
      endcase
    end
  end

  assign execute_SRC1 = _zz_56_;
  assign execute_IS_TLB = decode_to_execute_IS_TLB;
  always @ (*) begin
    MemoryTranslatorPlugin_shared_free = _zz_93_;
    if(MemoryTranslatorPlugin_ports_1_sharedAccessAsked)begin
      MemoryTranslatorPlugin_shared_free = 1'b0;
    end
  end

  always @ (*) begin
    _zz_93_ = 1'b1;
    if(MemoryTranslatorPlugin_ports_0_sharedAccessAsked)begin
      _zz_93_ = 1'b0;
    end
  end

  always @ (*) begin
    _zz_94_ = writeBack_REGFILE_WRITE_DATA;
    if((writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE))begin
      _zz_94_ = writeBack_DBusCachedPlugin_rspFormated;
    end
    if((writeBack_arbitration_isValid && writeBack_IS_MUL))begin
      case(_zz_378_)
        2'b00 : begin
          _zz_94_ = _zz_446_;
        end
        default : begin
          _zz_94_ = _zz_447_;
        end
      endcase
    end
  end

  assign writeBack_MEMORY_ADDRESS_LOW = memory_to_writeBack_MEMORY_ADDRESS_LOW;
  assign writeBack_MEMORY_WR = memory_to_writeBack_MEMORY_WR;
  assign writeBack_MEMORY_ENABLE = memory_to_writeBack_MEMORY_ENABLE;
  assign memory_MEMORY_ENABLE = execute_to_memory_MEMORY_ENABLE;
  assign execute_MEMORY_MANAGMENT = decode_to_execute_MEMORY_MANAGMENT;
  assign execute_RS2 = decode_to_execute_RS2;
  assign execute_SRC_ADD = _zz_50_;
  assign execute_MEMORY_WR = decode_to_execute_MEMORY_WR;
  assign execute_MEMORY_ENABLE = decode_to_execute_MEMORY_ENABLE;
  assign execute_INSTRUCTION = decode_to_execute_INSTRUCTION;
  assign memory_FLUSH_ALL = execute_to_memory_FLUSH_ALL;
  always @ (*) begin
    IBusCachedPlugin_issueDetected = _zz_96_;
    _zz_112_ = 1'b0;
    if(((IBusCachedPlugin_stages_2_input_valid && ((_zz_316_ || _zz_317_) || _zz_318_)) && (! _zz_96_)))begin
      IBusCachedPlugin_issueDetected = 1'b1;
      _zz_112_ = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  always @ (*) begin
    _zz_96_ = 1'b0;
    IBusCachedPlugin_redoFetch = 1'b0;
    if(((IBusCachedPlugin_stages_2_input_valid && _zz_320_) && (! 1'b0)))begin
      _zz_96_ = 1'b1;
      IBusCachedPlugin_redoFetch = IBusCachedPlugin_iBusRsp_readyForError;
    end
  end

  assign decode_BRANCH_CTRL = _zz_98_;
  always @ (*) begin
    _zz_99_ = memory_FORMAL_PC_NEXT;
    if(_zz_133_)begin
      _zz_99_ = _zz_134_;
    end
  end

  always @ (*) begin
    _zz_100_ = decode_FORMAL_PC_NEXT;
    if(_zz_107_)begin
      _zz_100_ = _zz_108_;
    end
    if(_zz_110_)begin
      _zz_100_ = _zz_111_;
    end
  end

  assign writeBack_PC = memory_to_writeBack_PC;
  assign writeBack_INSTRUCTION = memory_to_writeBack_INSTRUCTION;
  assign decode_PC = _zz_103_;
  always @ (*) begin
    decode_INSTRUCTION = _zz_102_;
    if((_zz_260_ != (3'b000)))begin
      decode_INSTRUCTION = _zz_261_;
    end
  end

  always @ (*) begin
    decode_arbitration_haltItself = 1'b0;
    decode_arbitration_isValid = (IBusCachedPlugin_iBusRsp_decodeInput_valid && (! IBusCachedPlugin_injector_decodeRemoved));
    if((decode_arbitration_isValid && (_zz_218_ || _zz_219_)))begin
      decode_arbitration_haltItself = 1'b1;
    end
    _zz_140_ = 1'b0;
    case(_zz_260_)
      3'b000 : begin
      end
      3'b001 : begin
      end
      3'b010 : begin
        decode_arbitration_isValid = 1'b1;
        decode_arbitration_haltItself = 1'b1;
      end
      3'b011 : begin
        decode_arbitration_isValid = 1'b1;
      end
      3'b100 : begin
        _zz_140_ = 1'b1;
      end
      default : begin
      end
    endcase
  end

  always @ (*) begin
    decode_arbitration_haltByOther = 1'b0;
    if((CsrPlugin_interrupt && decode_arbitration_isValid))begin
      decode_arbitration_haltByOther = 1'b1;
    end
    if(((execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)) || (memory_arbitration_isValid && (memory_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET))))begin
      decode_arbitration_haltByOther = 1'b1;
    end
  end

  always @ (*) begin
    decode_arbitration_removeIt = 1'b0;
    if(decode_exception_agregat_valid)begin
      decode_arbitration_removeIt = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      decode_arbitration_removeIt = 1'b1;
    end
  end

  assign decode_arbitration_redoIt = 1'b0;
  always @ (*) begin
    execute_arbitration_haltByOther = 1'b0;
    _zz_104_ = 1'b0;
    _zz_105_ = 1'b0;
    if(((execute_arbitration_isValid && execute_IS_FENCEI) && (memory_arbitration_isValid || writeBack_arbitration_isValid)))begin
      execute_arbitration_haltByOther = 1'b1;
    end
    if((((CsrPlugin_exceptionPortCtrl_exceptionValids_decode || CsrPlugin_exceptionPortCtrl_exceptionValids_execute) || CsrPlugin_exceptionPortCtrl_exceptionValids_memory) || CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack))begin
      _zz_104_ = 1'b1;
      _zz_105_ = 1'b1;
    end
    if(_zz_362_)begin
      execute_arbitration_haltByOther = 1'b1;
      if(_zz_363_)begin
        _zz_105_ = 1'b1;
        _zz_104_ = 1'b1;
      end
    end
    if(DebugPlugin_haltIt)begin
      _zz_104_ = 1'b1;
    end
    if(_zz_364_)begin
      _zz_104_ = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_removeIt = 1'b0;
    if(execute_arbitration_isFlushed)begin
      execute_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    execute_arbitration_flushAll = 1'b0;
    if(_zz_133_)begin
      execute_arbitration_flushAll = 1'b1;
    end
    if(memory_exception_agregat_valid)begin
      execute_arbitration_flushAll = 1'b1;
    end
    if(_zz_362_)begin
      if(_zz_363_)begin
        execute_arbitration_flushAll = 1'b1;
      end
    end
  end

  assign execute_arbitration_redoIt = 1'b0;
  assign memory_arbitration_haltByOther = 1'b0;
  always @ (*) begin
    memory_arbitration_removeIt = 1'b0;
    if(memory_exception_agregat_valid)begin
      memory_arbitration_removeIt = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      memory_arbitration_removeIt = 1'b1;
    end
  end

  always @ (*) begin
    memory_arbitration_flushAll = 1'b0;
    writeBack_arbitration_removeIt = 1'b0;
    _zz_135_ = 1'b0;
    _zz_136_ = (32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
    CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack;
    if(writeBack_exception_agregat_valid)begin
      memory_arbitration_flushAll = 1'b1;
      writeBack_arbitration_removeIt = 1'b1;
      CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack = 1'b1;
    end
    if(_zz_365_)begin
      _zz_135_ = 1'b1;
      memory_arbitration_flushAll = 1'b1;
      case(CsrPlugin_targetPrivilege)
        2'b01 : begin
          _zz_136_ = CsrPlugin_stvec;
        end
        2'b11 : begin
          _zz_136_ = CsrPlugin_mtvec;
        end
        default : begin
        end
      endcase
    end
    if(_zz_366_)begin
      _zz_135_ = 1'b1;
      memory_arbitration_flushAll = 1'b1;
      case(_zz_367_)
        2'b11 : begin
          _zz_136_ = CsrPlugin_mepc;
        end
        2'b01 : begin
          _zz_136_ = CsrPlugin_sepc;
        end
        default : begin
        end
      endcase
    end
    if(writeBack_arbitration_isFlushed)begin
      writeBack_arbitration_removeIt = 1'b1;
    end
  end

  assign memory_arbitration_redoIt = 1'b0;
  always @ (*) begin
    writeBack_arbitration_haltItself = 1'b0;
    if(_zz_330_)begin
      writeBack_arbitration_haltItself = 1'b1;
    end
  end

  assign writeBack_arbitration_haltByOther = 1'b0;
  assign writeBack_arbitration_flushAll = 1'b0;
  assign writeBack_arbitration_redoIt = 1'b0;
  always @ (*) begin
    _zz_106_ = 1'b0;
    if((IBusCachedPlugin_iBusRsp_stages_1_input_valid || IBusCachedPlugin_stages_2_input_valid))begin
      _zz_106_ = 1'b1;
    end
  end

  always @ (*) begin
    _zz_137_ = 1'b1;
    if((DebugPlugin_haltIt || DebugPlugin_stepIt))begin
      _zz_137_ = 1'b0;
    end
  end

  always @ (*) begin
    _zz_138_ = 1'b1;
    if(DebugPlugin_haltIt)begin
      _zz_138_ = 1'b0;
    end
  end

  assign IBusCachedPlugin_jump_pcLoad_valid = (((_zz_107_ || _zz_110_) || _zz_133_) || _zz_135_);
  assign _zz_141_ = {_zz_107_,{_zz_110_,{_zz_133_,_zz_135_}}};
  assign _zz_142_ = (_zz_141_ & (~ _zz_380_));
  assign _zz_143_ = _zz_142_[3];
  assign _zz_144_ = (_zz_142_[1] || _zz_143_);
  assign _zz_145_ = (_zz_142_[2] || _zz_143_);
  assign IBusCachedPlugin_jump_pcLoad_payload = _zz_292_;
  assign _zz_146_ = (! _zz_104_);
  assign IBusCachedPlugin_fetchPc_output_valid = (IBusCachedPlugin_fetchPc_preOutput_valid && _zz_146_);
  assign IBusCachedPlugin_fetchPc_preOutput_ready = (IBusCachedPlugin_fetchPc_output_ready && _zz_146_);
  assign IBusCachedPlugin_fetchPc_output_payload = IBusCachedPlugin_fetchPc_preOutput_payload;
  always @ (*) begin
    IBusCachedPlugin_fetchPc_propagatePc = 1'b0;
    if((IBusCachedPlugin_iBusRsp_stages_1_input_valid && IBusCachedPlugin_iBusRsp_stages_1_input_ready))begin
      IBusCachedPlugin_fetchPc_propagatePc = 1'b1;
    end
  end

  always @ (*) begin
    IBusCachedPlugin_fetchPc_pc = (IBusCachedPlugin_fetchPc_pcReg + _zz_382_);
    IBusCachedPlugin_fetchPc_samplePcNext = 1'b0;
    if(IBusCachedPlugin_fetchPc_propagatePc)begin
      IBusCachedPlugin_fetchPc_samplePcNext = 1'b1;
    end
    if(IBusCachedPlugin_jump_pcLoad_valid)begin
      IBusCachedPlugin_fetchPc_samplePcNext = 1'b1;
      IBusCachedPlugin_fetchPc_pc = IBusCachedPlugin_jump_pcLoad_payload;
    end
    if(_zz_368_)begin
      IBusCachedPlugin_fetchPc_samplePcNext = 1'b1;
    end
    IBusCachedPlugin_fetchPc_pc[0] = 1'b0;
    IBusCachedPlugin_fetchPc_pc[1] = 1'b0;
  end

  assign IBusCachedPlugin_fetchPc_preOutput_valid = _zz_147_;
  assign IBusCachedPlugin_fetchPc_preOutput_payload = IBusCachedPlugin_fetchPc_pc;
  assign IBusCachedPlugin_iBusRsp_stages_0_input_valid = IBusCachedPlugin_fetchPc_output_valid;
  assign IBusCachedPlugin_fetchPc_output_ready = IBusCachedPlugin_iBusRsp_stages_0_input_ready;
  assign IBusCachedPlugin_iBusRsp_stages_0_input_payload = IBusCachedPlugin_fetchPc_output_payload;
  assign IBusCachedPlugin_iBusRsp_stages_0_inputSample = 1'b1;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b0;
    if(_zz_309_)begin
      IBusCachedPlugin_iBusRsp_stages_0_halt = 1'b1;
    end
  end

  assign _zz_148_ = (! IBusCachedPlugin_iBusRsp_stages_0_halt);
  assign IBusCachedPlugin_iBusRsp_stages_0_input_ready = (IBusCachedPlugin_iBusRsp_stages_0_output_ready && _zz_148_);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_valid = (IBusCachedPlugin_iBusRsp_stages_0_input_valid && _zz_148_);
  assign IBusCachedPlugin_iBusRsp_stages_0_output_payload = IBusCachedPlugin_iBusRsp_stages_0_input_payload;
  always @ (*) begin
    IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b0;
    if(((_zz_113_ && (! _zz_122_)) && (! _zz_121_)))begin
      IBusCachedPlugin_iBusRsp_stages_1_halt = 1'b1;
    end
  end

  assign _zz_149_ = (! IBusCachedPlugin_iBusRsp_stages_1_halt);
  assign IBusCachedPlugin_iBusRsp_stages_1_input_ready = (IBusCachedPlugin_iBusRsp_stages_1_output_ready && _zz_149_);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_valid = (IBusCachedPlugin_iBusRsp_stages_1_input_valid && _zz_149_);
  assign IBusCachedPlugin_iBusRsp_stages_1_output_payload = IBusCachedPlugin_iBusRsp_stages_1_input_payload;
  always @ (*) begin
    IBusCachedPlugin_stages_2_halt = 1'b0;
    if((IBusCachedPlugin_issueDetected || IBusCachedPlugin_iBusRspOutputHalt))begin
      IBusCachedPlugin_stages_2_halt = 1'b1;
    end
  end

  assign _zz_150_ = (! IBusCachedPlugin_stages_2_halt);
  assign IBusCachedPlugin_stages_2_input_ready = (IBusCachedPlugin_stages_2_output_ready && _zz_150_);
  assign IBusCachedPlugin_stages_2_output_valid = (IBusCachedPlugin_stages_2_input_valid && _zz_150_);
  assign IBusCachedPlugin_stages_2_output_payload = IBusCachedPlugin_stages_2_input_payload;
  assign IBusCachedPlugin_iBusRsp_stages_0_output_ready = _zz_151_;
  assign _zz_151_ = ((1'b0 && (! _zz_152_)) || IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_152_ = _zz_153_;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_valid = _zz_152_;
  assign IBusCachedPlugin_iBusRsp_stages_1_input_payload = IBusCachedPlugin_fetchPc_pcReg;
  assign IBusCachedPlugin_iBusRsp_stages_1_output_ready = ((1'b0 && (! _zz_154_)) || IBusCachedPlugin_stages_2_input_ready);
  assign _zz_154_ = _zz_155_;
  assign IBusCachedPlugin_stages_2_input_valid = _zz_154_;
  assign IBusCachedPlugin_stages_2_input_payload = _zz_156_;
  assign IBusCachedPlugin_iBusRsp_readyForError = 1'b1;
  assign IBusCachedPlugin_iBusRsp_decodeInput_ready = (! decode_arbitration_isStuck);
  assign _zz_103_ = IBusCachedPlugin_iBusRsp_decodeInput_payload_pc;
  assign _zz_102_ = IBusCachedPlugin_iBusRsp_decodeInput_payload_rsp_rawInDecode;
  assign _zz_101_ = (decode_PC + (32'b00000000000000000000000000000100));
  assign _zz_157_ = _zz_383_[11];
  always @ (*) begin
    _zz_158_[18] = _zz_157_;
    _zz_158_[17] = _zz_157_;
    _zz_158_[16] = _zz_157_;
    _zz_158_[15] = _zz_157_;
    _zz_158_[14] = _zz_157_;
    _zz_158_[13] = _zz_157_;
    _zz_158_[12] = _zz_157_;
    _zz_158_[11] = _zz_157_;
    _zz_158_[10] = _zz_157_;
    _zz_158_[9] = _zz_157_;
    _zz_158_[8] = _zz_157_;
    _zz_158_[7] = _zz_157_;
    _zz_158_[6] = _zz_157_;
    _zz_158_[5] = _zz_157_;
    _zz_158_[4] = _zz_157_;
    _zz_158_[3] = _zz_157_;
    _zz_158_[2] = _zz_157_;
    _zz_158_[1] = _zz_157_;
    _zz_158_[0] = _zz_157_;
  end

  assign _zz_109_ = ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) || ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_B) && _zz_384_[31]));
  assign _zz_107_ = (_zz_109_ && decode_arbitration_isFiring);
  assign _zz_159_ = _zz_385_[19];
  always @ (*) begin
    _zz_160_[10] = _zz_159_;
    _zz_160_[9] = _zz_159_;
    _zz_160_[8] = _zz_159_;
    _zz_160_[7] = _zz_159_;
    _zz_160_[6] = _zz_159_;
    _zz_160_[5] = _zz_159_;
    _zz_160_[4] = _zz_159_;
    _zz_160_[3] = _zz_159_;
    _zz_160_[2] = _zz_159_;
    _zz_160_[1] = _zz_159_;
    _zz_160_[0] = _zz_159_;
  end

  assign _zz_161_ = _zz_386_[11];
  always @ (*) begin
    _zz_162_[18] = _zz_161_;
    _zz_162_[17] = _zz_161_;
    _zz_162_[16] = _zz_161_;
    _zz_162_[15] = _zz_161_;
    _zz_162_[14] = _zz_161_;
    _zz_162_[13] = _zz_161_;
    _zz_162_[12] = _zz_161_;
    _zz_162_[11] = _zz_161_;
    _zz_162_[10] = _zz_161_;
    _zz_162_[9] = _zz_161_;
    _zz_162_[8] = _zz_161_;
    _zz_162_[7] = _zz_161_;
    _zz_162_[6] = _zz_161_;
    _zz_162_[5] = _zz_161_;
    _zz_162_[4] = _zz_161_;
    _zz_162_[3] = _zz_161_;
    _zz_162_[2] = _zz_161_;
    _zz_162_[1] = _zz_161_;
    _zz_162_[0] = _zz_161_;
  end

  assign _zz_108_ = (decode_PC + ((decode_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) ? {{_zz_160_,{{{_zz_496_,_zz_497_},_zz_498_},decode_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_162_,{{{_zz_499_,_zz_500_},decode_INSTRUCTION[30 : 25]},decode_INSTRUCTION[11 : 8]}},1'b0}));
  assign iBus_cmd_valid = _zz_322_;
  always @ (*) begin
    iBus_cmd_payload_address = _zz_323_;
    iBus_cmd_payload_address = _zz_323_;
  end

  assign iBus_cmd_payload_size = _zz_324_;
  assign _zz_274_ = (IBusCachedPlugin_jump_pcLoad_valid || _zz_105_);
  assign IBusCachedPlugin_iBusRspOutputHalt = 1'b0;
  assign _zz_113_ = _zz_312_;
  assign _zz_114_ = _zz_313_;
  assign _zz_115_ = _zz_314_;
  assign _zz_275_ = 1'b1;
  assign _zz_273_ = (! IBusCachedPlugin_iBusRsp_stages_1_input_ready);
  assign _zz_276_ = (! IBusCachedPlugin_stages_2_input_ready);
  assign _zz_277_ = (CsrPlugin_privilege == (2'b00));
  assign _zz_97_ = (decode_arbitration_isStuck ? decode_INSTRUCTION : _zz_310_);
  assign _zz_110_ = IBusCachedPlugin_redoFetch;
  assign _zz_111_ = IBusCachedPlugin_stages_2_input_payload;
  assign IBusCachedPlugin_iBusRsp_decodeInput_valid = IBusCachedPlugin_stages_2_output_valid;
  assign IBusCachedPlugin_stages_2_output_ready = IBusCachedPlugin_iBusRsp_decodeInput_ready;
  assign IBusCachedPlugin_iBusRsp_decodeInput_payload_rsp_rawInDecode = _zz_319_;
  assign IBusCachedPlugin_iBusRsp_decodeInput_payload_pc = IBusCachedPlugin_stages_2_output_payload;
  assign dBus_cmd_valid = _zz_337_;
  assign dBus_cmd_payload_wr = _zz_338_;
  assign dBus_cmd_payload_address = _zz_339_;
  assign dBus_cmd_payload_data = _zz_340_;
  assign dBus_cmd_payload_mask = _zz_341_;
  assign dBus_cmd_payload_length = _zz_342_;
  assign dBus_cmd_payload_last = _zz_343_;
  assign execute_DBusCachedPlugin_size = execute_INSTRUCTION[13 : 12];
  assign _zz_278_ = (execute_arbitration_isValid && execute_MEMORY_ENABLE);
  assign _zz_280_ = execute_SRC_ADD;
  always @ (*) begin
    case(execute_DBusCachedPlugin_size)
      2'b00 : begin
        _zz_163_ = {{{execute_RS2[7 : 0],execute_RS2[7 : 0]},execute_RS2[7 : 0]},execute_RS2[7 : 0]};
      end
      2'b01 : begin
        _zz_163_ = {execute_RS2[15 : 0],execute_RS2[15 : 0]};
      end
      default : begin
        _zz_163_ = execute_RS2[31 : 0];
      end
    endcase
  end

  assign _zz_281_ = 1'b0;
  assign _zz_279_ = (execute_MEMORY_MANAGMENT ? `DataCacheCpuCmdKind_defaultEncoding_MANAGMENT : `DataCacheCpuCmdKind_defaultEncoding_MEMORY);
  assign _zz_282_ = (execute_MEMORY_MANAGMENT ? execute_INSTRUCTION[28] : 1'b0);
  assign _zz_283_ = (execute_MEMORY_MANAGMENT ? execute_INSTRUCTION[29] : 1'b0);
  assign _zz_284_ = (execute_MEMORY_MANAGMENT ? execute_INSTRUCTION[30] : 1'b0);
  assign _zz_95_ = _zz_280_[1 : 0];
  assign _zz_285_ = (memory_arbitration_isValid && memory_MEMORY_ENABLE);
  assign _zz_123_ = _zz_326_;
  assign _zz_124_ = _zz_327_;
  assign _zz_125_ = _zz_328_;
  assign _zz_286_ = 1'b1;
  assign _zz_287_ = (writeBack_arbitration_isValid && writeBack_MEMORY_ENABLE);
  assign _zz_288_ = (CsrPlugin_privilege == (2'b00));
  assign writeBack_exception_agregat_valid = (((_zz_332_ || _zz_335_) || _zz_333_) || _zz_334_);
  assign writeBack_exception_agregat_payload_badAddr = _zz_336_;
  always @ (*) begin
    writeBack_exception_agregat_payload_code = (4'bxxxx);
    if((_zz_333_ || _zz_335_))begin
      writeBack_exception_agregat_payload_code = (writeBack_MEMORY_WR ? (4'b1111) : (4'b1101));
    end
    if(_zz_334_)begin
      writeBack_exception_agregat_payload_code = {1'd0, _zz_387_};
    end
    if(_zz_332_)begin
      writeBack_exception_agregat_payload_code = (writeBack_MEMORY_WR ? (4'b1111) : (4'b1101));
    end
  end

  always @ (*) begin
    writeBack_DBusCachedPlugin_rspShifted = _zz_331_;
    case(writeBack_MEMORY_ADDRESS_LOW)
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspShifted[7 : 0] = _zz_331_[15 : 8];
      end
      2'b10 : begin
        writeBack_DBusCachedPlugin_rspShifted[15 : 0] = _zz_331_[31 : 16];
      end
      2'b11 : begin
        writeBack_DBusCachedPlugin_rspShifted[7 : 0] = _zz_331_[31 : 24];
      end
      default : begin
      end
    endcase
  end

  assign _zz_164_ = (writeBack_DBusCachedPlugin_rspShifted[7] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_165_[31] = _zz_164_;
    _zz_165_[30] = _zz_164_;
    _zz_165_[29] = _zz_164_;
    _zz_165_[28] = _zz_164_;
    _zz_165_[27] = _zz_164_;
    _zz_165_[26] = _zz_164_;
    _zz_165_[25] = _zz_164_;
    _zz_165_[24] = _zz_164_;
    _zz_165_[23] = _zz_164_;
    _zz_165_[22] = _zz_164_;
    _zz_165_[21] = _zz_164_;
    _zz_165_[20] = _zz_164_;
    _zz_165_[19] = _zz_164_;
    _zz_165_[18] = _zz_164_;
    _zz_165_[17] = _zz_164_;
    _zz_165_[16] = _zz_164_;
    _zz_165_[15] = _zz_164_;
    _zz_165_[14] = _zz_164_;
    _zz_165_[13] = _zz_164_;
    _zz_165_[12] = _zz_164_;
    _zz_165_[11] = _zz_164_;
    _zz_165_[10] = _zz_164_;
    _zz_165_[9] = _zz_164_;
    _zz_165_[8] = _zz_164_;
    _zz_165_[7 : 0] = writeBack_DBusCachedPlugin_rspShifted[7 : 0];
  end

  assign _zz_166_ = (writeBack_DBusCachedPlugin_rspShifted[15] && (! writeBack_INSTRUCTION[14]));
  always @ (*) begin
    _zz_167_[31] = _zz_166_;
    _zz_167_[30] = _zz_166_;
    _zz_167_[29] = _zz_166_;
    _zz_167_[28] = _zz_166_;
    _zz_167_[27] = _zz_166_;
    _zz_167_[26] = _zz_166_;
    _zz_167_[25] = _zz_166_;
    _zz_167_[24] = _zz_166_;
    _zz_167_[23] = _zz_166_;
    _zz_167_[22] = _zz_166_;
    _zz_167_[21] = _zz_166_;
    _zz_167_[20] = _zz_166_;
    _zz_167_[19] = _zz_166_;
    _zz_167_[18] = _zz_166_;
    _zz_167_[17] = _zz_166_;
    _zz_167_[16] = _zz_166_;
    _zz_167_[15 : 0] = writeBack_DBusCachedPlugin_rspShifted[15 : 0];
  end

  always @ (*) begin
    case(_zz_376_)
      2'b00 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_165_;
      end
      2'b01 : begin
        writeBack_DBusCachedPlugin_rspFormated = _zz_167_;
      end
      default : begin
        writeBack_DBusCachedPlugin_rspFormated = writeBack_DBusCachedPlugin_rspShifted;
      end
    endcase
  end

  always @ (*) begin
    MemoryTranslatorPlugin_shared_readAddr = (8'bxxxxxxxx);
    if(MemoryTranslatorPlugin_ports_0_sharedAccessGranted)begin
      MemoryTranslatorPlugin_shared_readAddr = MemoryTranslatorPlugin_ports_0_sharedIterator[7:0];
    end
    if(MemoryTranslatorPlugin_ports_1_sharedAccessGranted)begin
      MemoryTranslatorPlugin_shared_readAddr = MemoryTranslatorPlugin_ports_1_sharedIterator[7:0];
    end
  end

  assign _zz_168_ = _zz_289_;
  assign MemoryTranslatorPlugin_ports_0_cacheHits_0 = (MemoryTranslatorPlugin_ports_0_cache_0_valid && (MemoryTranslatorPlugin_ports_0_cache_0_virtualAddress == _zz_124_[31 : 12]));
  assign MemoryTranslatorPlugin_ports_0_cacheHits_1 = (MemoryTranslatorPlugin_ports_0_cache_1_valid && (MemoryTranslatorPlugin_ports_0_cache_1_virtualAddress == _zz_124_[31 : 12]));
  assign MemoryTranslatorPlugin_ports_0_cacheHits_2 = (MemoryTranslatorPlugin_ports_0_cache_2_valid && (MemoryTranslatorPlugin_ports_0_cache_2_virtualAddress == _zz_124_[31 : 12]));
  assign MemoryTranslatorPlugin_ports_0_cacheHits_3 = (MemoryTranslatorPlugin_ports_0_cache_3_valid && (MemoryTranslatorPlugin_ports_0_cache_3_virtualAddress == _zz_124_[31 : 12]));
  assign MemoryTranslatorPlugin_ports_0_cacheHit = ({MemoryTranslatorPlugin_ports_0_cacheHits_3,{MemoryTranslatorPlugin_ports_0_cacheHits_2,{MemoryTranslatorPlugin_ports_0_cacheHits_1,MemoryTranslatorPlugin_ports_0_cacheHits_0}}} != (4'b0000));
  assign _zz_169_ = (MemoryTranslatorPlugin_ports_0_cacheHits_1 || MemoryTranslatorPlugin_ports_0_cacheHits_3);
  assign _zz_170_ = (MemoryTranslatorPlugin_ports_0_cacheHits_2 || MemoryTranslatorPlugin_ports_0_cacheHits_3);
  assign _zz_171_ = {_zz_170_,_zz_169_};
  assign MemoryTranslatorPlugin_ports_0_cacheLine_valid = _zz_293_;
  assign MemoryTranslatorPlugin_ports_0_cacheLine_virtualAddress = _zz_294_;
  assign MemoryTranslatorPlugin_ports_0_cacheLine_physicalAddress = _zz_295_;
  assign MemoryTranslatorPlugin_ports_0_cacheLine_allowRead = _zz_296_;
  assign MemoryTranslatorPlugin_ports_0_cacheLine_allowWrite = _zz_297_;
  assign MemoryTranslatorPlugin_ports_0_cacheLine_allowExecute = _zz_298_;
  assign MemoryTranslatorPlugin_ports_0_cacheLine_allowUser = _zz_299_;
  assign MemoryTranslatorPlugin_ports_0_isInMmuRange = ((((4'b0000) <= _zz_124_[31 : 28]) && (_zz_124_[31 : 28] <= (4'b1011))) && (! _zz_125_));
  assign MemoryTranslatorPlugin_ports_0_isInKernelRange = ((_zz_124_[31 : 28] == (4'b1100)) && (! _zz_125_));
  always @ (*) begin
    MemoryTranslatorPlugin_ports_0_entryToReplace_willIncrement = 1'b0;
    if(_zz_369_)begin
      if(_zz_370_)begin
        MemoryTranslatorPlugin_ports_0_entryToReplace_willIncrement = 1'b1;
      end
    end
  end

  assign MemoryTranslatorPlugin_ports_0_entryToReplace_willClear = 1'b0;
  assign MemoryTranslatorPlugin_ports_0_entryToReplace_willOverflowIfInc = (MemoryTranslatorPlugin_ports_0_entryToReplace_value == (2'b11));
  assign MemoryTranslatorPlugin_ports_0_entryToReplace_willOverflow = (MemoryTranslatorPlugin_ports_0_entryToReplace_willOverflowIfInc && MemoryTranslatorPlugin_ports_0_entryToReplace_willIncrement);
  always @ (*) begin
    MemoryTranslatorPlugin_ports_0_entryToReplace_valueNext = (MemoryTranslatorPlugin_ports_0_entryToReplace_value + _zz_394_);
    if(MemoryTranslatorPlugin_ports_0_entryToReplace_willClear)begin
      MemoryTranslatorPlugin_ports_0_entryToReplace_valueNext = (2'b00);
    end
  end

  assign MemoryTranslatorPlugin_ports_0_sharedAccessGranted = (MemoryTranslatorPlugin_ports_0_sharedAccessAsked && 1'b1);
  assign _zz_172_ = ({3'd0,(1'b1)} <<< MemoryTranslatorPlugin_ports_0_entryToReplace_value);
  assign _zz_173_ = _zz_172_[0];
  assign _zz_174_ = _zz_172_[1];
  assign _zz_175_ = _zz_172_[2];
  assign _zz_176_ = _zz_172_[3];
  always @ (*) begin
    if(MemoryTranslatorPlugin_ports_0_isInKernelRange)begin
      _zz_126_[31 : 28] = (4'b0100);
      _zz_126_[27 : 0] = _zz_124_[27 : 0];
      _zz_127_ = 1'b1;
      _zz_128_ = 1'b1;
      _zz_129_ = 1'b1;
      _zz_130_ = 1'b0;
      _zz_132_ = 1'b1;
    end else begin
      if((MemoryTranslatorPlugin_ports_0_isInMmuRange && MemoryTranslatorPlugin_mmuEnabled))begin
        _zz_126_ = {MemoryTranslatorPlugin_ports_0_cacheLine_physicalAddress,_zz_124_[11 : 0]};
        _zz_127_ = MemoryTranslatorPlugin_ports_0_cacheLine_allowRead;
        _zz_128_ = MemoryTranslatorPlugin_ports_0_cacheLine_allowWrite;
        _zz_129_ = MemoryTranslatorPlugin_ports_0_cacheLine_allowExecute;
        _zz_130_ = MemoryTranslatorPlugin_ports_0_cacheLine_allowUser;
        _zz_132_ = MemoryTranslatorPlugin_ports_0_cacheHit;
      end else begin
        _zz_126_ = _zz_124_;
        _zz_127_ = 1'b1;
        _zz_128_ = 1'b1;
        _zz_129_ = 1'b1;
        _zz_130_ = 1'b1;
        _zz_132_ = 1'b1;
      end
    end
  end

  assign _zz_131_ = MemoryTranslatorPlugin_ports_0_sharedMiss;
  assign MemoryTranslatorPlugin_ports_1_cacheHits_0 = (MemoryTranslatorPlugin_ports_1_cache_0_valid && (MemoryTranslatorPlugin_ports_1_cache_0_virtualAddress == _zz_114_[31 : 12]));
  assign MemoryTranslatorPlugin_ports_1_cacheHits_1 = (MemoryTranslatorPlugin_ports_1_cache_1_valid && (MemoryTranslatorPlugin_ports_1_cache_1_virtualAddress == _zz_114_[31 : 12]));
  assign MemoryTranslatorPlugin_ports_1_cacheHits_2 = (MemoryTranslatorPlugin_ports_1_cache_2_valid && (MemoryTranslatorPlugin_ports_1_cache_2_virtualAddress == _zz_114_[31 : 12]));
  assign MemoryTranslatorPlugin_ports_1_cacheHits_3 = (MemoryTranslatorPlugin_ports_1_cache_3_valid && (MemoryTranslatorPlugin_ports_1_cache_3_virtualAddress == _zz_114_[31 : 12]));
  assign MemoryTranslatorPlugin_ports_1_cacheHit = ({MemoryTranslatorPlugin_ports_1_cacheHits_3,{MemoryTranslatorPlugin_ports_1_cacheHits_2,{MemoryTranslatorPlugin_ports_1_cacheHits_1,MemoryTranslatorPlugin_ports_1_cacheHits_0}}} != (4'b0000));
  assign _zz_177_ = (MemoryTranslatorPlugin_ports_1_cacheHits_1 || MemoryTranslatorPlugin_ports_1_cacheHits_3);
  assign _zz_178_ = (MemoryTranslatorPlugin_ports_1_cacheHits_2 || MemoryTranslatorPlugin_ports_1_cacheHits_3);
  assign _zz_179_ = {_zz_178_,_zz_177_};
  assign MemoryTranslatorPlugin_ports_1_cacheLine_valid = _zz_300_;
  assign MemoryTranslatorPlugin_ports_1_cacheLine_virtualAddress = _zz_301_;
  assign MemoryTranslatorPlugin_ports_1_cacheLine_physicalAddress = _zz_302_;
  assign MemoryTranslatorPlugin_ports_1_cacheLine_allowRead = _zz_303_;
  assign MemoryTranslatorPlugin_ports_1_cacheLine_allowWrite = _zz_304_;
  assign MemoryTranslatorPlugin_ports_1_cacheLine_allowExecute = _zz_305_;
  assign MemoryTranslatorPlugin_ports_1_cacheLine_allowUser = _zz_306_;
  assign MemoryTranslatorPlugin_ports_1_isInMmuRange = ((((4'b0000) <= _zz_114_[31 : 28]) && (_zz_114_[31 : 28] <= (4'b1011))) && (! _zz_115_));
  assign MemoryTranslatorPlugin_ports_1_isInKernelRange = ((_zz_114_[31 : 28] == (4'b1100)) && (! _zz_115_));
  always @ (*) begin
    MemoryTranslatorPlugin_ports_1_entryToReplace_willIncrement = 1'b0;
    if(_zz_371_)begin
      if(_zz_372_)begin
        MemoryTranslatorPlugin_ports_1_entryToReplace_willIncrement = 1'b1;
      end
    end
  end

  assign MemoryTranslatorPlugin_ports_1_entryToReplace_willClear = 1'b0;
  assign MemoryTranslatorPlugin_ports_1_entryToReplace_willOverflowIfInc = (MemoryTranslatorPlugin_ports_1_entryToReplace_value == (2'b11));
  assign MemoryTranslatorPlugin_ports_1_entryToReplace_willOverflow = (MemoryTranslatorPlugin_ports_1_entryToReplace_willOverflowIfInc && MemoryTranslatorPlugin_ports_1_entryToReplace_willIncrement);
  always @ (*) begin
    MemoryTranslatorPlugin_ports_1_entryToReplace_valueNext = (MemoryTranslatorPlugin_ports_1_entryToReplace_value + _zz_397_);
    if(MemoryTranslatorPlugin_ports_1_entryToReplace_willClear)begin
      MemoryTranslatorPlugin_ports_1_entryToReplace_valueNext = (2'b00);
    end
  end

  assign MemoryTranslatorPlugin_ports_1_sharedAccessGranted = (MemoryTranslatorPlugin_ports_1_sharedAccessAsked && _zz_93_);
  assign _zz_180_ = ({3'd0,(1'b1)} <<< MemoryTranslatorPlugin_ports_1_entryToReplace_value);
  assign _zz_181_ = _zz_180_[0];
  assign _zz_182_ = _zz_180_[1];
  assign _zz_183_ = _zz_180_[2];
  assign _zz_184_ = _zz_180_[3];
  always @ (*) begin
    if(MemoryTranslatorPlugin_ports_1_isInKernelRange)begin
      _zz_116_[31 : 28] = (4'b0100);
      _zz_116_[27 : 0] = _zz_114_[27 : 0];
      _zz_117_ = 1'b1;
      _zz_118_ = 1'b1;
      _zz_119_ = 1'b1;
      _zz_120_ = 1'b0;
      _zz_122_ = 1'b1;
    end else begin
      if((MemoryTranslatorPlugin_ports_1_isInMmuRange && MemoryTranslatorPlugin_mmuEnabled))begin
        _zz_116_ = {MemoryTranslatorPlugin_ports_1_cacheLine_physicalAddress,_zz_114_[11 : 0]};
        _zz_117_ = MemoryTranslatorPlugin_ports_1_cacheLine_allowRead;
        _zz_118_ = MemoryTranslatorPlugin_ports_1_cacheLine_allowWrite;
        _zz_119_ = MemoryTranslatorPlugin_ports_1_cacheLine_allowExecute;
        _zz_120_ = MemoryTranslatorPlugin_ports_1_cacheLine_allowUser;
        _zz_122_ = MemoryTranslatorPlugin_ports_1_cacheHit;
      end else begin
        _zz_116_ = _zz_114_;
        _zz_117_ = 1'b1;
        _zz_118_ = 1'b1;
        _zz_119_ = 1'b1;
        _zz_120_ = 1'b1;
        _zz_122_ = 1'b1;
      end
    end
  end

  assign _zz_121_ = MemoryTranslatorPlugin_ports_1_sharedMiss;
  assign _zz_186_ = ((decode_INSTRUCTION & (32'b00000000000000000000000000101000)) == (32'b00000000000000000000000000000000));
  assign _zz_187_ = ((decode_INSTRUCTION & (32'b00000000000000000000000000001100)) == (32'b00000000000000000000000000000100));
  assign _zz_188_ = ((decode_INSTRUCTION & (32'b00000000000000000000000001001000)) == (32'b00000000000000000000000001001000));
  assign _zz_189_ = ((decode_INSTRUCTION & (32'b00000000000000000001000000000000)) == (32'b00000000000000000000000000000000));
  assign _zz_190_ = ((decode_INSTRUCTION & (32'b00000000000000000000000001000100)) == (32'b00000000000000000000000001000000));
  assign _zz_191_ = ((decode_INSTRUCTION & (32'b00000000000000000000000000000100)) == (32'b00000000000000000000000000000100));
  assign _zz_192_ = ((decode_INSTRUCTION & (32'b00000000000000000100000001010000)) == (32'b00000000000000000100000001010000));
  assign _zz_193_ = ((decode_INSTRUCTION & (32'b00000000000000000000000001000000)) == (32'b00000000000000000000000001000000));
  assign _zz_185_ = {({_zz_188_,{_zz_187_,_zz_501_}} != (3'b000)),{({_zz_188_,{_zz_502_,_zz_503_}} != (3'b000)),{(_zz_504_ != (1'b0)),{(_zz_505_ != _zz_506_),{_zz_507_,{_zz_508_,_zz_509_}}}}}};
  assign _zz_91_ = ({((decode_INSTRUCTION & (32'b00000000000000000000000001011111)) == (32'b00000000000000000000000000010111)),{((decode_INSTRUCTION & (32'b00000000000000000000000001111111)) == (32'b00000000000000000000000001101111)),{((decode_INSTRUCTION & (32'b00000000000000000001000001101111)) == (32'b00000000000000000000000000000011)),{((decode_INSTRUCTION & _zz_689_) == (32'b00000000000000000001000001110011)),{(_zz_690_ == _zz_691_),{_zz_692_,{_zz_693_,_zz_694_}}}}}}} != (24'b000000000000000000000000));
  assign _zz_90_ = _zz_400_[0];
  assign _zz_89_ = _zz_401_[0];
  assign _zz_88_ = _zz_402_[0];
  assign _zz_87_ = _zz_403_[0];
  assign _zz_86_ = _zz_404_[0];
  assign _zz_85_ = _zz_405_[0];
  assign _zz_84_ = _zz_406_[0];
  assign _zz_83_ = _zz_407_[0];
  assign _zz_194_ = _zz_185_[10 : 9];
  assign _zz_82_ = _zz_194_;
  assign _zz_81_ = _zz_408_[0];
  assign _zz_80_ = _zz_409_[0];
  assign _zz_79_ = _zz_410_[0];
  assign _zz_78_ = _zz_411_[0];
  assign _zz_77_ = _zz_412_[0];
  assign _zz_76_ = _zz_413_[0];
  assign _zz_195_ = _zz_185_[18 : 17];
  assign _zz_75_ = _zz_195_;
  assign _zz_196_ = _zz_185_[20 : 19];
  assign _zz_74_ = _zz_196_;
  assign _zz_73_ = _zz_414_[0];
  assign _zz_72_ = _zz_415_[0];
  assign _zz_71_ = _zz_416_[0];
  assign _zz_70_ = _zz_417_[0];
  assign _zz_197_ = _zz_185_[26 : 25];
  assign _zz_69_ = _zz_197_;
  assign _zz_198_ = _zz_185_[28 : 27];
  assign _zz_68_ = _zz_198_;
  assign _zz_199_ = _zz_185_[30 : 29];
  assign _zz_67_ = _zz_199_;
  assign _zz_66_ = _zz_418_[0];
  assign _zz_200_ = _zz_185_[33 : 32];
  assign _zz_65_ = _zz_200_;
  always @ (*) begin
    if((decode_INSTRUCTION == (32'b00000000000000000000000001110011)))begin
      decodeExceptionPort_valid = (decode_arbitration_isValid && decode_INSTRUCTION_READY);
      decodeExceptionPort_1_code = (4'b1011);
      decodeExceptionPort_1_badAddr = decode_PC;
    end else begin
      decodeExceptionPort_valid = ((decode_arbitration_isValid && decode_INSTRUCTION_READY) && (! decode_LEGAL_INSTRUCTION));
      decodeExceptionPort_1_code = (4'b0010);
      decodeExceptionPort_1_badAddr = (32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
    end
  end

  assign decode_RegFilePlugin_regFileReadAddress1 = decode_INSTRUCTION_ANTICIPATED[19 : 15];
  assign decode_RegFilePlugin_regFileReadAddress2 = decode_INSTRUCTION_ANTICIPATED[24 : 20];
  assign decode_RegFilePlugin_rs1Data = _zz_290_;
  assign decode_RegFilePlugin_rs2Data = _zz_291_;
  assign _zz_64_ = decode_RegFilePlugin_rs1Data;
  assign _zz_63_ = decode_RegFilePlugin_rs2Data;
  always @ (*) begin
    writeBack_RegFilePlugin_regFileWrite_valid = (_zz_61_ && writeBack_arbitration_isFiring);
    if(_zz_201_)begin
      writeBack_RegFilePlugin_regFileWrite_valid = 1'b1;
    end
  end

  assign writeBack_RegFilePlugin_regFileWrite_payload_address = _zz_60_[11 : 7];
  assign writeBack_RegFilePlugin_regFileWrite_payload_data = _zz_94_;
  always @ (*) begin
    case(execute_ALU_BITWISE_CTRL)
      `AluBitwiseCtrlEnum_defaultEncoding_AND_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 & execute_SRC2);
      end
      `AluBitwiseCtrlEnum_defaultEncoding_OR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 | execute_SRC2);
      end
      `AluBitwiseCtrlEnum_defaultEncoding_XOR_1 : begin
        execute_IntAluPlugin_bitwise = (execute_SRC1 ^ execute_SRC2);
      end
      default : begin
        execute_IntAluPlugin_bitwise = execute_SRC1;
      end
    endcase
  end

  always @ (*) begin
    case(execute_ALU_CTRL)
      `AluCtrlEnum_defaultEncoding_BITWISE : begin
        _zz_202_ = execute_IntAluPlugin_bitwise;
      end
      `AluCtrlEnum_defaultEncoding_SLT_SLTU : begin
        _zz_202_ = {31'd0, _zz_419_};
      end
      default : begin
        _zz_202_ = execute_SRC_ADD_SUB;
      end
    endcase
  end

  assign _zz_58_ = _zz_202_;
  always @ (*) begin
    case(execute_SRC1_CTRL)
      `Src1CtrlEnum_defaultEncoding_RS : begin
        _zz_203_ = execute_RS1;
      end
      `Src1CtrlEnum_defaultEncoding_PC_INCREMENT : begin
        _zz_203_ = {29'd0, _zz_420_};
      end
      `Src1CtrlEnum_defaultEncoding_IMU : begin
        _zz_203_ = {execute_INSTRUCTION[31 : 12],(12'b000000000000)};
      end
      default : begin
        _zz_203_ = {27'd0, _zz_421_};
      end
    endcase
  end

  assign _zz_56_ = _zz_203_;
  assign _zz_204_ = _zz_422_[11];
  always @ (*) begin
    _zz_205_[19] = _zz_204_;
    _zz_205_[18] = _zz_204_;
    _zz_205_[17] = _zz_204_;
    _zz_205_[16] = _zz_204_;
    _zz_205_[15] = _zz_204_;
    _zz_205_[14] = _zz_204_;
    _zz_205_[13] = _zz_204_;
    _zz_205_[12] = _zz_204_;
    _zz_205_[11] = _zz_204_;
    _zz_205_[10] = _zz_204_;
    _zz_205_[9] = _zz_204_;
    _zz_205_[8] = _zz_204_;
    _zz_205_[7] = _zz_204_;
    _zz_205_[6] = _zz_204_;
    _zz_205_[5] = _zz_204_;
    _zz_205_[4] = _zz_204_;
    _zz_205_[3] = _zz_204_;
    _zz_205_[2] = _zz_204_;
    _zz_205_[1] = _zz_204_;
    _zz_205_[0] = _zz_204_;
  end

  assign _zz_206_ = _zz_423_[11];
  always @ (*) begin
    _zz_207_[19] = _zz_206_;
    _zz_207_[18] = _zz_206_;
    _zz_207_[17] = _zz_206_;
    _zz_207_[16] = _zz_206_;
    _zz_207_[15] = _zz_206_;
    _zz_207_[14] = _zz_206_;
    _zz_207_[13] = _zz_206_;
    _zz_207_[12] = _zz_206_;
    _zz_207_[11] = _zz_206_;
    _zz_207_[10] = _zz_206_;
    _zz_207_[9] = _zz_206_;
    _zz_207_[8] = _zz_206_;
    _zz_207_[7] = _zz_206_;
    _zz_207_[6] = _zz_206_;
    _zz_207_[5] = _zz_206_;
    _zz_207_[4] = _zz_206_;
    _zz_207_[3] = _zz_206_;
    _zz_207_[2] = _zz_206_;
    _zz_207_[1] = _zz_206_;
    _zz_207_[0] = _zz_206_;
  end

  always @ (*) begin
    case(execute_SRC2_CTRL)
      `Src2CtrlEnum_defaultEncoding_RS : begin
        _zz_208_ = execute_RS2;
      end
      `Src2CtrlEnum_defaultEncoding_IMI : begin
        _zz_208_ = {_zz_205_,execute_INSTRUCTION[31 : 20]};
      end
      `Src2CtrlEnum_defaultEncoding_IMS : begin
        _zz_208_ = {_zz_207_,{execute_INSTRUCTION[31 : 25],execute_INSTRUCTION[11 : 7]}};
      end
      default : begin
        _zz_208_ = _zz_52_;
      end
    endcase
  end

  assign _zz_54_ = _zz_208_;
  assign execute_SrcPlugin_addSub = _zz_424_;
  assign execute_SrcPlugin_less = ((execute_SRC1[31] == execute_SRC2[31]) ? execute_SrcPlugin_addSub[31] : (execute_SRC_LESS_UNSIGNED ? execute_SRC2[31] : execute_SRC1[31]));
  assign _zz_51_ = execute_SrcPlugin_addSub;
  assign _zz_50_ = execute_SrcPlugin_addSub;
  assign _zz_49_ = execute_SrcPlugin_less;
  assign execute_FullBarrelShifterPlugin_amplitude = execute_SRC2[4 : 0];
  always @ (*) begin
    _zz_209_[0] = execute_SRC1[31];
    _zz_209_[1] = execute_SRC1[30];
    _zz_209_[2] = execute_SRC1[29];
    _zz_209_[3] = execute_SRC1[28];
    _zz_209_[4] = execute_SRC1[27];
    _zz_209_[5] = execute_SRC1[26];
    _zz_209_[6] = execute_SRC1[25];
    _zz_209_[7] = execute_SRC1[24];
    _zz_209_[8] = execute_SRC1[23];
    _zz_209_[9] = execute_SRC1[22];
    _zz_209_[10] = execute_SRC1[21];
    _zz_209_[11] = execute_SRC1[20];
    _zz_209_[12] = execute_SRC1[19];
    _zz_209_[13] = execute_SRC1[18];
    _zz_209_[14] = execute_SRC1[17];
    _zz_209_[15] = execute_SRC1[16];
    _zz_209_[16] = execute_SRC1[15];
    _zz_209_[17] = execute_SRC1[14];
    _zz_209_[18] = execute_SRC1[13];
    _zz_209_[19] = execute_SRC1[12];
    _zz_209_[20] = execute_SRC1[11];
    _zz_209_[21] = execute_SRC1[10];
    _zz_209_[22] = execute_SRC1[9];
    _zz_209_[23] = execute_SRC1[8];
    _zz_209_[24] = execute_SRC1[7];
    _zz_209_[25] = execute_SRC1[6];
    _zz_209_[26] = execute_SRC1[5];
    _zz_209_[27] = execute_SRC1[4];
    _zz_209_[28] = execute_SRC1[3];
    _zz_209_[29] = execute_SRC1[2];
    _zz_209_[30] = execute_SRC1[1];
    _zz_209_[31] = execute_SRC1[0];
  end

  assign execute_FullBarrelShifterPlugin_reversed = ((execute_SHIFT_CTRL == `ShiftCtrlEnum_defaultEncoding_SLL_1) ? _zz_209_ : execute_SRC1);
  assign _zz_47_ = _zz_433_;
  always @ (*) begin
    _zz_210_[0] = memory_SHIFT_RIGHT[31];
    _zz_210_[1] = memory_SHIFT_RIGHT[30];
    _zz_210_[2] = memory_SHIFT_RIGHT[29];
    _zz_210_[3] = memory_SHIFT_RIGHT[28];
    _zz_210_[4] = memory_SHIFT_RIGHT[27];
    _zz_210_[5] = memory_SHIFT_RIGHT[26];
    _zz_210_[6] = memory_SHIFT_RIGHT[25];
    _zz_210_[7] = memory_SHIFT_RIGHT[24];
    _zz_210_[8] = memory_SHIFT_RIGHT[23];
    _zz_210_[9] = memory_SHIFT_RIGHT[22];
    _zz_210_[10] = memory_SHIFT_RIGHT[21];
    _zz_210_[11] = memory_SHIFT_RIGHT[20];
    _zz_210_[12] = memory_SHIFT_RIGHT[19];
    _zz_210_[13] = memory_SHIFT_RIGHT[18];
    _zz_210_[14] = memory_SHIFT_RIGHT[17];
    _zz_210_[15] = memory_SHIFT_RIGHT[16];
    _zz_210_[16] = memory_SHIFT_RIGHT[15];
    _zz_210_[17] = memory_SHIFT_RIGHT[14];
    _zz_210_[18] = memory_SHIFT_RIGHT[13];
    _zz_210_[19] = memory_SHIFT_RIGHT[12];
    _zz_210_[20] = memory_SHIFT_RIGHT[11];
    _zz_210_[21] = memory_SHIFT_RIGHT[10];
    _zz_210_[22] = memory_SHIFT_RIGHT[9];
    _zz_210_[23] = memory_SHIFT_RIGHT[8];
    _zz_210_[24] = memory_SHIFT_RIGHT[7];
    _zz_210_[25] = memory_SHIFT_RIGHT[6];
    _zz_210_[26] = memory_SHIFT_RIGHT[5];
    _zz_210_[27] = memory_SHIFT_RIGHT[4];
    _zz_210_[28] = memory_SHIFT_RIGHT[3];
    _zz_210_[29] = memory_SHIFT_RIGHT[2];
    _zz_210_[30] = memory_SHIFT_RIGHT[1];
    _zz_210_[31] = memory_SHIFT_RIGHT[0];
  end

  assign execute_MulPlugin_a = execute_SRC1;
  assign execute_MulPlugin_b = execute_SRC2;
  always @ (*) begin
    case(_zz_377_)
      2'b01 : begin
        execute_MulPlugin_aSigned = 1'b1;
        execute_MulPlugin_bSigned = 1'b1;
      end
      2'b10 : begin
        execute_MulPlugin_aSigned = 1'b1;
        execute_MulPlugin_bSigned = 1'b0;
      end
      default : begin
        execute_MulPlugin_aSigned = 1'b0;
        execute_MulPlugin_bSigned = 1'b0;
      end
    endcase
  end

  assign execute_MulPlugin_aULow = execute_MulPlugin_a[15 : 0];
  assign execute_MulPlugin_bULow = execute_MulPlugin_b[15 : 0];
  assign execute_MulPlugin_aSLow = {1'b0,execute_MulPlugin_a[15 : 0]};
  assign execute_MulPlugin_bSLow = {1'b0,execute_MulPlugin_b[15 : 0]};
  assign execute_MulPlugin_aHigh = {(execute_MulPlugin_aSigned && execute_MulPlugin_a[31]),execute_MulPlugin_a[31 : 16]};
  assign execute_MulPlugin_bHigh = {(execute_MulPlugin_bSigned && execute_MulPlugin_b[31]),execute_MulPlugin_b[31 : 16]};
  assign _zz_44_ = (execute_MulPlugin_aULow * execute_MulPlugin_bULow);
  assign _zz_43_ = ($signed(execute_MulPlugin_aSLow) * $signed(execute_MulPlugin_bHigh));
  assign _zz_42_ = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bSLow));
  assign _zz_41_ = ($signed(execute_MulPlugin_aHigh) * $signed(execute_MulPlugin_bHigh));
  assign _zz_40_ = ($signed(_zz_435_) + $signed(_zz_443_));
  assign writeBack_MulPlugin_result = ($signed(_zz_444_) + $signed(_zz_445_));
  always @ (*) begin
    memory_DivPlugin_div_counter_willClear = 1'b0;
    if(_zz_373_)begin
      memory_DivPlugin_div_counter_willClear = 1'b1;
    end
  end

  assign memory_DivPlugin_div_willOverflowIfInc = (memory_DivPlugin_div_counter_value == (6'b100001));
  assign memory_DivPlugin_div_counter_willOverflow = (memory_DivPlugin_div_willOverflowIfInc && memory_DivPlugin_div_counter_willIncrement);
  always @ (*) begin
    if(memory_DivPlugin_div_counter_willOverflow)begin
      memory_DivPlugin_div_counter_valueNext = (6'b000000);
    end else begin
      memory_DivPlugin_div_counter_valueNext = (memory_DivPlugin_div_counter_value + _zz_449_);
    end
    if(memory_DivPlugin_div_counter_willClear)begin
      memory_DivPlugin_div_counter_valueNext = (6'b000000);
    end
  end

  assign _zz_211_ = memory_DivPlugin_rs1[31 : 0];
  assign _zz_212_ = {memory_DivPlugin_accumulator[31 : 0],_zz_211_[31]};
  assign _zz_213_ = (_zz_212_ - _zz_450_);
  assign _zz_214_ = (memory_INSTRUCTION[13] ? memory_DivPlugin_accumulator[31 : 0] : memory_DivPlugin_rs1[31 : 0]);
  assign _zz_215_ = (execute_RS2[31] && execute_IS_RS2_SIGNED);
  assign _zz_216_ = (1'b0 || ((execute_IS_DIV && execute_RS1[31]) && execute_IS_RS1_SIGNED));
  always @ (*) begin
    _zz_217_[32] = (execute_IS_RS1_SIGNED && execute_RS1[31]);
    _zz_217_[31 : 0] = execute_RS1;
  end

  always @ (*) begin
    _zz_218_ = 1'b0;
    _zz_219_ = 1'b0;
    if((writeBack_arbitration_isValid && writeBack_REGFILE_WRITE_VALID))begin
      if((1'b0 || (! 1'b1)))begin
        if(_zz_224_)begin
          _zz_218_ = 1'b1;
        end
        if(_zz_225_)begin
          _zz_219_ = 1'b1;
        end
      end
    end
    if((memory_arbitration_isValid && memory_REGFILE_WRITE_VALID))begin
      if((1'b0 || (! memory_BYPASSABLE_MEMORY_STAGE)))begin
        if(_zz_226_)begin
          _zz_218_ = 1'b1;
        end
        if(_zz_227_)begin
          _zz_219_ = 1'b1;
        end
      end
    end
    if((execute_arbitration_isValid && execute_REGFILE_WRITE_VALID))begin
      if((1'b0 || (! execute_BYPASSABLE_EXECUTE_STAGE)))begin
        if(_zz_228_)begin
          _zz_218_ = 1'b1;
        end
        if(_zz_229_)begin
          _zz_219_ = 1'b1;
        end
      end
    end
    if((! decode_RS1_USE))begin
      _zz_218_ = 1'b0;
    end
    if((! decode_RS2_USE))begin
      _zz_219_ = 1'b0;
    end
  end

  assign _zz_220_ = (_zz_61_ && writeBack_arbitration_isFiring);
  assign _zz_224_ = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_225_ = (writeBack_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_226_ = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_227_ = (memory_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_228_ = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[19 : 15]);
  assign _zz_229_ = (execute_INSTRUCTION[11 : 7] == decode_INSTRUCTION[24 : 20]);
  assign _zz_38_ = (_zz_109_ && (! decode_IS_FENCEI));
  assign execute_BranchPlugin_eq = (execute_SRC1 == execute_SRC2);
  assign _zz_230_ = execute_INSTRUCTION[14 : 12];
  always @ (*) begin
    if((_zz_230_ == (3'b000))) begin
        _zz_231_ = execute_BranchPlugin_eq;
    end else if((_zz_230_ == (3'b001))) begin
        _zz_231_ = (! execute_BranchPlugin_eq);
    end else if((((_zz_230_ & (3'b101)) == (3'b101)))) begin
        _zz_231_ = (! execute_SRC_LESS);
    end else begin
        _zz_231_ = execute_SRC_LESS;
    end
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_INC : begin
        _zz_232_ = 1'b0;
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_232_ = 1'b1;
      end
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_232_ = 1'b1;
      end
      default : begin
        _zz_232_ = _zz_231_;
      end
    endcase
  end

  assign _zz_37_ = _zz_232_;
  assign _zz_233_ = _zz_463_[11];
  always @ (*) begin
    _zz_234_[19] = _zz_233_;
    _zz_234_[18] = _zz_233_;
    _zz_234_[17] = _zz_233_;
    _zz_234_[16] = _zz_233_;
    _zz_234_[15] = _zz_233_;
    _zz_234_[14] = _zz_233_;
    _zz_234_[13] = _zz_233_;
    _zz_234_[12] = _zz_233_;
    _zz_234_[11] = _zz_233_;
    _zz_234_[10] = _zz_233_;
    _zz_234_[9] = _zz_233_;
    _zz_234_[8] = _zz_233_;
    _zz_234_[7] = _zz_233_;
    _zz_234_[6] = _zz_233_;
    _zz_234_[5] = _zz_233_;
    _zz_234_[4] = _zz_233_;
    _zz_234_[3] = _zz_233_;
    _zz_234_[2] = _zz_233_;
    _zz_234_[1] = _zz_233_;
    _zz_234_[0] = _zz_233_;
  end

  assign _zz_235_ = _zz_464_[19];
  always @ (*) begin
    _zz_236_[10] = _zz_235_;
    _zz_236_[9] = _zz_235_;
    _zz_236_[8] = _zz_235_;
    _zz_236_[7] = _zz_235_;
    _zz_236_[6] = _zz_235_;
    _zz_236_[5] = _zz_235_;
    _zz_236_[4] = _zz_235_;
    _zz_236_[3] = _zz_235_;
    _zz_236_[2] = _zz_235_;
    _zz_236_[1] = _zz_235_;
    _zz_236_[0] = _zz_235_;
  end

  assign _zz_237_ = _zz_465_[11];
  always @ (*) begin
    _zz_238_[18] = _zz_237_;
    _zz_238_[17] = _zz_237_;
    _zz_238_[16] = _zz_237_;
    _zz_238_[15] = _zz_237_;
    _zz_238_[14] = _zz_237_;
    _zz_238_[13] = _zz_237_;
    _zz_238_[12] = _zz_237_;
    _zz_238_[11] = _zz_237_;
    _zz_238_[10] = _zz_237_;
    _zz_238_[9] = _zz_237_;
    _zz_238_[8] = _zz_237_;
    _zz_238_[7] = _zz_237_;
    _zz_238_[6] = _zz_237_;
    _zz_238_[5] = _zz_237_;
    _zz_238_[4] = _zz_237_;
    _zz_238_[3] = _zz_237_;
    _zz_238_[2] = _zz_237_;
    _zz_238_[1] = _zz_237_;
    _zz_238_[0] = _zz_237_;
  end

  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        _zz_239_ = (_zz_466_[1] ^ execute_RS1[1]);
      end
      `BranchCtrlEnum_defaultEncoding_JAL : begin
        _zz_239_ = _zz_467_[1];
      end
      default : begin
        _zz_239_ = _zz_468_[1];
      end
    endcase
  end

  assign execute_BranchPlugin_missAlignedTarget = (execute_BRANCH_COND_RESULT && _zz_239_);
  assign _zz_35_ = ((execute_PREDICTION_HAD_BRANCHED2 != execute_BRANCH_COND_RESULT) || execute_BranchPlugin_missAlignedTarget);
  always @ (*) begin
    case(execute_BRANCH_CTRL)
      `BranchCtrlEnum_defaultEncoding_JALR : begin
        execute_BranchPlugin_branch_src1 = execute_RS1;
        execute_BranchPlugin_branch_src2 = {_zz_241_,execute_INSTRUCTION[31 : 20]};
      end
      default : begin
        execute_BranchPlugin_branch_src1 = execute_PC;
        execute_BranchPlugin_branch_src2 = ((execute_BRANCH_CTRL == `BranchCtrlEnum_defaultEncoding_JAL) ? {{_zz_243_,{{{_zz_712_,execute_INSTRUCTION[19 : 12]},execute_INSTRUCTION[20]},execute_INSTRUCTION[30 : 21]}},1'b0} : {{_zz_245_,{{{_zz_713_,_zz_714_},execute_INSTRUCTION[30 : 25]},execute_INSTRUCTION[11 : 8]}},1'b0});
        if((execute_PREDICTION_HAD_BRANCHED2 && (! execute_BranchPlugin_missAlignedTarget)))begin
          execute_BranchPlugin_branch_src2 = {29'd0, _zz_472_};
        end
      end
    endcase
  end

  assign _zz_240_ = _zz_469_[11];
  always @ (*) begin
    _zz_241_[19] = _zz_240_;
    _zz_241_[18] = _zz_240_;
    _zz_241_[17] = _zz_240_;
    _zz_241_[16] = _zz_240_;
    _zz_241_[15] = _zz_240_;
    _zz_241_[14] = _zz_240_;
    _zz_241_[13] = _zz_240_;
    _zz_241_[12] = _zz_240_;
    _zz_241_[11] = _zz_240_;
    _zz_241_[10] = _zz_240_;
    _zz_241_[9] = _zz_240_;
    _zz_241_[8] = _zz_240_;
    _zz_241_[7] = _zz_240_;
    _zz_241_[6] = _zz_240_;
    _zz_241_[5] = _zz_240_;
    _zz_241_[4] = _zz_240_;
    _zz_241_[3] = _zz_240_;
    _zz_241_[2] = _zz_240_;
    _zz_241_[1] = _zz_240_;
    _zz_241_[0] = _zz_240_;
  end

  assign _zz_242_ = _zz_470_[19];
  always @ (*) begin
    _zz_243_[10] = _zz_242_;
    _zz_243_[9] = _zz_242_;
    _zz_243_[8] = _zz_242_;
    _zz_243_[7] = _zz_242_;
    _zz_243_[6] = _zz_242_;
    _zz_243_[5] = _zz_242_;
    _zz_243_[4] = _zz_242_;
    _zz_243_[3] = _zz_242_;
    _zz_243_[2] = _zz_242_;
    _zz_243_[1] = _zz_242_;
    _zz_243_[0] = _zz_242_;
  end

  assign _zz_244_ = _zz_471_[11];
  always @ (*) begin
    _zz_245_[18] = _zz_244_;
    _zz_245_[17] = _zz_244_;
    _zz_245_[16] = _zz_244_;
    _zz_245_[15] = _zz_244_;
    _zz_245_[14] = _zz_244_;
    _zz_245_[13] = _zz_244_;
    _zz_245_[12] = _zz_244_;
    _zz_245_[11] = _zz_244_;
    _zz_245_[10] = _zz_244_;
    _zz_245_[9] = _zz_244_;
    _zz_245_[8] = _zz_244_;
    _zz_245_[7] = _zz_244_;
    _zz_245_[6] = _zz_244_;
    _zz_245_[5] = _zz_244_;
    _zz_245_[4] = _zz_244_;
    _zz_245_[3] = _zz_244_;
    _zz_245_[2] = _zz_244_;
    _zz_245_[1] = _zz_244_;
    _zz_245_[0] = _zz_244_;
  end

  assign execute_BranchPlugin_branchAdder = (execute_BranchPlugin_branch_src1 + execute_BranchPlugin_branch_src2);
  assign _zz_34_ = {execute_BranchPlugin_branchAdder[31 : 1],(1'b0)};
  assign _zz_133_ = (memory_BRANCH_DO && memory_arbitration_isFiring);
  assign _zz_134_ = memory_BRANCH_CALC;
  assign memory_exception_agregat_valid = (memory_arbitration_isValid && (memory_BRANCH_DO && memory_BRANCH_CALC[1]));
  assign memory_exception_agregat_payload_code = (4'b0000);
  assign memory_exception_agregat_payload_badAddr = memory_BRANCH_CALC;
  assign CsrPlugin_misa_base = (2'b01);
  assign CsrPlugin_misa_extensions = (26'b00000000000000000001000010);
  assign _zz_246_ = (CsrPlugin_sip_STIP && CsrPlugin_sie_STIE);
  assign _zz_247_ = (CsrPlugin_sip_SSIP && CsrPlugin_sie_SSIE);
  assign _zz_248_ = (CsrPlugin_sip_SEIP && CsrPlugin_sie_SEIE);
  assign _zz_249_ = (CsrPlugin_mip_MTIP && CsrPlugin_mie_MTIE);
  assign _zz_250_ = (CsrPlugin_mip_MSIP && CsrPlugin_mie_MSIE);
  assign _zz_251_ = (CsrPlugin_mip_MEIP && CsrPlugin_mie_MEIE);
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = (2'b01);
    if(((! CsrPlugin_medeleg[CsrPlugin_exceptionPortCtrl_exceptionContext_code]) || ((2'b01) < CsrPlugin_privilege)))begin
      CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege = (2'b11);
    end
  end

  assign decode_exception_agregat_valid = (_zz_112_ || decodeExceptionPort_valid);
  assign _zz_252_ = {decodeExceptionPort_valid,_zz_112_};
  assign _zz_253_ = _zz_473_[0];
  assign decode_exception_agregat_payload_code = (_zz_253_ ? (_zz_317_ ? (4'b1100) : (4'b0001)) : decodeExceptionPort_1_code);
  assign decode_exception_agregat_payload_badAddr = (_zz_253_ ? IBusCachedPlugin_stages_2_input_payload : decodeExceptionPort_1_badAddr);
  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_decode = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode;
    if(decode_exception_agregat_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b1;
    end
    if(decode_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_decode = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_execute = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute;
    if(execute_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_execute = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_exceptionPortCtrl_exceptionValids_memory = CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory;
    if(memory_exception_agregat_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b1;
    end
    if(memory_arbitration_isFlushed)begin
      CsrPlugin_exceptionPortCtrl_exceptionValids_memory = 1'b0;
    end
  end

  always @ (*) begin
    CsrPlugin_interrupt = 1'b0;
    CsrPlugin_interruptCode = (4'bxxxx);
    CsrPlugin_interruptTargetPrivilege = (2'bxx);
    if(((CsrPlugin_sstatus_SIE && (CsrPlugin_privilege <= (2'b01))) || (CsrPlugin_privilege == (2'b00))))begin
      if(((_zz_246_ || _zz_247_) || _zz_248_))begin
        CsrPlugin_interrupt = 1'b1;
      end
      if(_zz_246_)begin
        CsrPlugin_interruptCode = (4'b0101);
        CsrPlugin_interruptTargetPrivilege = _zz_254_;
      end
      if(_zz_247_)begin
        CsrPlugin_interruptCode = (4'b0001);
        CsrPlugin_interruptTargetPrivilege = _zz_255_;
      end
      if(_zz_248_)begin
        CsrPlugin_interruptCode = (4'b1001);
        CsrPlugin_interruptTargetPrivilege = _zz_256_;
      end
    end
    if(CsrPlugin_mstatus_MIE)begin
      if(((_zz_249_ || _zz_250_) || _zz_251_))begin
        CsrPlugin_interrupt = 1'b1;
      end
      if(_zz_249_)begin
        CsrPlugin_interruptCode = (4'b0111);
        CsrPlugin_interruptTargetPrivilege = (2'b11);
      end
      if(_zz_250_)begin
        CsrPlugin_interruptCode = (4'b0011);
        CsrPlugin_interruptTargetPrivilege = (2'b11);
      end
      if(_zz_251_)begin
        CsrPlugin_interruptCode = (4'b1011);
        CsrPlugin_interruptTargetPrivilege = (2'b11);
      end
    end
    if((! _zz_137_))begin
      CsrPlugin_interrupt = 1'b0;
    end
  end

  always @ (*) begin
    _zz_254_ = (2'b01);
    if((! CsrPlugin_mideleg[5]))begin
      _zz_254_ = (2'b11);
    end
  end

  always @ (*) begin
    _zz_255_ = (2'b01);
    if((! CsrPlugin_mideleg[1]))begin
      _zz_255_ = (2'b11);
    end
  end

  always @ (*) begin
    _zz_256_ = (2'b01);
    if((! CsrPlugin_mideleg[9]))begin
      _zz_256_ = (2'b11);
    end
  end

  assign CsrPlugin_exception = (CsrPlugin_exceptionPortCtrl_exceptionValids_writeBack && _zz_138_);
  always @ (*) begin
    CsrPlugin_pipelineLiberator_done = ((! ((execute_arbitration_isValid || memory_arbitration_isValid) || writeBack_arbitration_isValid)) && IBusCachedPlugin_injector_nextPcCalc_3);
    if(((CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute || CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory) || CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack))begin
      CsrPlugin_pipelineLiberator_done = 1'b0;
    end
  end

  assign CsrPlugin_interruptJump = (CsrPlugin_interrupt && CsrPlugin_pipelineLiberator_done);
  always @ (*) begin
    CsrPlugin_targetPrivilege = CsrPlugin_interruptTargetPrivilege;
    if(CsrPlugin_hadException)begin
      if((CsrPlugin_exceptionPortCtrl_exceptionContext_code == (4'b1011)))begin
        CsrPlugin_targetPrivilege = (2'b01);
      end else begin
        CsrPlugin_targetPrivilege = CsrPlugin_exceptionPortCtrl_exceptionTargetPrivilege;
      end
    end
  end

  always @ (*) begin
    CsrPlugin_trapCause = CsrPlugin_interruptCode;
    if((CsrPlugin_hadException && (! CsrPlugin_interrupt)))begin
      if((CsrPlugin_exceptionPortCtrl_exceptionContext_code == (4'b1011)))begin
        case(CsrPlugin_privilege)
          2'b00 : begin
            CsrPlugin_trapCause = (4'b1000);
          end
          2'b01 : begin
            CsrPlugin_trapCause = (4'b1001);
          end
          default : begin
            CsrPlugin_trapCause = (4'b1011);
          end
        endcase
      end else begin
        CsrPlugin_trapCause = CsrPlugin_exceptionPortCtrl_exceptionContext_code;
      end
    end
  end

  assign contextSwitching = _zz_135_;
  assign _zz_31_ = (! (((decode_INSTRUCTION[14 : 13] == (2'b01)) && (decode_INSTRUCTION[19 : 15] == (5'b00000))) || ((decode_INSTRUCTION[14 : 13] == (2'b11)) && (decode_INSTRUCTION[19 : 15] == (5'b00000)))));
  assign _zz_30_ = (decode_INSTRUCTION[13 : 7] != (7'b0100000));
  assign execute_CsrPlugin_blockedBySideEffects = (memory_arbitration_isValid || writeBack_arbitration_isValid);
  always @ (*) begin
    execute_CsrPlugin_illegalAccess = (execute_arbitration_isValid && execute_IS_CSR);
    execute_CsrPlugin_readData = (32'b00000000000000000000000000000000);
    case(execute_CsrPlugin_csrAddress)
      12'b101111000000 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = _zz_257_;
      end
      12'b001100000000 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[12 : 11] = CsrPlugin_mstatus_MPP;
        execute_CsrPlugin_readData[7 : 7] = CsrPlugin_mstatus_MPIE;
        execute_CsrPlugin_readData[3 : 3] = CsrPlugin_mstatus_MIE;
      end
      12'b001100000011 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_mideleg;
      end
      12'b000101000010 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 31] = CsrPlugin_scause_interrupt;
        execute_CsrPlugin_readData[3 : 0] = CsrPlugin_scause_exceptionCode;
      end
      12'b000100000000 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[8 : 8] = CsrPlugin_sstatus_SPP;
        execute_CsrPlugin_readData[5 : 5] = CsrPlugin_sstatus_SPIE;
        execute_CsrPlugin_readData[1 : 1] = CsrPlugin_sstatus_SIE;
      end
      12'b001100000010 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_medeleg;
      end
      12'b001101000001 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_mepc;
      end
      12'b101100000000 : begin
        if(execute_CSR_READ_OPCODE)begin
          execute_CsrPlugin_illegalAccess = 1'b0;
        end
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_mcycle[31 : 0];
      end
      12'b101110000000 : begin
        if(execute_CSR_READ_OPCODE)begin
          execute_CsrPlugin_illegalAccess = 1'b0;
        end
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_mcycle[63 : 32];
      end
      12'b001101000100 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[11 : 11] = CsrPlugin_mip_MEIP;
        execute_CsrPlugin_readData[7 : 7] = CsrPlugin_mip_MTIP;
        execute_CsrPlugin_readData[3 : 3] = CsrPlugin_mip_MSIP;
      end
      12'b001100000101 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_mtvec;
      end
      12'b000110000000 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 31] = CsrPlugin_satp_MODE;
        execute_CsrPlugin_readData[30 : 22] = CsrPlugin_satp_ASID;
        execute_CsrPlugin_readData[21 : 0] = CsrPlugin_satp_PPN;
      end
      12'b110011000000 : begin
        if(execute_CSR_READ_OPCODE)begin
          execute_CsrPlugin_illegalAccess = 1'b0;
        end
        execute_CsrPlugin_readData[12 : 0] = (13'b1000000000000);
        execute_CsrPlugin_readData[25 : 20] = (6'b100000);
      end
      12'b000101000001 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_sepc;
      end
      12'b000101000100 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[9 : 9] = CsrPlugin_sip_SEIP;
        execute_CsrPlugin_readData[5 : 5] = CsrPlugin_sip_STIP;
        execute_CsrPlugin_readData[1 : 1] = CsrPlugin_sip_SSIP;
      end
      12'b001101000011 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_mtval;
      end
      12'b000100000101 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_stvec;
      end
      12'b111111000000 : begin
        if(execute_CSR_READ_OPCODE)begin
          execute_CsrPlugin_illegalAccess = 1'b0;
        end
        execute_CsrPlugin_readData[31 : 0] = _zz_258_;
      end
      12'b110000000000 : begin
        if(execute_CSR_READ_OPCODE)begin
          execute_CsrPlugin_illegalAccess = 1'b0;
        end
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_mcycle[31 : 0];
      end
      12'b001101000000 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_mscratch;
      end
      12'b001100000100 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[11 : 11] = CsrPlugin_mie_MEIE;
        execute_CsrPlugin_readData[7 : 7] = CsrPlugin_mie_MTIE;
        execute_CsrPlugin_readData[3 : 3] = CsrPlugin_mie_MSIE;
      end
      12'b000101000011 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_stval;
      end
      12'b000101000000 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_sscratch;
      end
      12'b110010000000 : begin
        if(execute_CSR_READ_OPCODE)begin
          execute_CsrPlugin_illegalAccess = 1'b0;
        end
        execute_CsrPlugin_readData[31 : 0] = CsrPlugin_mcycle[63 : 32];
      end
      12'b001101000010 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[31 : 31] = CsrPlugin_mcause_interrupt;
        execute_CsrPlugin_readData[3 : 0] = CsrPlugin_mcause_exceptionCode;
      end
      12'b000100000100 : begin
        execute_CsrPlugin_illegalAccess = 1'b0;
        execute_CsrPlugin_readData[9 : 9] = CsrPlugin_sie_SEIE;
        execute_CsrPlugin_readData[5 : 5] = CsrPlugin_sie_STIE;
        execute_CsrPlugin_readData[1 : 1] = CsrPlugin_sie_SSIE;
      end
      default : begin
      end
    endcase
    if((CsrPlugin_privilege < execute_CsrPlugin_csrAddress[9 : 8]))begin
      execute_CsrPlugin_illegalAccess = 1'b1;
    end
  end

  always @ (*) begin
    execute_CsrPlugin_illegalInstruction = 1'b0;
    if((execute_arbitration_isValid && (execute_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_XRET)))begin
      if((execute_INSTRUCTION[29 : 28] != CsrPlugin_privilege))begin
        execute_CsrPlugin_illegalInstruction = 1'b1;
      end
    end
  end

  always @ (*) begin
    case(_zz_379_)
      1'b0 : begin
        execute_CsrPlugin_writeData = execute_REGFILE_WRITE_DATA;
      end
      default : begin
        execute_CsrPlugin_writeData = (execute_INSTRUCTION[12] ? (execute_CsrPlugin_readData & (~ execute_REGFILE_WRITE_DATA)) : (execute_CsrPlugin_readData | execute_REGFILE_WRITE_DATA));
      end
    endcase
  end

  assign execute_CsrPlugin_writeInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_WRITE_OPCODE);
  assign execute_CsrPlugin_readInstruction = ((execute_arbitration_isValid && execute_IS_CSR) && execute_CSR_READ_OPCODE);
  assign execute_CsrPlugin_writeEnable = (execute_CsrPlugin_writeInstruction && (! execute_arbitration_isStuck));
  assign execute_CsrPlugin_readEnable = (execute_CsrPlugin_readInstruction && (! execute_arbitration_isStuck));
  assign execute_CsrPlugin_csrAddress = execute_INSTRUCTION[31 : 20];
  assign _zz_258_ = (_zz_257_ & externalInterruptArray_regNext);
  assign externalInterruptS = (_zz_258_ != (32'b00000000000000000000000000000000));
  assign DebugPlugin_isPipBusy = (DebugPlugin_isPipActive || DebugPlugin_isPipActive_regNext);
  always @ (*) begin
    debug_bus_cmd_ready = 1'b1;
    _zz_139_ = 1'b0;
    if(debug_bus_cmd_valid)begin
      case(_zz_374_)
        6'b000000 : begin
        end
        6'b000001 : begin
          if(debug_bus_cmd_payload_wr)begin
            _zz_139_ = 1'b1;
            debug_bus_cmd_ready = _zz_140_;
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @ (*) begin
    debug_bus_rsp_data = DebugPlugin_busReadDataReg;
    if((! _zz_259_))begin
      debug_bus_rsp_data[0] = DebugPlugin_resetIt;
      debug_bus_rsp_data[1] = DebugPlugin_haltIt;
      debug_bus_rsp_data[2] = DebugPlugin_isPipBusy;
      debug_bus_rsp_data[3] = DebugPlugin_haltedByBreak;
      debug_bus_rsp_data[4] = DebugPlugin_stepIt;
    end
  end

  assign _zz_27_ = ((! DebugPlugin_haltIt) && (decode_IS_EBREAK || 1'b0));
  assign debug_resetOut = DebugPlugin_resetIt_regNext;
  assign _zz_26_ = decode_ALU_BITWISE_CTRL;
  assign _zz_24_ = _zz_67_;
  assign _zz_59_ = decode_to_execute_ALU_BITWISE_CTRL;
  assign _zz_23_ = decode_SHIFT_CTRL;
  assign _zz_20_ = execute_SHIFT_CTRL;
  assign _zz_21_ = _zz_75_;
  assign _zz_48_ = decode_to_execute_SHIFT_CTRL;
  assign _zz_46_ = execute_to_memory_SHIFT_CTRL;
  assign _zz_18_ = decode_SRC2_CTRL;
  assign _zz_16_ = _zz_65_;
  assign _zz_53_ = decode_to_execute_SRC2_CTRL;
  assign _zz_15_ = decode_BRANCH_CTRL;
  assign _zz_98_ = _zz_69_;
  assign _zz_36_ = decode_to_execute_BRANCH_CTRL;
  assign _zz_13_ = decode_ENV_CTRL;
  assign _zz_10_ = execute_ENV_CTRL;
  assign _zz_8_ = memory_ENV_CTRL;
  assign _zz_11_ = _zz_82_;
  assign _zz_29_ = decode_to_execute_ENV_CTRL;
  assign _zz_28_ = execute_to_memory_ENV_CTRL;
  assign _zz_32_ = memory_to_writeBack_ENV_CTRL;
  assign _zz_6_ = decode_ALU_CTRL;
  assign _zz_4_ = _zz_68_;
  assign _zz_57_ = decode_to_execute_ALU_CTRL;
  assign _zz_3_ = decode_SRC1_CTRL;
  assign _zz_1_ = _zz_74_;
  assign _zz_55_ = decode_to_execute_SRC1_CTRL;
  assign decode_arbitration_isFlushed = (((decode_arbitration_flushAll || execute_arbitration_flushAll) || memory_arbitration_flushAll) || writeBack_arbitration_flushAll);
  assign execute_arbitration_isFlushed = ((execute_arbitration_flushAll || memory_arbitration_flushAll) || writeBack_arbitration_flushAll);
  assign memory_arbitration_isFlushed = (memory_arbitration_flushAll || writeBack_arbitration_flushAll);
  assign writeBack_arbitration_isFlushed = writeBack_arbitration_flushAll;
  assign decode_arbitration_isStuckByOthers = (decode_arbitration_haltByOther || (((1'b0 || execute_arbitration_isStuck) || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign decode_arbitration_isStuck = (decode_arbitration_haltItself || decode_arbitration_isStuckByOthers);
  assign decode_arbitration_isMoving = ((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt));
  assign decode_arbitration_isFiring = ((decode_arbitration_isValid && (! decode_arbitration_isStuck)) && (! decode_arbitration_removeIt));
  assign execute_arbitration_isStuckByOthers = (execute_arbitration_haltByOther || ((1'b0 || memory_arbitration_isStuck) || writeBack_arbitration_isStuck));
  assign execute_arbitration_isStuck = (execute_arbitration_haltItself || execute_arbitration_isStuckByOthers);
  assign execute_arbitration_isMoving = ((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt));
  assign execute_arbitration_isFiring = ((execute_arbitration_isValid && (! execute_arbitration_isStuck)) && (! execute_arbitration_removeIt));
  assign memory_arbitration_isStuckByOthers = (memory_arbitration_haltByOther || (1'b0 || writeBack_arbitration_isStuck));
  assign memory_arbitration_isStuck = (memory_arbitration_haltItself || memory_arbitration_isStuckByOthers);
  assign memory_arbitration_isMoving = ((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt));
  assign memory_arbitration_isFiring = ((memory_arbitration_isValid && (! memory_arbitration_isStuck)) && (! memory_arbitration_removeIt));
  assign writeBack_arbitration_isStuckByOthers = (writeBack_arbitration_haltByOther || 1'b0);
  assign writeBack_arbitration_isStuck = (writeBack_arbitration_haltItself || writeBack_arbitration_isStuckByOthers);
  assign writeBack_arbitration_isMoving = ((! writeBack_arbitration_isStuck) && (! writeBack_arbitration_removeIt));
  assign writeBack_arbitration_isFiring = ((writeBack_arbitration_isValid && (! writeBack_arbitration_isStuck)) && (! writeBack_arbitration_removeIt));
  assign iBusWishbone_ADR = {_zz_489_,_zz_262_};
  assign iBusWishbone_CTI = ((_zz_262_ == (3'b111)) ? (3'b111) : (3'b010));
  assign iBusWishbone_BTE = (2'b00);
  assign iBusWishbone_SEL = (4'b1111);
  assign iBusWishbone_WE = 1'b0;
  assign iBusWishbone_DAT_MOSI = (32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx);
  always @ (*) begin
    iBusWishbone_CYC = 1'b0;
    iBusWishbone_STB = 1'b0;
    if(_zz_375_)begin
      iBusWishbone_CYC = 1'b1;
      iBusWishbone_STB = 1'b1;
    end
  end

  assign iBus_cmd_ready = (iBus_cmd_valid && iBusWishbone_ACK);
  assign iBus_rsp_valid = _zz_263_;
  assign iBus_rsp_payload_data = iBusWishbone_DAT_MISO_regNext;
  assign iBus_rsp_payload_error = 1'b0;
  assign _zz_269_ = (dBus_cmd_payload_length != (3'b000));
  assign _zz_265_ = dBus_cmd_valid;
  assign _zz_267_ = dBus_cmd_payload_wr;
  assign _zz_268_ = (_zz_264_ == dBus_cmd_payload_length);
  assign dBus_cmd_ready = (_zz_266_ && (_zz_267_ || _zz_268_));
  assign dBusWishbone_ADR = ((_zz_269_ ? {{dBus_cmd_payload_address[31 : 5],_zz_264_},(2'b00)} : {dBus_cmd_payload_address[31 : 2],(2'b00)}) >>> 2);
  assign dBusWishbone_CTI = (_zz_269_ ? (_zz_268_ ? (3'b111) : (3'b010)) : (3'b000));
  assign dBusWishbone_BTE = (2'b00);
  assign dBusWishbone_SEL = (_zz_267_ ? dBus_cmd_payload_mask : (4'b1111));
  assign dBusWishbone_WE = _zz_267_;
  assign dBusWishbone_DAT_MOSI = dBus_cmd_payload_data;
  assign _zz_266_ = (_zz_265_ && dBusWishbone_ACK);
  assign dBusWishbone_CYC = _zz_265_;
  assign dBusWishbone_STB = _zz_265_;
  assign dBus_rsp_valid = _zz_270_;
  assign dBus_rsp_payload_data = dBusWishbone_DAT_MISO_regNext;
  assign dBus_rsp_payload_error = 1'b0;
  assign debug_bus_cmd_valid = _zz_353_;
  assign debug_bus_cmd_payload_wr = _zz_356_;
  assign debug_bus_cmd_payload_address = _zz_354_[7:0];
  assign debug_bus_cmd_payload_data = _zz_355_;
  assign jtag_tdo = _zz_344_;
  always @ (posedge clk) begin
    if(reset) begin
      CsrPlugin_privilege <= (2'b11);
      IBusCachedPlugin_fetchPc_pcReg <= externalResetVector;
      IBusCachedPlugin_fetchPc_inc <= 1'b0;
      _zz_147_ <= 1'b0;
      _zz_153_ <= 1'b0;
      _zz_155_ <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_0 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_1 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_2 <= 1'b0;
      IBusCachedPlugin_injector_nextPcCalc_3 <= 1'b0;
      IBusCachedPlugin_injector_decodeRemoved <= 1'b0;
      MemoryTranslatorPlugin_mmuEnabled <= 1'b0;
      MemoryTranslatorPlugin_ports_0_cache_0_valid <= 1'b0;
      MemoryTranslatorPlugin_ports_0_cache_1_valid <= 1'b0;
      MemoryTranslatorPlugin_ports_0_cache_2_valid <= 1'b0;
      MemoryTranslatorPlugin_ports_0_cache_3_valid <= 1'b0;
      MemoryTranslatorPlugin_ports_0_sharedMiss <= 1'b0;
      MemoryTranslatorPlugin_ports_0_sharedAccessed <= (2'b00);
      MemoryTranslatorPlugin_ports_0_entryToReplace_value <= (2'b00);
      MemoryTranslatorPlugin_ports_1_cache_0_valid <= 1'b0;
      MemoryTranslatorPlugin_ports_1_cache_1_valid <= 1'b0;
      MemoryTranslatorPlugin_ports_1_cache_2_valid <= 1'b0;
      MemoryTranslatorPlugin_ports_1_cache_3_valid <= 1'b0;
      MemoryTranslatorPlugin_ports_1_sharedMiss <= 1'b0;
      MemoryTranslatorPlugin_ports_1_sharedAccessed <= (2'b00);
      MemoryTranslatorPlugin_ports_1_entryToReplace_value <= (2'b00);
      _zz_201_ <= 1'b1;
      memory_DivPlugin_div_counter_value <= (6'b000000);
      _zz_221_ <= 1'b0;
      CsrPlugin_mstatus_MIE <= 1'b0;
      CsrPlugin_mstatus_MPIE <= 1'b0;
      CsrPlugin_mstatus_MPP <= (2'b11);
      CsrPlugin_mip_MEIP <= 1'b0;
      CsrPlugin_mip_MTIP <= 1'b0;
      CsrPlugin_mip_MSIP <= 1'b0;
      CsrPlugin_mie_MEIE <= 1'b0;
      CsrPlugin_mie_MTIE <= 1'b0;
      CsrPlugin_mie_MSIE <= 1'b0;
      CsrPlugin_medeleg <= (32'b00000000000000000000000000000000);
      CsrPlugin_mideleg <= (32'b00000000000000000000000000000000);
      CsrPlugin_sstatus_SIE <= 1'b0;
      CsrPlugin_sstatus_SPIE <= 1'b0;
      CsrPlugin_sstatus_SPP <= (1'b1);
      CsrPlugin_sip_SEIP <= 1'b0;
      CsrPlugin_sip_STIP <= 1'b0;
      CsrPlugin_sip_SSIP <= 1'b0;
      CsrPlugin_sie_SEIE <= 1'b0;
      CsrPlugin_sie_STIE <= 1'b0;
      CsrPlugin_sie_SSIE <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= 1'b0;
      CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      CsrPlugin_writeBackWasWfi <= 1'b0;
      CsrPlugin_hadException <= 1'b0;
      _zz_257_ <= (32'b00000000000000000000000000000000);
      execute_arbitration_isValid <= 1'b0;
      memory_arbitration_isValid <= 1'b0;
      writeBack_arbitration_isValid <= 1'b0;
      _zz_260_ <= (3'b000);
      memory_to_writeBack_REGFILE_WRITE_DATA <= (32'b00000000000000000000000000000000);
      memory_to_writeBack_INSTRUCTION <= (32'b00000000000000000000000000000000);
      _zz_262_ <= (3'b000);
      _zz_263_ <= 1'b0;
      _zz_264_ <= (3'b000);
      _zz_270_ <= 1'b0;
      _zz_271_ <= 1'b0;
    end else begin
      if(IBusCachedPlugin_fetchPc_propagatePc)begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if(IBusCachedPlugin_jump_pcLoad_valid)begin
        IBusCachedPlugin_fetchPc_inc <= 1'b0;
      end
      if(_zz_368_)begin
        IBusCachedPlugin_fetchPc_inc <= 1'b1;
      end
      if(IBusCachedPlugin_fetchPc_samplePcNext)begin
        IBusCachedPlugin_fetchPc_pcReg <= IBusCachedPlugin_fetchPc_pc;
      end
      _zz_147_ <= 1'b1;
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        _zz_153_ <= 1'b0;
      end
      if(_zz_151_)begin
        _zz_153_ <= IBusCachedPlugin_iBusRsp_stages_0_output_valid;
      end
      if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
        _zz_155_ <= IBusCachedPlugin_iBusRsp_stages_1_output_valid;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        _zz_155_ <= 1'b0;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_iBusRsp_stages_1_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_valids_0 <= 1'b1;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        IBusCachedPlugin_injector_nextPcCalc_0 <= 1'b0;
      end
      if((! (! IBusCachedPlugin_stages_2_input_ready)))begin
        IBusCachedPlugin_injector_nextPcCalc_0 <= IBusCachedPlugin_injector_nextPcCalc_valids_0;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        IBusCachedPlugin_injector_nextPcCalc_0 <= 1'b0;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        IBusCachedPlugin_injector_nextPcCalc_1 <= 1'b0;
      end
      if((! execute_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_1 <= IBusCachedPlugin_injector_nextPcCalc_0;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        IBusCachedPlugin_injector_nextPcCalc_1 <= 1'b0;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        IBusCachedPlugin_injector_nextPcCalc_2 <= 1'b0;
      end
      if((! memory_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_2 <= IBusCachedPlugin_injector_nextPcCalc_1;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        IBusCachedPlugin_injector_nextPcCalc_2 <= 1'b0;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        IBusCachedPlugin_injector_nextPcCalc_3 <= 1'b0;
      end
      if((! writeBack_arbitration_isStuck))begin
        IBusCachedPlugin_injector_nextPcCalc_3 <= IBusCachedPlugin_injector_nextPcCalc_2;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        IBusCachedPlugin_injector_nextPcCalc_3 <= 1'b0;
      end
      if(decode_arbitration_removeIt)begin
        IBusCachedPlugin_injector_decodeRemoved <= 1'b1;
      end
      if((IBusCachedPlugin_jump_pcLoad_valid || _zz_105_))begin
        IBusCachedPlugin_injector_decodeRemoved <= 1'b0;
      end
      MemoryTranslatorPlugin_ports_0_entryToReplace_value <= MemoryTranslatorPlugin_ports_0_entryToReplace_valueNext;
      MemoryTranslatorPlugin_ports_0_sharedAccessed <= _zz_395_[1:0];
      if(_zz_369_)begin
        if(_zz_370_)begin
          if(_zz_173_)begin
            MemoryTranslatorPlugin_ports_0_cache_0_valid <= MemoryTranslatorPlugin_shared_readData_valid;
          end
          if(_zz_174_)begin
            MemoryTranslatorPlugin_ports_0_cache_1_valid <= MemoryTranslatorPlugin_shared_readData_valid;
          end
          if(_zz_175_)begin
            MemoryTranslatorPlugin_ports_0_cache_2_valid <= MemoryTranslatorPlugin_shared_readData_valid;
          end
          if(_zz_176_)begin
            MemoryTranslatorPlugin_ports_0_cache_3_valid <= MemoryTranslatorPlugin_shared_readData_valid;
          end
        end
      end
      if((((9'b100000000) <= MemoryTranslatorPlugin_ports_0_sharedIterator) && (MemoryTranslatorPlugin_ports_0_sharedAccessed == (2'b00))))begin
        MemoryTranslatorPlugin_ports_0_sharedMiss <= 1'b1;
      end
      if(_zz_329_)begin
        MemoryTranslatorPlugin_ports_0_sharedMiss <= 1'b0;
        MemoryTranslatorPlugin_ports_0_sharedAccessed <= (2'b00);
      end
      MemoryTranslatorPlugin_ports_1_entryToReplace_value <= MemoryTranslatorPlugin_ports_1_entryToReplace_valueNext;
      MemoryTranslatorPlugin_ports_1_sharedAccessed <= _zz_398_[1:0];
      if(_zz_371_)begin
        if(_zz_372_)begin
          if(_zz_181_)begin
            MemoryTranslatorPlugin_ports_1_cache_0_valid <= MemoryTranslatorPlugin_shared_readData_valid;
          end
          if(_zz_182_)begin
            MemoryTranslatorPlugin_ports_1_cache_1_valid <= MemoryTranslatorPlugin_shared_readData_valid;
          end
          if(_zz_183_)begin
            MemoryTranslatorPlugin_ports_1_cache_2_valid <= MemoryTranslatorPlugin_shared_readData_valid;
          end
          if(_zz_184_)begin
            MemoryTranslatorPlugin_ports_1_cache_3_valid <= MemoryTranslatorPlugin_shared_readData_valid;
          end
        end
      end
      if((((9'b100000000) <= MemoryTranslatorPlugin_ports_1_sharedIterator) && (MemoryTranslatorPlugin_ports_1_sharedAccessed == (2'b00))))begin
        MemoryTranslatorPlugin_ports_1_sharedMiss <= 1'b1;
      end
      if(_zz_315_)begin
        MemoryTranslatorPlugin_ports_1_sharedMiss <= 1'b0;
        MemoryTranslatorPlugin_ports_1_sharedAccessed <= (2'b00);
      end
      if(_zz_360_)begin
        case(_zz_361_)
          2'b00 : begin
          end
          2'b01 : begin
            MemoryTranslatorPlugin_ports_0_cache_0_valid <= 1'b0;
            MemoryTranslatorPlugin_ports_0_cache_1_valid <= 1'b0;
            MemoryTranslatorPlugin_ports_0_cache_2_valid <= 1'b0;
            MemoryTranslatorPlugin_ports_0_cache_3_valid <= 1'b0;
            MemoryTranslatorPlugin_ports_1_cache_0_valid <= 1'b0;
            MemoryTranslatorPlugin_ports_1_cache_1_valid <= 1'b0;
            MemoryTranslatorPlugin_ports_1_cache_2_valid <= 1'b0;
            MemoryTranslatorPlugin_ports_1_cache_3_valid <= 1'b0;
          end
          2'b10 : begin
            MemoryTranslatorPlugin_mmuEnabled <= execute_RS2[0];
          end
          default : begin
          end
        endcase
      end
      _zz_201_ <= 1'b0;
      memory_DivPlugin_div_counter_value <= memory_DivPlugin_div_counter_valueNext;
      _zz_221_ <= _zz_220_;
      CsrPlugin_mip_MEIP <= externalInterrupt;
      CsrPlugin_mip_MTIP <= timerInterrupt;
      CsrPlugin_sip_SEIP <= externalInterruptS;
      CsrPlugin_sip_STIP <= timerInterruptS;
      if((! decode_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= 1'b0;
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_decode <= CsrPlugin_exceptionPortCtrl_exceptionValids_decode;
      end
      if((! execute_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= (CsrPlugin_exceptionPortCtrl_exceptionValids_decode && (! decode_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_execute <= CsrPlugin_exceptionPortCtrl_exceptionValids_execute;
      end
      if((! memory_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= (CsrPlugin_exceptionPortCtrl_exceptionValids_execute && (! execute_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_memory <= CsrPlugin_exceptionPortCtrl_exceptionValids_memory;
      end
      if((! writeBack_arbitration_isStuck))begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= (CsrPlugin_exceptionPortCtrl_exceptionValids_memory && (! memory_arbitration_isStuck));
      end else begin
        CsrPlugin_exceptionPortCtrl_exceptionValidsRegs_writeBack <= 1'b0;
      end
      CsrPlugin_writeBackWasWfi <= (writeBack_arbitration_isFiring && (writeBack_ENV_CTRL == `EnvCtrlEnum_defaultEncoding_WFI));
      CsrPlugin_hadException <= CsrPlugin_exception;
      if(_zz_365_)begin
        CsrPlugin_privilege <= CsrPlugin_targetPrivilege;
        case(CsrPlugin_targetPrivilege)
          2'b01 : begin
            CsrPlugin_sstatus_SIE <= 1'b0;
            CsrPlugin_sstatus_SPIE <= CsrPlugin_sstatus_SIE;
            CsrPlugin_sstatus_SPP <= CsrPlugin_privilege[0 : 0];
          end
          2'b11 : begin
            CsrPlugin_mstatus_MIE <= 1'b0;
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_mstatus_MPP <= CsrPlugin_privilege;
          end
          default : begin
          end
        endcase
      end
      if(_zz_366_)begin
        case(_zz_367_)
          2'b11 : begin
            CsrPlugin_mstatus_MIE <= CsrPlugin_mstatus_MPIE;
            CsrPlugin_mstatus_MPP <= (2'b00);
            CsrPlugin_mstatus_MPIE <= CsrPlugin_mstatus_MIE;
            CsrPlugin_privilege <= CsrPlugin_mstatus_MPP;
          end
          2'b01 : begin
            CsrPlugin_sstatus_SIE <= CsrPlugin_sstatus_SPIE;
            CsrPlugin_sstatus_SPP <= (1'b0);
            CsrPlugin_sstatus_SPIE <= 1'b1;
            CsrPlugin_privilege <= {(1'b0),CsrPlugin_sstatus_SPP};
          end
          default : begin
          end
        endcase
      end
      if((! writeBack_arbitration_isStuck))begin
        memory_to_writeBack_INSTRUCTION <= memory_INSTRUCTION;
      end
      if((! writeBack_arbitration_isStuck))begin
        memory_to_writeBack_REGFILE_WRITE_DATA <= _zz_45_;
      end
      if(((! execute_arbitration_isStuck) || execute_arbitration_removeIt))begin
        execute_arbitration_isValid <= 1'b0;
      end
      if(((! decode_arbitration_isStuck) && (! decode_arbitration_removeIt)))begin
        execute_arbitration_isValid <= decode_arbitration_isValid;
      end
      if(((! memory_arbitration_isStuck) || memory_arbitration_removeIt))begin
        memory_arbitration_isValid <= 1'b0;
      end
      if(((! execute_arbitration_isStuck) && (! execute_arbitration_removeIt)))begin
        memory_arbitration_isValid <= execute_arbitration_isValid;
      end
      if(((! writeBack_arbitration_isStuck) || writeBack_arbitration_removeIt))begin
        writeBack_arbitration_isValid <= 1'b0;
      end
      if(((! memory_arbitration_isStuck) && (! memory_arbitration_removeIt)))begin
        writeBack_arbitration_isValid <= memory_arbitration_isValid;
      end
      case(_zz_260_)
        3'b000 : begin
          if(_zz_139_)begin
            _zz_260_ <= (3'b001);
          end
        end
        3'b001 : begin
          _zz_260_ <= (3'b010);
        end
        3'b010 : begin
          _zz_260_ <= (3'b011);
        end
        3'b011 : begin
          if((! decode_arbitration_isStuck))begin
            _zz_260_ <= (3'b100);
          end
        end
        3'b100 : begin
          _zz_260_ <= (3'b000);
        end
        default : begin
        end
      endcase
      case(execute_CsrPlugin_csrAddress)
        12'b101111000000 : begin
          if(execute_CsrPlugin_writeEnable)begin
            _zz_257_ <= execute_CsrPlugin_writeData[31 : 0];
          end
        end
        12'b001100000000 : begin
          if(execute_CsrPlugin_writeEnable)begin
            CsrPlugin_mstatus_MPP <= execute_CsrPlugin_writeData[12 : 11];
            CsrPlugin_mstatus_MPIE <= _zz_475_[0];
            CsrPlugin_mstatus_MIE <= _zz_476_[0];
          end
        end
        12'b001100000011 : begin
          if(execute_CsrPlugin_writeEnable)begin
            CsrPlugin_mideleg <= execute_CsrPlugin_writeData[31 : 0];
          end
        end
        12'b000101000010 : begin
        end
        12'b000100000000 : begin
          if(execute_CsrPlugin_writeEnable)begin
            CsrPlugin_sstatus_SPP <= execute_CsrPlugin_writeData[8 : 8];
            CsrPlugin_sstatus_SPIE <= _zz_478_[0];
            CsrPlugin_sstatus_SIE <= _zz_479_[0];
          end
        end
        12'b001100000010 : begin
          if(execute_CsrPlugin_writeEnable)begin
            CsrPlugin_medeleg <= execute_CsrPlugin_writeData[31 : 0];
          end
        end
        12'b001101000001 : begin
        end
        12'b101100000000 : begin
        end
        12'b101110000000 : begin
        end
        12'b001101000100 : begin
          if(execute_CsrPlugin_writeEnable)begin
            CsrPlugin_mip_MSIP <= _zz_480_[0];
          end
        end
        12'b001100000101 : begin
        end
        12'b000110000000 : begin
        end
        12'b110011000000 : begin
        end
        12'b000101000001 : begin
        end
        12'b000101000100 : begin
          if(execute_CsrPlugin_writeEnable)begin
            CsrPlugin_sip_SSIP <= _zz_481_[0];
          end
        end
        12'b001101000011 : begin
        end
        12'b000100000101 : begin
        end
        12'b111111000000 : begin
        end
        12'b110000000000 : begin
        end
        12'b001101000000 : begin
        end
        12'b001100000100 : begin
          if(execute_CsrPlugin_writeEnable)begin
            CsrPlugin_mie_MEIE <= _zz_482_[0];
            CsrPlugin_mie_MTIE <= _zz_483_[0];
            CsrPlugin_mie_MSIE <= _zz_484_[0];
          end
        end
        12'b000101000011 : begin
        end
        12'b000101000000 : begin
        end
        12'b110010000000 : begin
        end
        12'b001101000010 : begin
        end
        12'b000100000100 : begin
          if(execute_CsrPlugin_writeEnable)begin
            CsrPlugin_sie_SEIE <= _zz_486_[0];
            CsrPlugin_sie_STIE <= _zz_487_[0];
            CsrPlugin_sie_SSIE <= _zz_488_[0];
          end
        end
        default : begin
        end
      endcase
      if(_zz_375_)begin
        if(iBusWishbone_ACK)begin
          _zz_262_ <= (_zz_262_ + (3'b001));
        end
      end
      _zz_263_ <= (iBusWishbone_CYC && iBusWishbone_ACK);
      if((_zz_265_ && _zz_266_))begin
        _zz_264_ <= (_zz_264_ + (3'b001));
        if(_zz_268_)begin
          _zz_264_ <= (3'b000);
        end
      end
      _zz_270_ <= ((_zz_265_ && (! dBusWishbone_WE)) && dBusWishbone_ACK);
      _zz_271_ <= (debug_bus_cmd_valid && debug_bus_cmd_ready);
    end
  end

  always @ (posedge clk) begin
    if(IBusCachedPlugin_iBusRsp_stages_1_output_ready)begin
      _zz_156_ <= IBusCachedPlugin_iBusRsp_stages_1_output_payload;
    end
    MemoryTranslatorPlugin_shared_readData_valid <= _zz_388_[0];
    MemoryTranslatorPlugin_shared_readData_virtualAddress <= _zz_168_[20 : 1];
    MemoryTranslatorPlugin_shared_readData_physicalAddress <= _zz_168_[40 : 21];
    MemoryTranslatorPlugin_shared_readData_allowRead <= _zz_389_[0];
    MemoryTranslatorPlugin_shared_readData_allowWrite <= _zz_390_[0];
    MemoryTranslatorPlugin_shared_readData_allowExecute <= _zz_391_[0];
    MemoryTranslatorPlugin_shared_readData_allowUser <= _zz_392_[0];
    MemoryTranslatorPlugin_ports_0_sharedAccessAsked <= (((_zz_123_ && (! MemoryTranslatorPlugin_ports_0_cacheHit)) && (MemoryTranslatorPlugin_ports_0_sharedIterator < (9'b100000000))) && MemoryTranslatorPlugin_ports_0_isInMmuRange);
    if(MemoryTranslatorPlugin_ports_0_sharedAccessGranted)begin
      MemoryTranslatorPlugin_ports_0_sharedIterator <= (MemoryTranslatorPlugin_ports_0_sharedIterator + (9'b000000001));
    end
    if(_zz_369_)begin
      if(_zz_370_)begin
        if(_zz_173_)begin
          MemoryTranslatorPlugin_ports_0_cache_0_virtualAddress <= MemoryTranslatorPlugin_shared_readData_virtualAddress;
        end
        if(_zz_174_)begin
          MemoryTranslatorPlugin_ports_0_cache_1_virtualAddress <= MemoryTranslatorPlugin_shared_readData_virtualAddress;
        end
        if(_zz_175_)begin
          MemoryTranslatorPlugin_ports_0_cache_2_virtualAddress <= MemoryTranslatorPlugin_shared_readData_virtualAddress;
        end
        if(_zz_176_)begin
          MemoryTranslatorPlugin_ports_0_cache_3_virtualAddress <= MemoryTranslatorPlugin_shared_readData_virtualAddress;
        end
        if(_zz_173_)begin
          MemoryTranslatorPlugin_ports_0_cache_0_physicalAddress <= MemoryTranslatorPlugin_shared_readData_physicalAddress;
        end
        if(_zz_174_)begin
          MemoryTranslatorPlugin_ports_0_cache_1_physicalAddress <= MemoryTranslatorPlugin_shared_readData_physicalAddress;
        end
        if(_zz_175_)begin
          MemoryTranslatorPlugin_ports_0_cache_2_physicalAddress <= MemoryTranslatorPlugin_shared_readData_physicalAddress;
        end
        if(_zz_176_)begin
          MemoryTranslatorPlugin_ports_0_cache_3_physicalAddress <= MemoryTranslatorPlugin_shared_readData_physicalAddress;
        end
        if(_zz_173_)begin
          MemoryTranslatorPlugin_ports_0_cache_0_allowRead <= MemoryTranslatorPlugin_shared_readData_allowRead;
        end
        if(_zz_174_)begin
          MemoryTranslatorPlugin_ports_0_cache_1_allowRead <= MemoryTranslatorPlugin_shared_readData_allowRead;
        end
        if(_zz_175_)begin
          MemoryTranslatorPlugin_ports_0_cache_2_allowRead <= MemoryTranslatorPlugin_shared_readData_allowRead;
        end
        if(_zz_176_)begin
          MemoryTranslatorPlugin_ports_0_cache_3_allowRead <= MemoryTranslatorPlugin_shared_readData_allowRead;
        end
        if(_zz_173_)begin
          MemoryTranslatorPlugin_ports_0_cache_0_allowWrite <= MemoryTranslatorPlugin_shared_readData_allowWrite;
        end
        if(_zz_174_)begin
          MemoryTranslatorPlugin_ports_0_cache_1_allowWrite <= MemoryTranslatorPlugin_shared_readData_allowWrite;
        end
        if(_zz_175_)begin
          MemoryTranslatorPlugin_ports_0_cache_2_allowWrite <= MemoryTranslatorPlugin_shared_readData_allowWrite;
        end
        if(_zz_176_)begin
          MemoryTranslatorPlugin_ports_0_cache_3_allowWrite <= MemoryTranslatorPlugin_shared_readData_allowWrite;
        end
        if(_zz_173_)begin
          MemoryTranslatorPlugin_ports_0_cache_0_allowExecute <= MemoryTranslatorPlugin_shared_readData_allowExecute;
        end
        if(_zz_174_)begin
          MemoryTranslatorPlugin_ports_0_cache_1_allowExecute <= MemoryTranslatorPlugin_shared_readData_allowExecute;
        end
        if(_zz_175_)begin
          MemoryTranslatorPlugin_ports_0_cache_2_allowExecute <= MemoryTranslatorPlugin_shared_readData_allowExecute;
        end
        if(_zz_176_)begin
          MemoryTranslatorPlugin_ports_0_cache_3_allowExecute <= MemoryTranslatorPlugin_shared_readData_allowExecute;
        end
        if(_zz_173_)begin
          MemoryTranslatorPlugin_ports_0_cache_0_allowUser <= MemoryTranslatorPlugin_shared_readData_allowUser;
        end
        if(_zz_174_)begin
          MemoryTranslatorPlugin_ports_0_cache_1_allowUser <= MemoryTranslatorPlugin_shared_readData_allowUser;
        end
        if(_zz_175_)begin
          MemoryTranslatorPlugin_ports_0_cache_2_allowUser <= MemoryTranslatorPlugin_shared_readData_allowUser;
        end
        if(_zz_176_)begin
          MemoryTranslatorPlugin_ports_0_cache_3_allowUser <= MemoryTranslatorPlugin_shared_readData_allowUser;
        end
      end
    end
    if(_zz_329_)begin
      MemoryTranslatorPlugin_ports_0_sharedIterator <= (9'b000000000);
      MemoryTranslatorPlugin_ports_0_sharedAccessAsked <= 1'b0;
    end
    MemoryTranslatorPlugin_ports_1_sharedAccessAsked <= (((_zz_113_ && (! MemoryTranslatorPlugin_ports_1_cacheHit)) && (MemoryTranslatorPlugin_ports_1_sharedIterator < (9'b100000000))) && MemoryTranslatorPlugin_ports_1_isInMmuRange);
    if(MemoryTranslatorPlugin_ports_1_sharedAccessGranted)begin
      MemoryTranslatorPlugin_ports_1_sharedIterator <= (MemoryTranslatorPlugin_ports_1_sharedIterator + (9'b000000001));
    end
    if(_zz_371_)begin
      if(_zz_372_)begin
        if(_zz_181_)begin
          MemoryTranslatorPlugin_ports_1_cache_0_virtualAddress <= MemoryTranslatorPlugin_shared_readData_virtualAddress;
        end
        if(_zz_182_)begin
          MemoryTranslatorPlugin_ports_1_cache_1_virtualAddress <= MemoryTranslatorPlugin_shared_readData_virtualAddress;
        end
        if(_zz_183_)begin
          MemoryTranslatorPlugin_ports_1_cache_2_virtualAddress <= MemoryTranslatorPlugin_shared_readData_virtualAddress;
        end
        if(_zz_184_)begin
          MemoryTranslatorPlugin_ports_1_cache_3_virtualAddress <= MemoryTranslatorPlugin_shared_readData_virtualAddress;
        end
        if(_zz_181_)begin
          MemoryTranslatorPlugin_ports_1_cache_0_physicalAddress <= MemoryTranslatorPlugin_shared_readData_physicalAddress;
        end
        if(_zz_182_)begin
          MemoryTranslatorPlugin_ports_1_cache_1_physicalAddress <= MemoryTranslatorPlugin_shared_readData_physicalAddress;
        end
        if(_zz_183_)begin
          MemoryTranslatorPlugin_ports_1_cache_2_physicalAddress <= MemoryTranslatorPlugin_shared_readData_physicalAddress;
        end
        if(_zz_184_)begin
          MemoryTranslatorPlugin_ports_1_cache_3_physicalAddress <= MemoryTranslatorPlugin_shared_readData_physicalAddress;
        end
        if(_zz_181_)begin
          MemoryTranslatorPlugin_ports_1_cache_0_allowRead <= MemoryTranslatorPlugin_shared_readData_allowRead;
        end
        if(_zz_182_)begin
          MemoryTranslatorPlugin_ports_1_cache_1_allowRead <= MemoryTranslatorPlugin_shared_readData_allowRead;
        end
        if(_zz_183_)begin
          MemoryTranslatorPlugin_ports_1_cache_2_allowRead <= MemoryTranslatorPlugin_shared_readData_allowRead;
        end
        if(_zz_184_)begin
          MemoryTranslatorPlugin_ports_1_cache_3_allowRead <= MemoryTranslatorPlugin_shared_readData_allowRead;
        end
        if(_zz_181_)begin
          MemoryTranslatorPlugin_ports_1_cache_0_allowWrite <= MemoryTranslatorPlugin_shared_readData_allowWrite;
        end
        if(_zz_182_)begin
          MemoryTranslatorPlugin_ports_1_cache_1_allowWrite <= MemoryTranslatorPlugin_shared_readData_allowWrite;
        end
        if(_zz_183_)begin
          MemoryTranslatorPlugin_ports_1_cache_2_allowWrite <= MemoryTranslatorPlugin_shared_readData_allowWrite;
        end
        if(_zz_184_)begin
          MemoryTranslatorPlugin_ports_1_cache_3_allowWrite <= MemoryTranslatorPlugin_shared_readData_allowWrite;
        end
        if(_zz_181_)begin
          MemoryTranslatorPlugin_ports_1_cache_0_allowExecute <= MemoryTranslatorPlugin_shared_readData_allowExecute;
        end
        if(_zz_182_)begin
          MemoryTranslatorPlugin_ports_1_cache_1_allowExecute <= MemoryTranslatorPlugin_shared_readData_allowExecute;
        end
        if(_zz_183_)begin
          MemoryTranslatorPlugin_ports_1_cache_2_allowExecute <= MemoryTranslatorPlugin_shared_readData_allowExecute;
        end
        if(_zz_184_)begin
          MemoryTranslatorPlugin_ports_1_cache_3_allowExecute <= MemoryTranslatorPlugin_shared_readData_allowExecute;
        end
        if(_zz_181_)begin
          MemoryTranslatorPlugin_ports_1_cache_0_allowUser <= MemoryTranslatorPlugin_shared_readData_allowUser;
        end
        if(_zz_182_)begin
          MemoryTranslatorPlugin_ports_1_cache_1_allowUser <= MemoryTranslatorPlugin_shared_readData_allowUser;
        end
        if(_zz_183_)begin
          MemoryTranslatorPlugin_ports_1_cache_2_allowUser <= MemoryTranslatorPlugin_shared_readData_allowUser;
        end
        if(_zz_184_)begin
          MemoryTranslatorPlugin_ports_1_cache_3_allowUser <= MemoryTranslatorPlugin_shared_readData_allowUser;
        end
      end
    end
    if(_zz_315_)begin
      MemoryTranslatorPlugin_ports_1_sharedIterator <= (9'b000000000);
      MemoryTranslatorPlugin_ports_1_sharedAccessAsked <= 1'b0;
    end
    if(_zz_360_)begin
      case(_zz_361_)
        2'b00 : begin
          execute_MemoryTranslatorPlugin_tlbWriteBuffer <= _zz_399_[19:0];
        end
        2'b01 : begin
        end
        2'b10 : begin
        end
        default : begin
        end
      endcase
    end
    if(_zz_358_)begin
      if(_zz_359_)begin
        memory_DivPlugin_rs1[31 : 0] <= _zz_451_[31:0];
        memory_DivPlugin_accumulator[31 : 0] <= ((! _zz_213_[32]) ? _zz_452_ : _zz_453_);
        if((memory_DivPlugin_div_counter_value == (6'b100000)))begin
          memory_DivPlugin_div_result <= _zz_454_[31:0];
        end
      end
    end
    if(_zz_373_)begin
      memory_DivPlugin_accumulator <= (65'b00000000000000000000000000000000000000000000000000000000000000000);
      memory_DivPlugin_rs1 <= ((_zz_216_ ? (~ _zz_217_) : _zz_217_) + _zz_460_);
      memory_DivPlugin_rs2 <= ((_zz_215_ ? (~ execute_RS2) : execute_RS2) + _zz_462_);
      memory_DivPlugin_div_needRevert <= ((_zz_216_ ^ (_zz_215_ && (! execute_INSTRUCTION[13]))) && (! (((execute_RS2 == (32'b00000000000000000000000000000000)) && execute_IS_RS2_SIGNED) && (! execute_INSTRUCTION[13]))));
    end
    if(_zz_220_)begin
      _zz_222_ <= _zz_60_[11 : 7];
      _zz_223_ <= _zz_94_;
    end
    CsrPlugin_mcycle <= (CsrPlugin_mcycle + (64'b0000000000000000000000000000000000000000000000000000000000000001));
    if(writeBack_arbitration_isFiring)begin
      CsrPlugin_minstret <= (CsrPlugin_minstret + (64'b0000000000000000000000000000000000000000000000000000000000000001));
    end
    if(decode_exception_agregat_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= decode_exception_agregat_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= decode_exception_agregat_payload_badAddr;
    end
    if(memory_exception_agregat_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= memory_exception_agregat_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= memory_exception_agregat_payload_badAddr;
    end
    if(writeBack_exception_agregat_valid)begin
      CsrPlugin_exceptionPortCtrl_exceptionContext_code <= writeBack_exception_agregat_payload_code;
      CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr <= writeBack_exception_agregat_payload_badAddr;
    end
    if((CsrPlugin_exception || CsrPlugin_interruptJump))begin
      case(CsrPlugin_targetPrivilege)
        2'b01 : begin
          CsrPlugin_sepc <= writeBack_PC;
        end
        2'b11 : begin
          CsrPlugin_mepc <= writeBack_PC;
        end
        default : begin
        end
      endcase
    end
    if(_zz_365_)begin
      case(CsrPlugin_targetPrivilege)
        2'b01 : begin
          CsrPlugin_scause_interrupt <= CsrPlugin_interrupt;
          CsrPlugin_scause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_stval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
        end
        2'b11 : begin
          CsrPlugin_mcause_interrupt <= CsrPlugin_interrupt;
          CsrPlugin_mcause_exceptionCode <= CsrPlugin_trapCause;
          CsrPlugin_mtval <= CsrPlugin_exceptionPortCtrl_exceptionContext_badAddr;
        end
        default : begin
        end
      endcase
    end
    externalInterruptArray_regNext <= externalInterruptArray;
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_INSTRUCTION <= _zz_33_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_INSTRUCTION <= execute_INSTRUCTION;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_LESS_UNSIGNED <= decode_SRC_LESS_UNSIGNED;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_CALC <= execute_BRANCH_CALC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_MANAGMENT <= decode_MEMORY_MANAGMENT;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS2_SIGNED <= decode_IS_RS2_SIGNED;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_BITWISE_CTRL <= _zz_25_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_WRITE_OPCODE <= decode_CSR_WRITE_OPCODE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_RS1_SIGNED <= decode_IS_RS1_SIGNED;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_DATA <= _zz_39_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_LL <= execute_MUL_LL;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MUL_LOW <= memory_MUL_LOW;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS2 <= decode_RS2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_FLUSH_ALL <= decode_FLUSH_ALL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_FLUSH_ALL <= execute_FLUSH_ALL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_LH <= execute_MUL_LH;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_HH <= execute_MUL_HH;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MUL_HH <= memory_MUL_HH;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC_USE_SUB_LESS <= decode_SRC_USE_SUB_LESS;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_EXECUTE_STAGE <= decode_BYPASSABLE_EXECUTE_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_MUL <= decode_IS_MUL;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_MUL <= execute_IS_MUL;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_IS_MUL <= memory_IS_MUL;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_REGFILE_WRITE_VALID <= decode_REGFILE_WRITE_VALID;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_REGFILE_WRITE_VALID <= execute_REGFILE_WRITE_VALID;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_REGFILE_WRITE_VALID <= memory_REGFILE_WRITE_VALID;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BRANCH_DO <= execute_BRANCH_DO;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ADDRESS_LOW <= execute_MEMORY_ADDRESS_LOW;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ADDRESS_LOW <= memory_MEMORY_ADDRESS_LOW;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BYPASSABLE_MEMORY_STAGE <= decode_BYPASSABLE_MEMORY_STAGE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_BYPASSABLE_MEMORY_STAGE <= execute_BYPASSABLE_MEMORY_STAGE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SHIFT_CTRL <= _zz_22_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SHIFT_CTRL <= _zz_19_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_DO_EBREAK <= decode_DO_EBREAK;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_CSR <= decode_IS_CSR;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_SHIFT_RIGHT <= execute_SHIFT_RIGHT;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_FENCEI <= decode_IS_FENCEI;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MUL_HL <= execute_MUL_HL;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PREDICTION_HAD_BRANCHED2 <= decode_PREDICTION_HAD_BRANCHED2;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_CSR_READ_OPCODE <= decode_CSR_READ_OPCODE;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC2_CTRL <= _zz_17_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_DIV <= decode_IS_DIV;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_IS_DIV <= execute_IS_DIV;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_FORMAL_PC_NEXT <= _zz_100_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_FORMAL_PC_NEXT <= execute_FORMAL_PC_NEXT;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_FORMAL_PC_NEXT <= _zz_99_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_BRANCH_CTRL <= _zz_14_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ENV_CTRL <= _zz_12_;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_ENV_CTRL <= _zz_9_;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_ENV_CTRL <= _zz_7_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_ALU_CTRL <= _zz_5_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_RS1 <= decode_RS1;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_WR <= decode_MEMORY_WR;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_WR <= execute_MEMORY_WR;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_WR <= memory_MEMORY_WR;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_PC <= decode_PC;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_PC <= _zz_52_;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_PC <= memory_PC;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_IS_TLB <= decode_IS_TLB;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_SRC1_CTRL <= _zz_2_;
    end
    if((! execute_arbitration_isStuck))begin
      decode_to_execute_MEMORY_ENABLE <= decode_MEMORY_ENABLE;
    end
    if((! memory_arbitration_isStuck))begin
      execute_to_memory_MEMORY_ENABLE <= execute_MEMORY_ENABLE;
    end
    if((! writeBack_arbitration_isStuck))begin
      memory_to_writeBack_MEMORY_ENABLE <= memory_MEMORY_ENABLE;
    end
    case(execute_CsrPlugin_csrAddress)
      12'b101111000000 : begin
      end
      12'b001100000000 : begin
      end
      12'b001100000011 : begin
      end
      12'b000101000010 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_scause_interrupt <= _zz_477_[0];
          CsrPlugin_scause_exceptionCode <= execute_CsrPlugin_writeData[3 : 0];
        end
      end
      12'b000100000000 : begin
      end
      12'b001100000010 : begin
      end
      12'b001101000001 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mepc <= execute_CsrPlugin_writeData[31 : 0];
        end
      end
      12'b101100000000 : begin
      end
      12'b101110000000 : begin
      end
      12'b001101000100 : begin
      end
      12'b001100000101 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mtvec <= execute_CsrPlugin_writeData[31 : 0];
        end
      end
      12'b000110000000 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_satp_MODE <= execute_CsrPlugin_writeData[31 : 31];
          CsrPlugin_satp_ASID <= execute_CsrPlugin_writeData[30 : 22];
          CsrPlugin_satp_PPN <= execute_CsrPlugin_writeData[21 : 0];
        end
      end
      12'b110011000000 : begin
      end
      12'b000101000001 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sepc <= execute_CsrPlugin_writeData[31 : 0];
        end
      end
      12'b000101000100 : begin
      end
      12'b001101000011 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mtval <= execute_CsrPlugin_writeData[31 : 0];
        end
      end
      12'b000100000101 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_stvec <= execute_CsrPlugin_writeData[31 : 0];
        end
      end
      12'b111111000000 : begin
      end
      12'b110000000000 : begin
      end
      12'b001101000000 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mscratch <= execute_CsrPlugin_writeData[31 : 0];
        end
      end
      12'b001100000100 : begin
      end
      12'b000101000011 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_stval <= execute_CsrPlugin_writeData[31 : 0];
        end
      end
      12'b000101000000 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_sscratch <= execute_CsrPlugin_writeData[31 : 0];
        end
      end
      12'b110010000000 : begin
      end
      12'b001101000010 : begin
        if(execute_CsrPlugin_writeEnable)begin
          CsrPlugin_mcause_interrupt <= _zz_485_[0];
          CsrPlugin_mcause_exceptionCode <= execute_CsrPlugin_writeData[3 : 0];
        end
      end
      12'b000100000100 : begin
      end
      default : begin
      end
    endcase
    iBusWishbone_DAT_MISO_regNext <= iBusWishbone_DAT_MISO;
    dBusWishbone_DAT_MISO_regNext <= dBusWishbone_DAT_MISO;
  end

  always @ (posedge clk) begin
    DebugPlugin_firstCycle <= 1'b0;
    if(debug_bus_cmd_ready)begin
      DebugPlugin_firstCycle <= 1'b1;
    end
    DebugPlugin_secondCycle <= DebugPlugin_firstCycle;
    DebugPlugin_isPipActive <= (((decode_arbitration_isValid || execute_arbitration_isValid) || memory_arbitration_isValid) || writeBack_arbitration_isValid);
    DebugPlugin_isPipActive_regNext <= DebugPlugin_isPipActive;
    if(writeBack_arbitration_isValid)begin
      DebugPlugin_busReadDataReg <= _zz_94_;
    end
    _zz_259_ <= debug_bus_cmd_payload_address[2];
    if(_zz_362_)begin
      DebugPlugin_busReadDataReg <= execute_PC;
    end
    DebugPlugin_resetIt_regNext <= DebugPlugin_resetIt;
  end

  always @ (posedge clk) begin
    if(debugReset) begin
      DebugPlugin_resetIt <= 1'b0;
      DebugPlugin_haltIt <= 1'b0;
      DebugPlugin_stepIt <= 1'b0;
      DebugPlugin_haltedByBreak <= 1'b0;
    end else begin
      if(debug_bus_cmd_valid)begin
        case(_zz_374_)
          6'b000000 : begin
            if(debug_bus_cmd_payload_wr)begin
              DebugPlugin_stepIt <= debug_bus_cmd_payload_data[4];
              if(debug_bus_cmd_payload_data[16])begin
                DebugPlugin_resetIt <= 1'b1;
              end
              if(debug_bus_cmd_payload_data[24])begin
                DebugPlugin_resetIt <= 1'b0;
              end
              if(debug_bus_cmd_payload_data[17])begin
                DebugPlugin_haltIt <= 1'b1;
              end
              if(debug_bus_cmd_payload_data[25])begin
                DebugPlugin_haltIt <= 1'b0;
              end
              if(debug_bus_cmd_payload_data[25])begin
                DebugPlugin_haltedByBreak <= 1'b0;
              end
            end
          end
          6'b000001 : begin
          end
          default : begin
          end
        endcase
      end
      if(_zz_362_)begin
        if(_zz_363_)begin
          DebugPlugin_haltIt <= 1'b1;
          DebugPlugin_haltedByBreak <= 1'b1;
        end
      end
      if(_zz_364_)begin
        if(decode_arbitration_isValid)begin
          DebugPlugin_haltIt <= 1'b1;
        end
      end
      if((DebugPlugin_stepIt && ({writeBack_arbitration_redoIt,{memory_arbitration_redoIt,{execute_arbitration_redoIt,decode_arbitration_redoIt}}} != (4'b0000))))begin
        DebugPlugin_haltIt <= 1'b0;
      end
    end
  end

  always @ (posedge clk) begin
    _zz_261_ <= debug_bus_cmd_payload_data;
  end

endmodule

