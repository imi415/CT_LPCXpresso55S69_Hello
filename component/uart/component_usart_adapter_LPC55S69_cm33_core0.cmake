include_guard()
message("component_usart_adapter component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
${CMAKE_CURRENT_LIST_DIR}/fsl_adapter_usart.c
)


target_include_directories(${MCUX_SDK_PROJECT_NAME} PRIVATE
${CMAKE_CURRENT_LIST_DIR}/
)


include(driver_common_LPC55S69_cm33_core0)

include(driver_flexcomm_usart_LPC55S69_cm33_core0)

include(driver_flexcomm_LPC55S69_cm33_core0)

