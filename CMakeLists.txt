# CROSS COMPILER SETTING
SET(CMAKE_SYSTEM_NAME Generic)
CMAKE_MINIMUM_REQUIRED (VERSION 3.10.0)

# THE VERSION NUMBER
SET (Tutorial_VERSION_MAJOR 1)
SET (Tutorial_VERSION_MINOR 0)

# ENABLE ASM
ENABLE_LANGUAGE(ASM)

SET(CMAKE_STATIC_LIBRARY_PREFIX)
SET(CMAKE_STATIC_LIBRARY_SUFFIX)

SET(CMAKE_EXECUTABLE_LIBRARY_PREFIX)
SET(CMAKE_EXECUTABLE_LIBRARY_SUFFIX)

# CURRENT DIRECTORY
SET(ProjDirPath ${CMAKE_CURRENT_SOURCE_DIR})

SET(EXECUTABLE_OUTPUT_PATH ${ProjDirPath}/${CMAKE_BUILD_TYPE})
SET(LIBRARY_OUTPUT_PATH ${ProjDirPath}/${CMAKE_BUILD_TYPE})


project(lpcxpresso55s69_hello_world)

set(MCUX_SDK_PROJECT_NAME lpcxpresso55s69_lpcxpresso55s69_hello_world.elf)

include(${ProjDirPath}/flags.cmake)

include(${ProjDirPath}/config.cmake)

add_executable(${MCUX_SDK_PROJECT_NAME}
"${ProjDirPath}/board/board.c"
"${ProjDirPath}/board/board.h"
"${ProjDirPath}/board/clock_config.c"
"${ProjDirPath}/board/clock_config.h"
"${ProjDirPath}/board/pin_mux.c"
"${ProjDirPath}/board/pin_mux.h"
"${ProjDirPath}/source/hello_world.c"
)

target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
${ProjDirPath}/board
)

set(CMAKE_MODULE_PATH
${ProjDirPath}/
${ProjDirPath}/CMSIS
${ProjDirPath}/component/lists
${ProjDirPath}/component/uart
${ProjDirPath}/device
${ProjDirPath}/drivers
${ProjDirPath}/startup
${ProjDirPath}/utilities
)

# include modules
include(utility_debug_console_lite_LPC55S69_cm33_core0)

include(utility_assert_lite_LPC55S69_cm33_core0)

include(driver_lpc_iocon_LPC55S69_cm33_core0)

include(driver_common_LPC55S69_cm33_core0)

include(driver_power_LPC55S69_cm33_core0)

include(driver_reset_LPC55S69_cm33_core0)

include(driver_clock_LPC55S69_cm33_core0)

include(device_LPC55S69_CMSIS_LPC55S69_cm33_core0)

include(device_LPC55S69_startup_LPC55S69_cm33_core0)

include(driver_flexcomm_usart_LPC55S69_cm33_core0)

include(driver_flexcomm_LPC55S69_cm33_core0)

include(driver_lpc_gpio_LPC55S69_cm33_core0)

include(component_usart_adapter_LPC55S69_cm33_core0)

include(component_lists_LPC55S69_cm33_core0)

include(CMSIS_Include_core_cm_LPC55S69_cm33_core0)

include(utilities_misc_utilities_LPC55S69_cm33_core0)

include(device_LPC55S69_system_LPC55S69_cm33_core0)


TARGET_LINK_LIBRARIES(${MCUX_SDK_PROJECT_NAME} PRIVATE -Wl,--start-group)

target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE m)

target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE c)

target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE gcc)

target_link_libraries(${MCUX_SDK_PROJECT_NAME} PRIVATE nosys)

TARGET_LINK_LIBRARIES(${MCUX_SDK_PROJECT_NAME} PRIVATE -Wl,--end-group)


