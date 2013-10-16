
# (C) 2001-2013 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 12.1 177 win32 2013.10.16.13:02:54

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize the variable
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
} 

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "Clean_Beats_Nios2"
} elseif { ![ string match "" $TOP_LEVEL_NAME ] } { 
  set TOP_LEVEL_NAME "$TOP_LEVEL_NAME"
} 

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
} elseif { ![ string match "" $QSYS_SIMDIR ] } { 
  set QSYS_SIMDIR "$QSYS_SIMDIR"
} 


# ----------------------------------------
# Copy ROM/RAM files to simulation directory
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_on_Chip_RAM.hex ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_on_Chip_ROM.hex ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_bht_ram.dat ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_bht_ram.hex ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_bht_ram.mif ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_dc_tag_ram.dat ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_dc_tag_ram.hex ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_dc_tag_ram.mif ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ic_tag_ram.dat ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ic_tag_ram.hex ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ic_tag_ram.mif ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ociram_default_contents.dat ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ociram_default_contents.hex ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ociram_default_contents.mif ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_a.dat ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_a.hex ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_a.mif ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_b.dat ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_b.hex ./
file copy -force $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_b.mif ./

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
  ensure_lib                  ./libraries/altera_ver/      
  vmap       altera_ver       ./libraries/altera_ver/      
  ensure_lib                  ./libraries/lpm_ver/         
  vmap       lpm_ver          ./libraries/lpm_ver/         
  ensure_lib                  ./libraries/sgate_ver/       
  vmap       sgate_ver        ./libraries/sgate_ver/       
  ensure_lib                  ./libraries/altera_mf_ver/   
  vmap       altera_mf_ver    ./libraries/altera_mf_ver/   
  ensure_lib                  ./libraries/altera_lnsim_ver/
  vmap       altera_lnsim_ver ./libraries/altera_lnsim_ver/
  ensure_lib                  ./libraries/cycloneiii_ver/  
  vmap       cycloneiii_ver   ./libraries/cycloneiii_ver/  
  ensure_lib                  ./libraries/altera/          
  vmap       altera           ./libraries/altera/          
  ensure_lib                  ./libraries/lpm/             
  vmap       lpm              ./libraries/lpm/             
  ensure_lib                  ./libraries/sgate/           
  vmap       sgate            ./libraries/sgate/           
  ensure_lib                  ./libraries/altera_mf/       
  vmap       altera_mf        ./libraries/altera_mf/       
  ensure_lib                  ./libraries/altera_lnsim/    
  vmap       altera_lnsim     ./libraries/altera_lnsim/    
  ensure_lib                  ./libraries/cycloneiii/      
  vmap       cycloneiii       ./libraries/cycloneiii/      
}
ensure_lib                 ./libraries/RS232_UART/     
vmap       RS232_UART      ./libraries/RS232_UART/     
ensure_lib                 ./libraries/on_Chip_RAM/    
vmap       on_Chip_RAM     ./libraries/on_Chip_RAM/    
ensure_lib                 ./libraries/on_Chip_ROM/    
vmap       on_Chip_ROM     ./libraries/on_Chip_ROM/    
ensure_lib                 ./libraries/nios2_processor/
vmap       nios2_processor ./libraries/nios2_processor/

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if { ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] } {
    vlog     "c:/altera/12.1/quartus/eda/sim_lib/altera_primitives.v"              -work altera_ver      
    vlog     "c:/altera/12.1/quartus/eda/sim_lib/220model.v"                       -work lpm_ver         
    vlog     "c:/altera/12.1/quartus/eda/sim_lib/sgate.v"                          -work sgate_ver       
    vlog     "c:/altera/12.1/quartus/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver   
    vlog -sv "c:/altera/12.1/quartus/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"  -work altera_lnsim_ver
    vlog     "c:/altera/12.1/quartus/eda/sim_lib/cycloneiii_atoms.v"               -work cycloneiii_ver  
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/altera_syn_attributes.vhd"        -work altera          
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/altera_standard_functions.vhd"    -work altera          
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera          
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera          
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/altera_primitives_components.vhd" -work altera          
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/altera_primitives.vhd"            -work altera          
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/220pack.vhd"                      -work lpm             
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/220model.vhd"                     -work lpm             
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/sgate_pack.vhd"                   -work sgate           
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/sgate.vhd"                        -work sgate           
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf       
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/altera_mf.vhd"                    -work altera_mf       
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim    
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/cycloneiii_atoms.vhd"             -work cycloneiii      
    vcom     "c:/altera/12.1/quartus/eda/sim_lib/cycloneiii_components.vhd"        -work cycloneiii      
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog "$QSYS_SIMDIR/submodules/altera_up_rs232_counters.v"                                      -work RS232_UART     
  vlog "$QSYS_SIMDIR/submodules/altera_up_rs232_in_deserializer.v"                               -work RS232_UART     
  vlog "$QSYS_SIMDIR/submodules/altera_up_rs232_out_serializer.v"                                -work RS232_UART     
  vlog "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                                           -work RS232_UART     
  vcom "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_RS232_UART.vhd"                                -work RS232_UART     
  vcom "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_on_Chip_RAM.vhd"                               -work on_Chip_RAM    
  vcom "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_on_Chip_ROM.vhd"                               -work on_Chip_ROM    
  vcom "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor.vho"                           -work nios2_processor
  vcom "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_jtag_debug_module_sysclk.vhd"  -work nios2_processor
  vcom "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_jtag_debug_module_tck.vhd"     -work nios2_processor
  vcom "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_jtag_debug_module_wrapper.vhd" -work nios2_processor
  vcom "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_mult_cell.vhd"                 -work nios2_processor
  vcom "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_oci_test_bench.vhd"            -work nios2_processor
  vcom "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_test_bench.vhd"                -work nios2_processor
  vcom "$QSYS_SIMDIR/Clean_Beats_Nios2.vhd"                                                                           
  vcom "$QSYS_SIMDIR/clean_beats_nios2_nios2_processor_jtag_debug_module_translator.vhd"                              
  vcom "$QSYS_SIMDIR/clean_beats_nios2_on_chip_rom_s1_translator.vhd"                                                 
  vcom "$QSYS_SIMDIR/clean_beats_nios2_rs232_uart_avalon_rs232_slave_translator.vhd"                                  
  vcom "$QSYS_SIMDIR/clean_beats_nios2_sd_card_interface_avalon_sdcard_slave_translator.vhd"                          
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  vsim -t ps -L work -L work_lib -L RS232_UART -L on_Chip_RAM -L on_Chip_ROM -L nios2_processor -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  vsim -novopt -t ps -L work -L work_lib -L RS232_UART -L on_Chip_RAM -L on_Chip_ROM -L nios2_processor -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneiii_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
}
h
