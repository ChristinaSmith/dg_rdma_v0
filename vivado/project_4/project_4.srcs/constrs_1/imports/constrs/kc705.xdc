## Timing Assertions Section

set_property IOSTANDARD LVDS  [get_ports sys0_clkp]
set_property LOC AD12 [get_ports sys0_clkp]
set_property IOSTANDARD LVDS  [get_ports sys0_clkn]
set_property LOC AD11 [get_ports sys0_clkn]
set_property IOSTANDARD LVCMOS15  [get_ports sys0_rst]
set_property LOC AB7 [get_ports sys0_rst]
set_property LOC G8 [get_ports sys1_clkp]
set_property LOC G7 [get_ports sys1_clkn]


## Timing Exceptions Section
create_clock -name sys0_clkp -period 8 -waveform {0 4} [get_ports sys0_clkp]
create_clock -name sys1_clkp -period 8 -waveform {0 4} [get_ports sys1_clkp]

## Physical Constraints Section

## led constraints
set_property LOC AB8 [get_ports led[0]]
set_property IOSTANDARD LVCMOS15  [get_ports led[0]]
set_property SLEW SLOW [get_ports led[0]]
set_property DRIVE 4 [get_ports led[0]]
set_property LOC AA8 [get_ports led[1]]
set_property IOSTANDARD LVCMOS15  [get_ports led[1]]
set_property SLEW SLOW [get_ports led[1]]
set_property DRIVE 4 [get_ports led[1]]
set_property LOC AC9 [get_ports led[2]]
set_property IOSTANDARD LVCMOS15  [get_ports led[2]]
set_property SLEW SLOW [get_ports led[2]]
set_property DRIVE 4 [get_ports led[2]]
set_property LOC AB9 [get_ports led[3]]
set_property IOSTANDARD LVCMOS15  [get_ports led[3]]
set_property SLEW SLOW [get_ports led[3]]
set_property DRIVE 4 [get_ports led[3]]
set_property LOC AE26 [get_ports led[4]]
set_property IOSTANDARD LVCMOS15  [get_ports led[4]]
set_property SLEW SLOW [get_ports led[4]]
set_property DRIVE 4 [get_ports led[4]]
set_property LOC G19 [get_ports led[5]]
set_property IOSTANDARD LVCMOS15  [get_ports led[5]]
set_property SLEW SLOW [get_ports led[5]]
set_property DRIVE 4 [get_ports led[5]]
set_property LOC E18 [get_ports led[6]]
set_property IOSTANDARD LVCMOS15  [get_ports led[6]]
set_property SLEW SLOW [get_ports led[6]]
set_property DRIVE 4 [get_ports led[6]]
set_property LOC F16 [get_ports led[7]]
set_property IOSTANDARD LVCMOS15  [get_ports led[7]]
set_property SLEW SLOW [get_ports led[7]]
set_property DRIVE 4 [get_ports led[7]]
#
### lcd constraints
#set_property LOC Y10 [get_ports lcd_db[3]]
#set_property IOSTANDARD LVCMOS15  [get_ports lcd_db[3]]
#set_property SLEW SLOW [get_ports lcd_db[3]]
#set_property DRIVE 4 [get_ports lcd_db[3]]
#set_property LOC AA11 [get_ports lcd_db[2]]
#set_property IOSTANDARD LVCMOS15  [get_ports lcd_db[2]]
#set_property SLEW SLOW [get_ports lcd_db[2]]
#set_property DRIVE 4 [get_ports lcd_db[2]]
#set_property LOC AA10 [get_ports lcd_db[1]]
#set_property IOSTANDARD LVCMOS15  [get_ports lcd_db[1]]
#set_property SLEW SLOW [get_ports lcd_db[1]]
#set_property DRIVE 4 [get_ports lcd_db[1]]
#set_property LOC AA13 [get_ports lcd_db[0]]
#set_property IOSTANDARD LVCMOS15  [get_ports lcd_db[0]]
#set_property SLEW SLOW [get_ports lcd_db[0]]
#set_property DRIVE 4 [get_ports lcd_db[0]]
#set_property LOC AB10 [get_ports lcd_e]
#set_property IOSTANDARD LVCMOS15  [get_ports lcd_e]
#set_property SLEW SLOW [get_ports lcd_e]
#set_property DRIVE 4 [get_ports lcd_e]
#set_property LOC Y11 [get_ports lcd_rs]
#set_property IOSTANDARD LVCMOS15  [get_ports lcd_rs]
#set_property SLEW SLOW [get_ports lcd_rs]
#set_property DRIVE 4 [get_ports lcd_rs]
#set_property LOC AB13 [get_ports lcd_rw]
#set_property IOSTANDARD LVCMOS15  [get_ports lcd_rw]
#set_property SLEW SLOW [get_ports lcd_rw]
#set_property DRIVE 4 [get_ports lcd_rw]

## gmac phy constraints
set_property IOSTANDARD LVCMOS25 [get_ports gmii_txd*]
set_property LOC N27 [get_ports gmii_txd[0]]
set_property LOC N25 [get_ports gmii_txd[1]]
set_property LOC M29 [get_ports gmii_txd[2]]
set_property LOC L28 [get_ports gmii_txd[3]]
set_property LOC J26 [get_ports gmii_txd[4]]
set_property LOC K26 [get_ports gmii_txd[5]]
set_property LOC L30 [get_ports gmii_txd[6]]
set_property LOC J28 [get_ports gmii_txd[7]]

set_property IOSTANDARD LVCMOS25 [get_ports gmii_tx_en]
set_property LOC M27 [get_ports gmii_tx_en]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_tx_er]
set_property LOC N29 [get_ports gmii_tx_er]
#set_property IOSTANDARD LVCMOS25 [get_ports gmii_gtx_clk]
#set_property LOC M28 [get_ports gmii_gtx_clk]

set_property IOSTANDARD LVCMOS25 [get_ports gmii_rxd*]
set_property LOC U30 [get_ports gmii_rxd[0]]
set_property LOC U25 [get_ports gmii_rxd[1]]
set_property LOC T25 [get_ports gmii_rxd[2]]
set_property LOC U28 [get_ports gmii_rxd[3]]
set_property LOC R19 [get_ports gmii_rxd[4]]
set_property LOC T27 [get_ports gmii_rxd[5]]
set_property LOC T26 [get_ports gmii_rxd[6]]
set_property LOC T28 [get_ports gmii_rxd[7]]

set_property IOSTANDARD LVCMOS25 [get_ports gmii_rx_dv]
set_property LOC R28 [get_ports gmii_rx_dv]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rx_er]
set_property LOC V26 [get_ports gmii_rx_er]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rx_clk]
set_property LOC U27 [get_ports gmii_rx_clk]
#
#
set_property IOSTANDARD LVCMOS25 [get_ports gmii_col]
set_property LOC W19 [get_ports gmii_col]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_crs]
set_property LOC R30 [get_ports gmii_crs]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_intr]
set_property LOC N30 [get_ports gmii_intr]
set_property IOSTANDARD LVCMOS25 [get_ports mdio_mdc]
set_property LOC R23 [get_ports mdio_mdc]
set_property IOSTANDARD LVCMOS25 [get_ports mdio_mdd]
set_property LOC J21 [get_ports mdio_mdd]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_rstn]
set_property LOC L20 [get_ports gmii_rstn]
set_property IOSTANDARD LVCMOS25 [get_ports gmii_gtx_clk]
set_property LOC K30 [get_ports gmii_gtx_clk]

create_clock -name GMII_RX_CLK -period 8 -waveform {0 4} [get_ports gmii_rx_clk]
set_input_delay -clock GMII_RX_CLK -max 5.5 [get_ports gmii_rxd*]
set_input_delay -clock GMII_RX_CLK -min 0.5 [get_ports gmii_rxd*]
set_input_delay -clock GMII_RX_CLK -max 5.5 [get_ports gmii_rx_dv]
set_input_delay -clock GMII_RX_CLK -min 0.5 [get_ports gmii_rx_dv]
set_input_delay -clock GMII_RX_CLK -max 5.5 [get_ports gmii_rx_er]
set_input_delay -clock GMII_RX_CLK -min 0.5 [get_ports gmii_rx_er]

# These gmii_TX signals are source-synchronous to gmii_gtx_clk
# Their output-delay is not important. They must be skew-matched to txRS_iobTxClk
create_clock -name GMII_GTX_CLK -period 8 -waveform {0 4} [get_ports sys1_clkp]
#set_output_delay -clock GMII_GTX_CLK 2 [get_ports gmii_txd*]
#set_output_delay -clock GMII_GTX_CLK 2 [get_ports gmii_tx_en]
#set_output_delay -clock GMII_GTX_CLK 2 [get_ports gmii_tx_er]

