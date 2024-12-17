CFLAGS += -DSTM32F401xE

# GCC
SRC_S_GCC += $(ST_CMSIS)/Source/Templates/gcc/startup_stm32f401xe.s
LD_FILE_GCC = $(BOARD_PATH)/STM32F401retx_FLASH.ld

# IAR
SRC_S_IAR += $(ST_CMSIS)/Source/Templates/iar/startup_stm32f401xe.s
LD_FILE_IAR = $(ST_CMSIS)/Source/Templates/iar/linker/stm32f401xe_flash.icf

# For flash-jlink target
JLINK_DEVICE = stm32f401re

# flash target using on-board stlink
flash: flash-stlink