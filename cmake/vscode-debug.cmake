# vscode-debug.cmake
# From https://github.com/patrislav1/cubemx.cmake/blob/master/openocd/vscode-debug.cmake
# This automatically generates .vscode/launch.json

function(vscode_debug PROJ_NAME EXECUTABLE)
    set(PROJ_ELF_PATH "${CMAKE_BINARY_DIR}/${EXECUTABLE}")
    file(MAKE_DIRECTORY "${VSCODE_DIR}")
    configure_file(
        "${CMAKE_SOURCE_DIR}/cmake/vscode-debug.in"
        "${VSCODE_DIR}/launch.json"
        @ONLY
    )
endfunction()
