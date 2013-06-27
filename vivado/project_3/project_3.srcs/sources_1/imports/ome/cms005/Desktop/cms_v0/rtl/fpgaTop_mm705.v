// fpgaTop_kc705.v - the top-level Verilog for the Xilinx KC705 board
// Copyright (c) 2011-2012 Atomic Rules LLC - ALL RIGHTS RESERVED
//

module fpgaTop (
  input  wire        sys0_clkp,      // sys0 Clock +
  input  wire        sys0_clkn,      // sys0 Clock -
  input  wire        sys0_rst,       // sys0 Reset (active high)
  input  wire        sys1_clkp,      // sys1 Clock +
  input  wire        sys1_clkn,      // sys1 Clock -

//  output wire [3:0]  lcd_db,
//  output wire        lcd_e,
//  output wire        lcd_rs,
//  output wire        lcd_rw,
  output wire [7:0]  led,
  
  output wire        gmii_rstn,      // Alaska GMII...
  output wire        gmii_gtx_clk,
  output wire [7:0]  gmii_txd,
  output wire        gmii_tx_en,
  output wire        gmii_tx_er,
  input  wire        gmii_rx_clk,
  input  wire [7:0]  gmii_rxd,
  input  wire        gmii_rx_dv,
  input  wire        gmii_rx_er,
  output wire        mdio_mdc,       // Alaska MDIO...
  inout  wire        mdio_mdd,
  input  wire        gmii_col,
  input  wire        gmii_crs,
  input  wire        gmii_intr

);

//ECO here
wire sys0_clk, sys0_clki;
IBUFGDS clock_buf( .O(sys0_clki), .I(sys0_clkp), .IB(sys0_clkn));
BUFG sys0_bufg(.O(sys0_clk), .I(sys0_clki));


wire gmii_led;
// Instance and connect mkFTop...
 mkFTop_mm705 ftop(
  .sys0_clk           (sys0_clk),
  .sys0_rstn          (!sys0_rst),   // Invert to make active-low

  .CLK_sys1_clkp       (sys1_clkp),
  .CLK_sys1_clkn       (sys1_clkn),

//  .lcd_db            (lcd_db),
//  .lcd_e             (lcd_e),
//  .lcd_rs            (lcd_rs),
//  .lcd_rw            (lcd_rw),

  .RST_N_gmii_rstn    (gmii_rstn),
  .gmii_tx_txd        (gmii_txd),
  .gmii_tx_tx_en      (gmii_tx_en),
  .gmii_tx_tx_er      (gmii_tx_er),
  .CLK_gmii_tx_tx_clk (gmii_gtx_clk),
  .gmii_rx_rxd_i      (gmii_rxd),
  .gmii_rx_rx_dv_i    (gmii_rx_dv),
  .gmii_rx_rx_er_i    (gmii_rx_er),
  .CLK_gmii_rx_clk    (gmii_rx_clk),    //could rename bsv clock input
  .gmii_col_i         (gmii_col),
  .gmii_crs_i         (gmii_crs),
  .gmii_intr_i        (gmii_intr),
  .mdio_mdc           (mdio_mdc),
  .mdio_mdd           (mdio_mdd),
  .gmii_led           (gmii_led),

  .ledOut             (led)
);

endmodule
