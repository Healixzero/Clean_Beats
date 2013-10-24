/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_processor' in SOPC Builder design 'Clean_Beats_Nios2'
 * SOPC Builder design path: Z:/GitHub/Clean_Beats/Qsys/Clean_Beats_Nios2.sopcinfo
 *
 * Generated: Wed Oct 23 16:30:22 PDT 2013
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x4820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0xf
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x3020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_ILLEGAL_MEMORY_ACCESS_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 4096
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0xf
#define ALT_CPU_NAME "nios2_processor"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_RESET_ADDR 0x3000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x4820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0xf
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x3020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_ILLEGAL_MEMORY_ACCESS_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 4096
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0xf
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_RESET_ADDR 0x3000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_NIOS2_QSYS
#define __ALTERA_UP_AVALON_RS232
#define __ALTERA_UP_SD_CARD_AVALON_INTERFACE


/*
 * RS232_UART configuration
 *
 */

#define ALT_MODULE_CLASS_RS232_UART altera_up_avalon_rs232
#define RS232_UART_BASE 0x5808
#define RS232_UART_IRQ 3
#define RS232_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define RS232_UART_NAME "/dev/RS232_UART"
#define RS232_UART_SPAN 8
#define RS232_UART_TYPE "altera_up_avalon_rs232"


/*
 * SD_Card_Interface configuration
 *
 */

#define ALT_MODULE_CLASS_SD_Card_Interface Altera_UP_SD_Card_Avalon_Interface
#define SD_CARD_INTERFACE_BASE 0x5400
#define SD_CARD_INTERFACE_IRQ -1
#define SD_CARD_INTERFACE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SD_CARD_INTERFACE_NAME "/dev/SD_Card_Interface"
#define SD_CARD_INTERFACE_SPAN 1024
#define SD_CARD_INTERFACE_TYPE "Altera_UP_SD_Card_Avalon_Interface"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone III"
#define ALT_IRQ_BASE NULL
#define ALT_LEGACY_INTERRUPT_API_PRESENT
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/null"
#define ALT_STDERR_BASE 0x0
#define ALT_STDERR_DEV null
#define ALT_STDERR_TYPE ""
#define ALT_STDIN "/dev/null"
#define ALT_STDIN_BASE 0x0
#define ALT_STDIN_DEV null
#define ALT_STDIN_TYPE ""
#define ALT_STDOUT "/dev/null"
#define ALT_STDOUT_BASE 0x0
#define ALT_STDOUT_DEV null
#define ALT_STDOUT_TYPE ""
#define ALT_SYSTEM_NAME "Clean_Beats_Nios2"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * on_Chip_RAM configuration
 *
 */

#define ALT_MODULE_CLASS_on_Chip_RAM altera_avalon_onchip_memory2
#define ON_CHIP_RAM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ON_CHIP_RAM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ON_CHIP_RAM_BASE 0x2000
#define ON_CHIP_RAM_CONTENTS_INFO ""
#define ON_CHIP_RAM_DUAL_PORT 0
#define ON_CHIP_RAM_GUI_RAM_BLOCK_TYPE "Automatic"
#define ON_CHIP_RAM_INIT_CONTENTS_FILE "on_Chip_RAM"
#define ON_CHIP_RAM_INIT_MEM_CONTENT 1
#define ON_CHIP_RAM_INSTANCE_ID "NONE"
#define ON_CHIP_RAM_IRQ -1
#define ON_CHIP_RAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ON_CHIP_RAM_NAME "/dev/on_Chip_RAM"
#define ON_CHIP_RAM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ON_CHIP_RAM_RAM_BLOCK_TYPE "Auto"
#define ON_CHIP_RAM_READ_DURING_WRITE_MODE "DONT_CARE"
#define ON_CHIP_RAM_SINGLE_CLOCK_OP 0
#define ON_CHIP_RAM_SIZE_MULTIPLE 1
#define ON_CHIP_RAM_SIZE_VALUE 4096u
#define ON_CHIP_RAM_SPAN 4096
#define ON_CHIP_RAM_TYPE "altera_avalon_onchip_memory2"
#define ON_CHIP_RAM_WRITABLE 1


/*
 * on_Chip_ROM configuration
 *
 */

#define ALT_MODULE_CLASS_on_Chip_ROM altera_avalon_onchip_memory2
#define ON_CHIP_ROM_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ON_CHIP_ROM_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ON_CHIP_ROM_BASE 0x3000
#define ON_CHIP_ROM_CONTENTS_INFO ""
#define ON_CHIP_ROM_DUAL_PORT 0
#define ON_CHIP_ROM_GUI_RAM_BLOCK_TYPE "Automatic"
#define ON_CHIP_ROM_INIT_CONTENTS_FILE "on_Chip_ROM"
#define ON_CHIP_ROM_INIT_MEM_CONTENT 1
#define ON_CHIP_ROM_INSTANCE_ID "NONE"
#define ON_CHIP_ROM_IRQ -1
#define ON_CHIP_ROM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ON_CHIP_ROM_NAME "/dev/on_Chip_ROM"
#define ON_CHIP_ROM_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ON_CHIP_ROM_RAM_BLOCK_TYPE "Auto"
#define ON_CHIP_ROM_READ_DURING_WRITE_MODE "DONT_CARE"
#define ON_CHIP_ROM_SINGLE_CLOCK_OP 0
#define ON_CHIP_ROM_SIZE_MULTIPLE 1
#define ON_CHIP_ROM_SIZE_VALUE 4096u
#define ON_CHIP_ROM_SPAN 4096
#define ON_CHIP_ROM_TYPE "altera_avalon_onchip_memory2"
#define ON_CHIP_ROM_WRITABLE 0

#endif /* __SYSTEM_H_ */
