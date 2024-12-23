## Clock Signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

## Reset Signal
set_property PACKAGE_PIN U18 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

## Input: 'in' (2-bit)
# Use switches for input
set_property PACKAGE_PIN V17 [get_ports {in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in[0]}]
set_property PACKAGE_PIN V16 [get_ports {in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {in[1]}]

## Output: 'out'
# Use an LED to indicate output
set_property PACKAGE_PIN U16 [get_ports out]
set_property IOSTANDARD LVCMOS33 [get_ports out]

## Output: 'change' (2-bit)
# Use LEDs to indicate change
set_property PACKAGE_PIN U17 [get_ports {change[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {change[0]}]
set_property PACKAGE_PIN T18 [get_ports {change[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {change[1]}]
