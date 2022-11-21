#**************************************************************
# This .sdc file is created by Terasic Tool.
# Users are recommended to modify this file to match users logic.
#**************************************************************

#**************************************************************
# Create Clock
#**************************************************************
create_clock -name {MAX10_CLK1_50} -period "50.0 MHz" [get_ports {MAX10_CLK1_50}]
set_max_delay -to [get_ports { MAX10_CLK1_50 } ] 1.5

# SDRAM CLK
create_generated_clock -source [get_pins { u_NIOSsoc|sdram_pll|sd1|pll7|clk[1] }] \
                      -name clk_dram_ext [get_ports {DRAM_CLK}]
							 
create_clock -period "30.303 ns" -name {altera_reserved_tdi} {altera_reserved_tdi}
create_clock -period "30.303 ns" -name {altera_reserved_tms} {altera_reserved_tms}
set_max_delay -to [get_ports { altera_reserved_tdo } ] 0.9


#**************************************************************
# Create Generated Clock
#**************************************************************
derive_pll_clocks



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************
derive_clock_uncertainty



#**************************************************************
# Set Input Delay 
#**************************************************************
set_input_delay -max -clock clk_dram_ext 5.9 [get_ports DRAM_DQ*]
set_input_delay -min -clock clk_dram_ext 3.0 [get_ports DRAM_DQ*]

#shift-window
set_multicycle_path -from [get_clocks {clk_dram_ext}] \
                    -to [get_clocks { u_NIOSsoc|sdram_pll|sd1|pll7|clk[0] }] \
						  -setup 2
						  
#**************************************************************
# Set Output Delay
#**************************************************************
set_output_delay -max -clock clk_dram_ext 1.6  [get_ports {DRAM_DQ* DRAM_*DQM}]
set_output_delay -min -clock clk_dram_ext -0.9 [get_ports {DRAM_DQ* DRAM_*DQM}]
set_output_delay -max -clock clk_dram_ext 1.6  [get_ports {DRAM_ADDR* DRAM_BA* DRAM_RAS_N DRAM_CAS_N DRAM_WE_N DRAM_CKE DRAM_CS_N}]
set_output_delay -min -clock clk_dram_ext -0.9 [get_ports {DRAM_ADDR* DRAM_BA* DRAM_RAS_N DRAM_CAS_N DRAM_WE_N DRAM_CKE DRAM_CS_N}]

set_output_delay -max -clock MAX10_CLK1_50 1.6 [get_ports altera_reserved_tdo*]
set_output_delay -min -clock MAX10_CLK1_50 -0.9 [get_ports altera_reserved_tdo*]

#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************



#**************************************************************
# Set Load
#**************************************************************



