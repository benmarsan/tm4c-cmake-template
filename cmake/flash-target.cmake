# flash-target.cmake
# From https://github.com/patrislav1/cubemx.cmake/blob/master/openocd/flash-target.cmake
# Adds cmake target to flash board with openocd debugger

if(DEFINED OPENOCD_CFG)
    set(OPENOCD_CFG_OPT -f ${OPENOCD_CFG})
endif()

#####################################
# Flash application to target       #
#####################################
function(flash_target BIN_NAME FLASH_TARGET_NAME)
    add_custom_target(${FLASH_TARGET_NAME}
        openocd ${OPENOCD_CFG_OPT} -c "init" -c "program ${BIN_NAME}" -c "reset" -c "exit" || (exit 0)
        DEPENDS ${BIN_NAME}
        COMMENT "Flashing ${PROJ_NAME} to target"
    )
endfunction()
