set(MCU_VARIANT stm32f401retx)
set(JLINK_DEVICE stm32f401re)

set(LD_FILE_GNU ${CMAKE_CURRENT_LIST_DIR}/STM32F401retx_FLASH.ld)

function(update_board TARGET)
  target_compile_definitions(${TARGET} PUBLIC
    STM32F401xE
    )
endfunction()
