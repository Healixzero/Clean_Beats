
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

# ACDS 12.1 177 win32 2013.10.16.13:02:58

# ----------------------------------------
# ncsim - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="Clean_Beats_Nios2"
QSYS_SIMDIR="./../"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="-input \"@run 100; exit\""

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/RS232_UART/
mkdir -p ./libraries/on_Chip_RAM/
mkdir -p ./libraries/on_Chip_ROM/
mkdir -p ./libraries/nios2_processor/
mkdir -p ./libraries/altera_ver/
mkdir -p ./libraries/lpm_ver/
mkdir -p ./libraries/sgate_ver/
mkdir -p ./libraries/altera_mf_ver/
mkdir -p ./libraries/altera_lnsim_ver/
mkdir -p ./libraries/cycloneiii_ver/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cycloneiii/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_on_Chip_RAM.hex ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_on_Chip_ROM.hex ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_bht_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_bht_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_bht_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_dc_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_dc_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_dc_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_rf_ram_b.mif ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  ncvlog      "c:/altera/12.1/quartus/eda/sim_lib/altera_primitives.v"              -work altera_ver      
  ncvlog      "c:/altera/12.1/quartus/eda/sim_lib/220model.v"                       -work lpm_ver         
  ncvlog      "c:/altera/12.1/quartus/eda/sim_lib/sgate.v"                          -work sgate_ver       
  ncvlog      "c:/altera/12.1/quartus/eda/sim_lib/altera_mf.v"                      -work altera_mf_ver   
  ncvlog -sv  "c:/altera/12.1/quartus/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim_ver
  ncvlog      "c:/altera/12.1/quartus/eda/sim_lib/cycloneiii_atoms.v"               -work cycloneiii_ver  
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/altera_syn_attributes.vhd"        -work altera          
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/altera_standard_functions.vhd"    -work altera          
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera          
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera          
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/altera_primitives_components.vhd" -work altera          
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/altera_primitives.vhd"            -work altera          
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/220pack.vhd"                      -work lpm             
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/220model.vhd"                     -work lpm             
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/sgate_pack.vhd"                   -work sgate           
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/sgate.vhd"                        -work sgate           
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf       
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/altera_mf.vhd"                    -work altera_mf       
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim    
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/cycloneiii_atoms.vhd"             -work cycloneiii      
  ncvhdl -v93 "c:/altera/12.1/quartus/eda/sim_lib/cycloneiii_components.vhd"        -work cycloneiii      
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_rs232_counters.v"                                      -work RS232_UART      -cdslib ./cds_libs/RS232_UART.cds.lib     
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_rs232_in_deserializer.v"                               -work RS232_UART      -cdslib ./cds_libs/RS232_UART.cds.lib     
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_rs232_out_serializer.v"                                -work RS232_UART      -cdslib ./cds_libs/RS232_UART.cds.lib     
  ncvlog      "$QSYS_SIMDIR/submodules/altera_up_sync_fifo.v"                                           -work RS232_UART      -cdslib ./cds_libs/RS232_UART.cds.lib     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_RS232_UART.vhd"                                -work RS232_UART      -cdslib ./cds_libs/RS232_UART.cds.lib     
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_on_Chip_RAM.vhd"                               -work on_Chip_RAM     -cdslib ./cds_libs/on_Chip_RAM.cds.lib    
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_on_Chip_ROM.vhd"                               -work on_Chip_ROM     -cdslib ./cds_libs/on_Chip_ROM.cds.lib    
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor.vho"                           -work nios2_processor -cdslib ./cds_libs/nios2_processor.cds.lib
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_jtag_debug_module_sysclk.vhd"  -work nios2_processor -cdslib ./cds_libs/nios2_processor.cds.lib
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_jtag_debug_module_tck.vhd"     -work nios2_processor -cdslib ./cds_libs/nios2_processor.cds.lib
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_jtag_debug_module_wrapper.vhd" -work nios2_processor -cdslib ./cds_libs/nios2_processor.cds.lib
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_mult_cell.vhd"                 -work nios2_processor -cdslib ./cds_libs/nios2_processor.cds.lib
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_oci_test_bench.vhd"            -work nios2_processor -cdslib ./cds_libs/nios2_processor.cds.lib
  ncvhdl -v93 "$QSYS_SIMDIR/submodules/Clean_Beats_Nios2_nios2_processor_test_bench.vhd"                -work nios2_processor -cdslib ./cds_libs/nios2_processor.cds.lib
  ncvhdl -v93 "$QSYS_SIMDIR/Clean_Beats_Nios2.vhd"                                                                                                                      
  ncvhdl -v93 "$QSYS_SIMDIR/clean_beats_nios2_nios2_processor_jtag_debug_module_translator.vhd"                                                                         
  ncvhdl -v93 "$QSYS_SIMDIR/clean_beats_nios2_on_chip_rom_s1_translator.vhd"                                                                                            
  ncvhdl -v93 "$QSYS_SIMDIR/clean_beats_nios2_rs232_uart_avalon_rs232_slave_translator.vhd"                                                                             
  ncvhdl -v93 "$QSYS_SIMDIR/clean_beats_nios2_sd_card_interface_avalon_sdcard_slave_translator.vhd"                                                                     
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  ncelab -access +w+r+c -namemap_mixgen -relax $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  eval ncsim $USER_DEFINED_SIM_OPTIONS $TOP_LEVEL_NAME
fi
