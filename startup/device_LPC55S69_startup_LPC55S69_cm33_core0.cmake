include_guard()
message("device_LPC55S69_startup component is included.")

target_sources(${MCUX_SDK_PROJECT_NAME} PRIVATE
${CMAKE_CURRENT_LIST_DIR}/startup_LPC55S69_cm33_core0.S
)


include(device_LPC55S69_system_LPC55S69_cm33_core0)

