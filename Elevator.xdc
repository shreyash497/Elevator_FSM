## Clock
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -period 10.000 [get_ports clk]

## Reset Button
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]

## Request Up Button
set_property PACKAGE_PIN T18 [get_ports req_up]
set_property IOSTANDARD LVCMOS33 [get_ports req_up]

## Request Down Button
set_property PACKAGE_PIN W19 [get_ports req_down]
set_property IOSTANDARD LVCMOS33 [get_ports req_down]

## Output (LED for floor)
set_property PACKAGE_PIN U16 [get_ports floor]
set_property IOSTANDARD LVCMOS33 [get_ports floor]