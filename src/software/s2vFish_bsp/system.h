/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_gen2_0' in SOPC Builder design 'NIOSsoc'
 * SOPC Builder design path: ../../NIOSsoc.sopcinfo
 *
 * Generated: Sun Dec 04 16:08:39 CST 2022
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

#define ALT_CPU_ARCHITECTURE "altera_nios2_gen2"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00001020
#define ALT_CPU_CPU_ARCH_NIOS2_R1
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1c
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x08000020
#define ALT_CPU_FLASH_ACCELERATOR_LINES 0
#define ALT_CPU_FLASH_ACCELERATOR_LINE_SIZE 0
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x1c
#define ALT_CPU_NAME "nios2_gen2_0"
#define ALT_CPU_OCI_VERSION 1
#define ALT_CPU_RESET_ADDR 0x08000000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00001020
#define NIOS2_CPU_ARCH_NIOS2_R1
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x1c
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x08000020
#define NIOS2_FLASH_ACCELERATOR_LINES 0
#define NIOS2_FLASH_ACCELERATOR_LINE_SIZE 0
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_ILLEGAL_INSTRUCTION_EXCEPTION
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x1c
#define NIOS2_OCI_VERSION 1
#define NIOS2_RESET_ADDR 0x08000000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_NIOS2_GEN2
#define __ALTPLL


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "MAX 10"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart_0"
#define ALT_STDERR_BASE 0x50
#define ALT_STDERR_DEV jtag_uart_0
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart_0"
#define ALT_STDIN_BASE 0x50
#define ALT_STDIN_DEV jtag_uart_0
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart_0"
#define ALT_STDOUT_BASE 0x50
#define ALT_STDOUT_DEV jtag_uart_0
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "NIOSsoc"


/*
 * addr configuration
 *
 */

#define ADDR_BASE 0x300
#define ADDR_BIT_CLEARING_EDGE_REGISTER 0
#define ADDR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ADDR_CAPTURE 0
#define ADDR_DATA_WIDTH 8
#define ADDR_DO_TEST_BENCH_WIRING 0
#define ADDR_DRIVEN_SIM_VALUE 0
#define ADDR_EDGE_TYPE "NONE"
#define ADDR_FREQ 50000000
#define ADDR_HAS_IN 0
#define ADDR_HAS_OUT 1
#define ADDR_HAS_TRI 0
#define ADDR_IRQ -1
#define ADDR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ADDR_IRQ_TYPE "NONE"
#define ADDR_NAME "/dev/addr"
#define ADDR_RESET_VALUE 0
#define ADDR_SPAN 16
#define ADDR_TYPE "altera_avalon_pio"
#define ALT_MODULE_CLASS_addr altera_avalon_pio


/*
 * block0 configuration
 *
 */

#define ALT_MODULE_CLASS_block0 altera_avalon_pio
#define BLOCK0_BASE 0x200
#define BLOCK0_BIT_CLEARING_EDGE_REGISTER 0
#define BLOCK0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BLOCK0_CAPTURE 0
#define BLOCK0_DATA_WIDTH 32
#define BLOCK0_DO_TEST_BENCH_WIRING 0
#define BLOCK0_DRIVEN_SIM_VALUE 0
#define BLOCK0_EDGE_TYPE "NONE"
#define BLOCK0_FREQ 50000000
#define BLOCK0_HAS_IN 0
#define BLOCK0_HAS_OUT 1
#define BLOCK0_HAS_TRI 0
#define BLOCK0_IRQ -1
#define BLOCK0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BLOCK0_IRQ_TYPE "NONE"
#define BLOCK0_NAME "/dev/block0"
#define BLOCK0_RESET_VALUE 0
#define BLOCK0_SPAN 16
#define BLOCK0_TYPE "altera_avalon_pio"


/*
 * block1 configuration
 *
 */

#define ALT_MODULE_CLASS_block1 altera_avalon_pio
#define BLOCK1_BASE 0x210
#define BLOCK1_BIT_CLEARING_EDGE_REGISTER 0
#define BLOCK1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BLOCK1_CAPTURE 0
#define BLOCK1_DATA_WIDTH 32
#define BLOCK1_DO_TEST_BENCH_WIRING 0
#define BLOCK1_DRIVEN_SIM_VALUE 0
#define BLOCK1_EDGE_TYPE "NONE"
#define BLOCK1_FREQ 50000000
#define BLOCK1_HAS_IN 0
#define BLOCK1_HAS_OUT 1
#define BLOCK1_HAS_TRI 0
#define BLOCK1_IRQ -1
#define BLOCK1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BLOCK1_IRQ_TYPE "NONE"
#define BLOCK1_NAME "/dev/block1"
#define BLOCK1_RESET_VALUE 0
#define BLOCK1_SPAN 16
#define BLOCK1_TYPE "altera_avalon_pio"


/*
 * block2 configuration
 *
 */

#define ALT_MODULE_CLASS_block2 altera_avalon_pio
#define BLOCK2_BASE 0x220
#define BLOCK2_BIT_CLEARING_EDGE_REGISTER 0
#define BLOCK2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BLOCK2_CAPTURE 0
#define BLOCK2_DATA_WIDTH 32
#define BLOCK2_DO_TEST_BENCH_WIRING 0
#define BLOCK2_DRIVEN_SIM_VALUE 0
#define BLOCK2_EDGE_TYPE "NONE"
#define BLOCK2_FREQ 50000000
#define BLOCK2_HAS_IN 0
#define BLOCK2_HAS_OUT 1
#define BLOCK2_HAS_TRI 0
#define BLOCK2_IRQ -1
#define BLOCK2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BLOCK2_IRQ_TYPE "NONE"
#define BLOCK2_NAME "/dev/block2"
#define BLOCK2_RESET_VALUE 0
#define BLOCK2_SPAN 16
#define BLOCK2_TYPE "altera_avalon_pio"


/*
 * block3 configuration
 *
 */

#define ALT_MODULE_CLASS_block3 altera_avalon_pio
#define BLOCK3_BASE 0x230
#define BLOCK3_BIT_CLEARING_EDGE_REGISTER 0
#define BLOCK3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BLOCK3_CAPTURE 0
#define BLOCK3_DATA_WIDTH 32
#define BLOCK3_DO_TEST_BENCH_WIRING 0
#define BLOCK3_DRIVEN_SIM_VALUE 0
#define BLOCK3_EDGE_TYPE "NONE"
#define BLOCK3_FREQ 50000000
#define BLOCK3_HAS_IN 0
#define BLOCK3_HAS_OUT 1
#define BLOCK3_HAS_TRI 0
#define BLOCK3_IRQ -1
#define BLOCK3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BLOCK3_IRQ_TYPE "NONE"
#define BLOCK3_NAME "/dev/block3"
#define BLOCK3_RESET_VALUE 0
#define BLOCK3_SPAN 16
#define BLOCK3_TYPE "altera_avalon_pio"


/*
 * busy configuration
 *
 */

#define ALT_MODULE_CLASS_busy altera_avalon_pio
#define BUSY_BASE 0x2f0
#define BUSY_BIT_CLEARING_EDGE_REGISTER 0
#define BUSY_BIT_MODIFYING_OUTPUT_REGISTER 0
#define BUSY_CAPTURE 0
#define BUSY_DATA_WIDTH 1
#define BUSY_DO_TEST_BENCH_WIRING 0
#define BUSY_DRIVEN_SIM_VALUE 0
#define BUSY_EDGE_TYPE "NONE"
#define BUSY_FREQ 50000000
#define BUSY_HAS_IN 1
#define BUSY_HAS_OUT 0
#define BUSY_HAS_TRI 0
#define BUSY_IRQ -1
#define BUSY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define BUSY_IRQ_TYPE "NONE"
#define BUSY_NAME "/dev/busy"
#define BUSY_RESET_VALUE 0
#define BUSY_SPAN 16
#define BUSY_TYPE "altera_avalon_pio"


/*
 * ende configuration
 *
 */

#define ALT_MODULE_CLASS_ende altera_avalon_pio
#define ENDE_BASE 0x2d0
#define ENDE_BIT_CLEARING_EDGE_REGISTER 0
#define ENDE_BIT_MODIFYING_OUTPUT_REGISTER 0
#define ENDE_CAPTURE 0
#define ENDE_DATA_WIDTH 1
#define ENDE_DO_TEST_BENCH_WIRING 0
#define ENDE_DRIVEN_SIM_VALUE 0
#define ENDE_EDGE_TYPE "NONE"
#define ENDE_FREQ 50000000
#define ENDE_HAS_IN 0
#define ENDE_HAS_OUT 1
#define ENDE_HAS_TRI 0
#define ENDE_IRQ -1
#define ENDE_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ENDE_IRQ_TYPE "NONE"
#define ENDE_NAME "/dev/ende"
#define ENDE_RESET_VALUE 0
#define ENDE_SPAN 16
#define ENDE_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_INCLUDE_INSTRUCTION_RELATED_EXCEPTION_API
#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart_0 altera_avalon_jtag_uart
#define JTAG_UART_0_BASE 0x50
#define JTAG_UART_0_IRQ 1
#define JTAG_UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_0_NAME "/dev/jtag_uart_0"
#define JTAG_UART_0_READ_DEPTH 64
#define JTAG_UART_0_READ_THRESHOLD 8
#define JTAG_UART_0_SPAN 8
#define JTAG_UART_0_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_0_WRITE_DEPTH 64
#define JTAG_UART_0_WRITE_THRESHOLD 8


/*
 * key0 configuration
 *
 */

#define ALT_MODULE_CLASS_key0 altera_avalon_pio
#define KEY0_BASE 0x240
#define KEY0_BIT_CLEARING_EDGE_REGISTER 0
#define KEY0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEY0_CAPTURE 0
#define KEY0_DATA_WIDTH 32
#define KEY0_DO_TEST_BENCH_WIRING 0
#define KEY0_DRIVEN_SIM_VALUE 0
#define KEY0_EDGE_TYPE "NONE"
#define KEY0_FREQ 50000000
#define KEY0_HAS_IN 0
#define KEY0_HAS_OUT 1
#define KEY0_HAS_TRI 0
#define KEY0_IRQ -1
#define KEY0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KEY0_IRQ_TYPE "NONE"
#define KEY0_NAME "/dev/key0"
#define KEY0_RESET_VALUE 0
#define KEY0_SPAN 16
#define KEY0_TYPE "altera_avalon_pio"


/*
 * key1 configuration
 *
 */

#define ALT_MODULE_CLASS_key1 altera_avalon_pio
#define KEY1_BASE 0x250
#define KEY1_BIT_CLEARING_EDGE_REGISTER 0
#define KEY1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEY1_CAPTURE 0
#define KEY1_DATA_WIDTH 32
#define KEY1_DO_TEST_BENCH_WIRING 0
#define KEY1_DRIVEN_SIM_VALUE 0
#define KEY1_EDGE_TYPE "NONE"
#define KEY1_FREQ 50000000
#define KEY1_HAS_IN 0
#define KEY1_HAS_OUT 1
#define KEY1_HAS_TRI 0
#define KEY1_IRQ -1
#define KEY1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KEY1_IRQ_TYPE "NONE"
#define KEY1_NAME "/dev/key1"
#define KEY1_RESET_VALUE 0
#define KEY1_SPAN 16
#define KEY1_TYPE "altera_avalon_pio"


/*
 * key2 configuration
 *
 */

#define ALT_MODULE_CLASS_key2 altera_avalon_pio
#define KEY2_BASE 0x260
#define KEY2_BIT_CLEARING_EDGE_REGISTER 0
#define KEY2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEY2_CAPTURE 0
#define KEY2_DATA_WIDTH 32
#define KEY2_DO_TEST_BENCH_WIRING 0
#define KEY2_DRIVEN_SIM_VALUE 0
#define KEY2_EDGE_TYPE "NONE"
#define KEY2_FREQ 50000000
#define KEY2_HAS_IN 0
#define KEY2_HAS_OUT 1
#define KEY2_HAS_TRI 0
#define KEY2_IRQ -1
#define KEY2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KEY2_IRQ_TYPE "NONE"
#define KEY2_NAME "/dev/key2"
#define KEY2_RESET_VALUE 0
#define KEY2_SPAN 16
#define KEY2_TYPE "altera_avalon_pio"


/*
 * key3 configuration
 *
 */

#define ALT_MODULE_CLASS_key3 altera_avalon_pio
#define KEY3_BASE 0x270
#define KEY3_BIT_CLEARING_EDGE_REGISTER 0
#define KEY3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define KEY3_CAPTURE 0
#define KEY3_DATA_WIDTH 32
#define KEY3_DO_TEST_BENCH_WIRING 0
#define KEY3_DRIVEN_SIM_VALUE 0
#define KEY3_EDGE_TYPE "NONE"
#define KEY3_FREQ 50000000
#define KEY3_HAS_IN 0
#define KEY3_HAS_OUT 1
#define KEY3_HAS_TRI 0
#define KEY3_IRQ -1
#define KEY3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define KEY3_IRQ_TYPE "NONE"
#define KEY3_NAME "/dev/key3"
#define KEY3_RESET_VALUE 0
#define KEY3_SPAN 16
#define KEY3_TYPE "altera_avalon_pio"


/*
 * onchip_memory2_0 configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory2_0 altera_avalon_onchip_memory2
#define ONCHIP_MEMORY2_0_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY2_0_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY2_0_BASE 0x20
#define ONCHIP_MEMORY2_0_CONTENTS_INFO ""
#define ONCHIP_MEMORY2_0_DUAL_PORT 0
#define ONCHIP_MEMORY2_0_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_0_INIT_CONTENTS_FILE "NIOSsoc_onchip_memory2_0"
#define ONCHIP_MEMORY2_0_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY2_0_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY2_0_IRQ -1
#define ONCHIP_MEMORY2_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY2_0_NAME "/dev/onchip_memory2_0"
#define ONCHIP_MEMORY2_0_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY2_0_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY2_0_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY2_0_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY2_0_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY2_0_SIZE_VALUE 16
#define ONCHIP_MEMORY2_0_SPAN 16
#define ONCHIP_MEMORY2_0_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY2_0_WRITABLE 1


/*
 * out0 configuration
 *
 */

#define ALT_MODULE_CLASS_out0 altera_avalon_pio
#define OUT0_BASE 0x280
#define OUT0_BIT_CLEARING_EDGE_REGISTER 0
#define OUT0_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OUT0_CAPTURE 0
#define OUT0_DATA_WIDTH 32
#define OUT0_DO_TEST_BENCH_WIRING 0
#define OUT0_DRIVEN_SIM_VALUE 0
#define OUT0_EDGE_TYPE "NONE"
#define OUT0_FREQ 50000000
#define OUT0_HAS_IN 1
#define OUT0_HAS_OUT 0
#define OUT0_HAS_TRI 0
#define OUT0_IRQ -1
#define OUT0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OUT0_IRQ_TYPE "NONE"
#define OUT0_NAME "/dev/out0"
#define OUT0_RESET_VALUE 0
#define OUT0_SPAN 16
#define OUT0_TYPE "altera_avalon_pio"


/*
 * out1 configuration
 *
 */

#define ALT_MODULE_CLASS_out1 altera_avalon_pio
#define OUT1_BASE 0x290
#define OUT1_BIT_CLEARING_EDGE_REGISTER 0
#define OUT1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OUT1_CAPTURE 0
#define OUT1_DATA_WIDTH 32
#define OUT1_DO_TEST_BENCH_WIRING 0
#define OUT1_DRIVEN_SIM_VALUE 0
#define OUT1_EDGE_TYPE "NONE"
#define OUT1_FREQ 50000000
#define OUT1_HAS_IN 1
#define OUT1_HAS_OUT 0
#define OUT1_HAS_TRI 0
#define OUT1_IRQ -1
#define OUT1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OUT1_IRQ_TYPE "NONE"
#define OUT1_NAME "/dev/out1"
#define OUT1_RESET_VALUE 0
#define OUT1_SPAN 16
#define OUT1_TYPE "altera_avalon_pio"


/*
 * out2 configuration
 *
 */

#define ALT_MODULE_CLASS_out2 altera_avalon_pio
#define OUT2_BASE 0x2a0
#define OUT2_BIT_CLEARING_EDGE_REGISTER 0
#define OUT2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OUT2_CAPTURE 0
#define OUT2_DATA_WIDTH 32
#define OUT2_DO_TEST_BENCH_WIRING 0
#define OUT2_DRIVEN_SIM_VALUE 0
#define OUT2_EDGE_TYPE "NONE"
#define OUT2_FREQ 50000000
#define OUT2_HAS_IN 1
#define OUT2_HAS_OUT 0
#define OUT2_HAS_TRI 0
#define OUT2_IRQ -1
#define OUT2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OUT2_IRQ_TYPE "NONE"
#define OUT2_NAME "/dev/out2"
#define OUT2_RESET_VALUE 0
#define OUT2_SPAN 16
#define OUT2_TYPE "altera_avalon_pio"


/*
 * out3 configuration
 *
 */

#define ALT_MODULE_CLASS_out3 altera_avalon_pio
#define OUT3_BASE 0x2b0
#define OUT3_BIT_CLEARING_EDGE_REGISTER 0
#define OUT3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define OUT3_CAPTURE 0
#define OUT3_DATA_WIDTH 32
#define OUT3_DO_TEST_BENCH_WIRING 0
#define OUT3_DRIVEN_SIM_VALUE 0
#define OUT3_EDGE_TYPE "NONE"
#define OUT3_FREQ 50000000
#define OUT3_HAS_IN 1
#define OUT3_HAS_OUT 0
#define OUT3_HAS_TRI 0
#define OUT3_IRQ -1
#define OUT3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define OUT3_IRQ_TYPE "NONE"
#define OUT3_NAME "/dev/out3"
#define OUT3_RESET_VALUE 0
#define OUT3_SPAN 16
#define OUT3_TYPE "altera_avalon_pio"


/*
 * reset configuration
 *
 */

#define ALT_MODULE_CLASS_reset altera_avalon_pio
#define RESET_BASE 0x2e0
#define RESET_BIT_CLEARING_EDGE_REGISTER 0
#define RESET_BIT_MODIFYING_OUTPUT_REGISTER 0
#define RESET_CAPTURE 0
#define RESET_DATA_WIDTH 1
#define RESET_DO_TEST_BENCH_WIRING 0
#define RESET_DRIVEN_SIM_VALUE 0
#define RESET_EDGE_TYPE "NONE"
#define RESET_FREQ 50000000
#define RESET_HAS_IN 0
#define RESET_HAS_OUT 1
#define RESET_HAS_TRI 0
#define RESET_IRQ -1
#define RESET_IRQ_INTERRUPT_CONTROLLER_ID -1
#define RESET_IRQ_TYPE "NONE"
#define RESET_NAME "/dev/reset"
#define RESET_RESET_VALUE 0
#define RESET_SPAN 16
#define RESET_TYPE "altera_avalon_pio"


/*
 * sdram configuration
 *
 */

#define ALT_MODULE_CLASS_sdram altera_avalon_new_sdram_controller
#define SDRAM_BASE 0x8000000
#define SDRAM_CAS_LATENCY 3
#define SDRAM_CONTENTS_INFO
#define SDRAM_INIT_NOP_DELAY 0.0
#define SDRAM_INIT_REFRESH_COMMANDS 2
#define SDRAM_IRQ -1
#define SDRAM_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_IS_INITIALIZED 1
#define SDRAM_NAME "/dev/sdram"
#define SDRAM_POWERUP_DELAY 200.0
#define SDRAM_REFRESH_PERIOD 15.625
#define SDRAM_REGISTER_DATA_IN 1
#define SDRAM_SDRAM_ADDR_WIDTH 0x19
#define SDRAM_SDRAM_BANK_WIDTH 2
#define SDRAM_SDRAM_COL_WIDTH 10
#define SDRAM_SDRAM_DATA_WIDTH 16
#define SDRAM_SDRAM_NUM_BANKS 4
#define SDRAM_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_SDRAM_ROW_WIDTH 13
#define SDRAM_SHARED_DATA 0
#define SDRAM_SIM_MODEL_BASE 0
#define SDRAM_SPAN 67108864
#define SDRAM_STARVATION_INDICATOR 0
#define SDRAM_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_T_AC 5.4
#define SDRAM_T_MRD 3
#define SDRAM_T_RCD 20.0
#define SDRAM_T_RFC 70.0
#define SDRAM_T_RP 20.0
#define SDRAM_T_WR 14.0


/*
 * sdram_pll configuration
 *
 */

#define ALT_MODULE_CLASS_sdram_pll altpll
#define SDRAM_PLL_BASE 0x30
#define SDRAM_PLL_IRQ -1
#define SDRAM_PLL_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_PLL_NAME "/dev/sdram_pll"
#define SDRAM_PLL_SPAN 16
#define SDRAM_PLL_TYPE "altpll"


/*
 * start configuration
 *
 */

#define ALT_MODULE_CLASS_start altera_avalon_pio
#define START_BASE 0x2c0
#define START_BIT_CLEARING_EDGE_REGISTER 0
#define START_BIT_MODIFYING_OUTPUT_REGISTER 0
#define START_CAPTURE 0
#define START_DATA_WIDTH 1
#define START_DO_TEST_BENCH_WIRING 0
#define START_DRIVEN_SIM_VALUE 0
#define START_EDGE_TYPE "NONE"
#define START_FREQ 50000000
#define START_HAS_IN 0
#define START_HAS_OUT 1
#define START_HAS_TRI 0
#define START_IRQ -1
#define START_IRQ_INTERRUPT_CONTROLLER_ID -1
#define START_IRQ_TYPE "NONE"
#define START_NAME "/dev/start"
#define START_RESET_VALUE 0
#define START_SPAN 16
#define START_TYPE "altera_avalon_pio"


/*
 * sysid_qsys_0 configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_qsys_0 altera_avalon_sysid_qsys
#define SYSID_QSYS_0_BASE 0x58
#define SYSID_QSYS_0_ID 0
#define SYSID_QSYS_0_IRQ -1
#define SYSID_QSYS_0_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_QSYS_0_NAME "/dev/sysid_qsys_0"
#define SYSID_QSYS_0_SPAN 8
#define SYSID_QSYS_0_TIMESTAMP 1670191409
#define SYSID_QSYS_0_TYPE "altera_avalon_sysid_qsys"

#endif /* __SYSTEM_H_ */
