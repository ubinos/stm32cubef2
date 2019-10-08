if(INCLUDE__STM32CUBEF2)

    get_filename_component(_tmp_source_dir "${CMAKE_CURRENT_LIST_DIR}" ABSOLUTE)
    
    include_directories(${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/CMSIS/Include)
    include_directories(${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/CMSIS/Include)
    include_directories(${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/CMSIS/Device/ST/STM32F2xx/Include)
    include_directories(${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Inc)
    
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_adc.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_adc_ex.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_cortex.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_dma.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_flash.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_flash_ex.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_gpio.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_i2c.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_rcc.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_spi.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_sram.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_hal_uart.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/STM32F2xx_HAL_Driver/Src/stm32f2xx_ll_fsmc.c)

if(STM32CUBEF2__BOARD_NAME STREQUAL "STM322xG_EVAL")
    include_directories(${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/BSP/STM322xG_EVAL)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/BSP/STM322xG_EVAL/stm322xg_eval.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/BSP/STM322xG_EVAL/stm322xg_eval_io.c)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/BSP/Components/stmpe811/stmpe811.c)

elseif(STM32CUBEF2__BOARD_NAME STREQUAL "STM32F2XX_NUCLEO_144")
    include_directories(${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/BSP/STM32F2xx_Nucleo_144)
    set(PROJECT_SOURCES ${PROJECT_SOURCES} ${_tmp_source_dir}/STM32Cube_FW_F2/Drivers/BSP/STM32F2xx_Nucleo_144/stm32f2xx_nucleo_144.c)
else()
    message(FATAL_ERROR "Unsupported STM32CUBEF2__BOARD_NAME")
endif()

endif(INCLUDE__STM32CUBEF2)

