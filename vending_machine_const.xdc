## Inputs
# Clock
set_property PACKAGE_PIN W5 [get_ports clk];               # Clock input (100 MHz)
set_property IOSTANDARD LVCMOS33 [get_ports clk];

# Reset Button
set_property PACKAGE_PIN U18 [get_ports rst];              # Reset (BTN C on Basys-3)
set_property IOSTANDARD LVCMOS33 [get_ports rst];

# Input Selector (2-bit input)
set_property PACKAGE_PIN V17 [get_ports in[0]];            # Input 0 (Switch 0)
set_property PACKAGE_PIN V16 [get_ports in[1]];            # Input 1 (Switch 1)
set_property IOSTANDARD LVCMOS33 [get_ports in[*]];

## Outputs
# Output Indicator (LED 0)
set_property PACKAGE_PIN U19 [get_ports out];              # Output to LED 0
set_property IOSTANDARD LVCMOS33 [get_ports out];

# Change (2-bit output)
set_property PACKAGE_PIN V19 [get_ports change[0]];        # Change 0 (LED 1)
set_property PACKAGE_PIN W18 [get_ports change[1]];        # Change 1 (LED 2)
set_property IOSTANDARD LVCMOS33 [get_ports change[*]];
