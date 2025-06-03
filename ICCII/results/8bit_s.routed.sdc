################################################################################
#
# Design name:  8_sub
#
# Created by icc2 write_sdc on Mon Jun  2 15:15:37 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: nom
# Scenario: func::nom

# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 1
create_clock -name clk -period 1.1 -waveform {0 0.55} [get_ports {clk}]
# Warning: Libcell power domain derates are skipped!

set_clock_uncertainty -setup 0.3 [get_clocks {clk}]
set_clock_uncertainty -hold 0.1 [get_clocks {clk}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {clk}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {a[7]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {a[6]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {a[5]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {a[4]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {a[3]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {a[2]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {a[1]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {a[0]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {b[7]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {b[6]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {b[5]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {b[4]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {b[3]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {b[2]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {b[1]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 4
set_input_transition 0.5 [get_ports {b[0]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {clk}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {a[7]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {a[6]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {a[5]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {a[4]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {a[3]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {a[2]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {a[1]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {a[0]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {b[7]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {b[6]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {b[5]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {b[4]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {b[3]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {b[2]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {b[1]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 3
set_input_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {b[0]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 6
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {result[7]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 6
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {result[6]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 6
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {result[5]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 6
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {result[4]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 6
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {result[3]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 6
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {result[2]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 6
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {result[1]}]
# /home/student/Documents/tpnew/RTL2GDSII/CONSTRAINTS/8bit_sub.sdc, line 6
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {result[0]}]
set_max_transition 0.25 [current_design]
set_max_transition 0.15 [get_clocks {clk}] -clock_path
