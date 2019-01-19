# EterniaEngine
Cross-Platform C++ OpenGL 3D Multi-threaded Game Engine with script support

## Required packages for compilation
- EterniaLibrary (See https://github.com/EterniaLogic/EterniaLibrary)
- OpenGL of some kind
- GLEW
- FreeGLUT
- OpenAL
- ALUT
- Lua 5.1
- Java 8 (if using the added option for Java programming as scripting)
- ZLib
- magick++
- X11 (Linux only)

note that some of these are included with NVidia in Windows.



## To be desired
- Textures (!)
- Working Shaders




******************************************************************************************************************************
******************************************************************************************************************************
Installer Command lines for each operating system:

## Linux

### Debian:
* sudo apt-get install cmake libboost-all-dev build-essential libglew-dev freeglut3-dev mesa-common-dev libgl1-mesa-dev libglu1-mesa-dev libxi-dev libopenal-dev libalut-dev zlib1g-dev glew-utils openjdk-8-jdk libmagick++-dev ocl-icd-opencl-dev liblua5.1-dev

### Ubuntu:
* sudo apt-get install cmake libboost-all-dev build-essential libglew-dev freeglut3-dev mesa-common-dev libgl1-mesa-dev libglu1-mesa-dev libxi-dev libxmu-dev libopenal-dev libalut-dev zlib1g-dev glew-utils libglewmx-dev liblua5.0-dev liblualib5.0-dev openjdk-8-jdk
* sudo ./EterniaLib/makeit
* sudo ./EterniaLib/install

### Fedora 22
* sudo dnf install freealut openal-soft-devel mesa-libGLw mesa-libGLU glew-devel freeglut-devel mesa-libGLU-devel libstdc++-devel glibc-devel zlib-devel libXmu-devel libXi-devel

### Arch
### FreeBSD

### Windows
  Code-Blocks
*

******************************************************************************************************************************
******************************************************************************************************************************
### Building
* cmake .
* make -j 4     (-j 4 increases speed through multi-threading)