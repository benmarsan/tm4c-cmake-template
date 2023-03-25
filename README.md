# TM4C CMake Project
Simple template for a TM4C project compiled with CMake. The goal is to use this with VSCode and
the Cortex-Debug extension to avoid Keil. This should also work with CLion.

## Getting Started
### Linux Dependencies:
```
sudo apt install gcc-arm-none-eabi gdb-multiarch binutils-multiarch cmake
sudo apt install openocd
sudo apt install lm4flash
```
`lm4flash` is optional -- the flash script is configured to flash with OpenOCD for Windows compatibility.


### Windows Dependencies:
Install the following dependencies:

- [CMake](https://cmake.org/download/)
  - Make sure to select add to path in the installer (either user or system path will work)
- [Ninja](https://ninja-build.org/) (or make)
  - Download latest ninja-win.zip from [the official Github](https://github.com/ninja-build/ninja/releases)
  - Copy `ninja.exe` to `C:\Program Files\CMake\bin\` (Or elsewhere in your path)
- [GNU Arm Embedded Toolchain](https://developer.arm.com/downloads/-/gnu-rm) (get latest `gcc-arm-none-eabi-*-win32.exe`)
  - Make sure to select "Add path to environment variable" at the last step
- [OpenOCD](https://openocd.org/)
  - Download [Windows release from Github](https://github.com/openocd-org/openocd/releases/tag/v0.12.0).
    - v0.11.0 and v0.12.0 worked for me. Earlier versions did not work, future versions probably should work.
  - Extract the contents of `openocd-v0.12.0-i686-w64-mingw32.tar.gz` to `C:\openocd-v0.12.0` (7-Zip can be used to extract .tar.gz archives on Windows)
  - Add `C:\openocd-v0.12.0\bin` to your path.
- [Visual Studio Code](https://code.visualstudio.com/)


### Set up Visual Studio Code:
Install vscode from [Microsoft](https://code.visualstudio.com/)

Install these extensions:
- C/C++
- CMake
- CMake Tools
- Cortex-Debug

When you first open this project in VSCode, you will need to set the "CMake Kit" to `TM4C Toolchain`
to select the installed arm-gcc compiler and set the CMake Generator to `Ninja`. You will also need
to set the build variant (`Debug`) and build target (`Test.elf`). Once this has been done, you
should be able run `CMake: Configure` and `CMake: Build` (`ctrl-shift-P` to open command palette).
The shortcut `ctrl-shift-B` can be used to run the default build task (set in `.vscode/tasks.json`).


### Command Line Development
This project will work without VSCode if you want to use another text editor. To compile and flash
from the command line:
```
mkdir build
cd build
cmake ..
make Test.elf
make flash
```
Or on Windows:
```
mkdir build
cd build
cmake -G "Ninja" ..
ninja Test.elf
ninja flash
```


## Resources

- [Setup for EE445L labs on Linux by Josh Minor](https://github.com/jishminor/ee445l-linux)
- [From Zero to main() series on Interrupt](https://interrupt.memfault.com/tag/zero-to-main/)
- [Visual Studio Code for C/C++ with ARM Cortex-M by Erich Styger, parts 1](https://mcuoneclipse.com/2021/05/01/visual-studio-code-for-c-c-with-arm-cortex-m-part-1/) and [2](https://mcuoneclipse.com/2021/05/04/visual-studio-code-for-c-c-with-arm-cortex-m-part-2/)
- [cubemx.cmake](https://github.com/patrislav1/cubemx.cmake)
- [How to cross-compile for embedded with CMake like a champ](https://kubasejdak.com/how-to-cross-compile-for-embedded-with-cmake-like-a-champ)
    - [platform's CMake arm-none-eabi-gcc toolchain file](https://gitlab.com/embeddedlinux/libs/platform/-/blob/master/lib/baremetal-arm/arm-none-eabi-gcc.cmake)
- [Getting Started with the TI Stellaris LaunchPad on Linux](https://www.jann.cc/2012/12/11/getting_started_with_the_ti_stellaris_launchpad_on_linux.html)
- [cortex-debug for VSCode](https://github.com/Marus/cortex-debug/wiki)
