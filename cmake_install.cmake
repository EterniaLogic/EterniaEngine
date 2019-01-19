# Install script for directory: /media/NBackups/Dev/Cpp/EterniaEngine/Engine

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Engine" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Engine")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Engine"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/media/NBackups/Dev/Cpp/EterniaEngine/bin/debug/Engine")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Engine" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Engine")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Engine"
         OLD_RPATH "/media/NBackups/Dev/Cpp/EterniaEngine/Engine/../../EterniaLib/lib:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/../EterniaGameLogic/lib:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/freealut/lib:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/cpython:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/ImageMagick/MagickWand/.libs:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/ImageMagick/Magick++/lib/.libs:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/ImageMagick/MagickCore/.libs:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/FFmpeg/libavcodec:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/FFmpeg/libswscale:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/FFmpeg/libavutil:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/FFmpeg/libavdevice:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/FFmpeg/libavformat:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/FFmpeg/libavfilter:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/FFmpeg/libswresample:/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/zlib:/usr/lib/x86_64-linux-gnu/libpython3.6m.so:/usr/lib/jvm/default-java/lib:/usr/lib/jvm/default-java/lib/server:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/Engine")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/openal-soft/cmake_install.cmake")
  include("/media/NBackups/Dev/Cpp/EterniaEngine/Engine/lib/zlib/cmake_install.cmake")

endif()

