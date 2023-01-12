# TM4C CMake Project
Simple template for a TM4C project compiled with CMake. The goal is to use this with VSCode and
the Cortex-Debug extension to avoid Keil. This should also work with CLion.

## Getting Started with Linux
### Install dependencies:
```
sudo apt install gcc-arm-none-eabi gdb-multiarch binutils-multiarch cmake
sudo apt install openocd lm4flash
```

### Set up Visual Studio Code:
Install vscode from [Microsoft](https://code.visualstudio.com/)

Install these extensions:
- C/C++
- CMake
- CMake Tools
- Cortex-Debug

## Getting Started with Windows
TODO: Tricky, probably need to flash using OpenOCD to avoid dependency on lm4flash (might work on
windows, but I don't think there's an easy binary distribution available).

## Resources

- [Setup for EE445L labs on Linux by Josh Minor](https://github.com/jishminor/ee445l-linux)
- [From Zero to main() series on Interrupt](https://interrupt.memfault.com/tag/zero-to-main/)
- [Visual Studio Code for C/C++ with ARM Cortex-M by Erich Styger, parts 1](https://mcuoneclipse.com/2021/05/01/visual-studio-code-for-c-c-with-arm-cortex-m-part-1/) and [2](https://mcuoneclipse.com/2021/05/04/visual-studio-code-for-c-c-with-arm-cortex-m-part-2/)
- [cubemx.cmake](https://github.com/patrislav1/cubemx.cmake)
- [How to cross-compile for embedded with CMake like a champ](https://kubasejdak.com/how-to-cross-compile-for-embedded-with-cmake-like-a-champ)
    - [platform's CMake arm-none-eabi-gcc toolchain file](https://gitlab.com/embeddedlinux/libs/platform/-/blob/master/lib/baremetal-arm/arm-none-eabi-gcc.cmake)
- [Getting Started with the TI Stellaris LaunchPad on Linux](https://www.jann.cc/2012/12/11/getting_started_with_the_ti_stellaris_launchpad_on_linux.html)
- [cortex-debug for VSCode](https://github.com/Marus/cortex-debug/wiki)
