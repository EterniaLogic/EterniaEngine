cmake_minimum_required(VERSION 2.8)
set (CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
set(CMAKE_LEGACY_CYGWIN_WIN32 0)
set(CMAKE_VERBOSE_MAKEFILE:BOOL OFF)
SET(program Engine)
include(ExternalProject)
PROJECT(EterniaEngine)





message("THREADS")
FIND_PACKAGE(Threads REQUIRED)
message("THREADS")



set(CMAKE_BUILD_TYPE Debug)
set(LIBTYPE STATIC)
set(USEPRECOMPILED_LIBS true)
set(USEPRECOMPILED_ETERNIALIBRARY false)


#set(CMAKE_CXX_FLAGS "-Wall -pedantic -Wextra")
#set(CMAKE_CXX_FLAGS " -pedantic -pipe -DDEBUG -std=c++0x")

#set(CMAKE_CXX_FLAGS " -pipe -DDEBUG -std=c++0x -g3 -w -ldl -static")
#set(CMAKE_C_FLAGS " -pipe -DDEBUG -std=c++0x -g3 -w -ldl -static")

set(CMAKE_CXX_FLAGS " -DDEBUG -std=c++11 -g3 -w")
set(CMAKE_C_FLAGS " -DDEBUG -std=c++11 -g3 -w")

set(OpenGL_GL_PREFERENCE LEGACY)





MACRO(SUBDIRLIST result curdir)
  FILE(GLOB children RELATIVE ${curdir} ${curdir}/*)
  SET(dirlist "")
  FOREACH(child ${children})
    IF(IS_DIRECTORY ${curdir}/${child})
        SET(dirlist ${dirlist} ${child})
    ENDIF()
  ENDFOREACH()
  SET(${result} ${dirlist})
ENDMACRO()
SUBDIRLIST(SUBDIRS src)


#add ALL files. (If you don't want a file to compile, just change the extension)
file(GLOB_RECURSE CC_src2
    "src/*.h"
    "src/*.c"
    "src/*.cpp"
    "src/*.hpp"
)



#FBX
include_directories("dep/FBX/include")
#link_directories(dep/FBX/lib/gcc4/x64/release/libfbxsdk.a)
#TARGET_LINK_LIBRARIES("dep/FBX/lib/gcc4/x64/release/libfbxsdk.a")

#EterniaLib
#include_directories("${CMAKE_CURRENT_SOURCE_DIR}/../../EterniaLib/include")
#link_directories("${CMAKE_CURRENT_SOURCE_DIR}/../../EterniaLib/lib")
#message("ETERNIA LOCAL LOC: " "${CMAKE_CURRENT_SOURCE_DIR}/../../EterniaLib/include")

include_directories("${CMAKE_CURRENT_SOURCE_DIR}/include/")
#add_definitions(${EterniaGameLogic_DEFINITIONS})



#add_external(lib/lua)
#add_external(lib/ALUT)
#add_external(lib/ImageMagick)

#add_custom_target(
#    EterniaGameLogic
#    COMMAND cmake .
#    COMMAND make -j 40 # && cp "${CMAKE_CURRENT_SOURCE_DIR}/lib/cpython/Lib" "${CMAKE_CURRENT_SOURCE_DIR}/Lib/"
#    WORKING_DIRECTORY ../EterniaGameLogic
#)




include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/cpython/")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/cpython/Include")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/freealut/include")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/openal-soft/include")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/freealut/include")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/EterniaLibrary/include")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/lua")
include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/zlib")
#include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/FFmpeg/include")
#include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/ImageMagick/")
#include_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/ImageMagick/Magick++/lib")





link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/")
IF(!USEPRECOMPILED_ETERNIALIBRARY)
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/precompiled_EterniaLib")
ELSE()
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/EterniaLibrary/lib")
    add_subdirectory("lib/EterniaLibrary")
    set(CUSTOMDEPSA Eternia)
    message("Compiling EterniaLibrary when available")
ENDIF()




#### MAKES BUILDING FASTER
IF(USEPRECOMPILED_LIBS)
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/precompiled")
ELSE()
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/freealut/src/.libs")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/openal-soft")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/cpython")
    #link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/ImageMagick/MagickWand/.libs")
    #link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/ImageMagick/Magick++/lib/.libs")
    #link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/ImageMagick/MagickCore/.libs")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/FFmpeg/libavcodec")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/FFmpeg/libswscale")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/FFmpeg/libavutil")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/FFmpeg/libavdevice")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/FFmpeg/libavformat")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/FFmpeg/libavfilter")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/FFmpeg/libswresample")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/lua")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/zlib")
    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/EterniaLibrary/lib")

    link_directories("${CMAKE_CURRENT_SOURCE_DIR}/lib/")


    add_subdirectory(lib/openal-soft)
    add_subdirectory(lib/zlib)
    
    
    #add_custom_target(
    #    ImageMagick
    #    COMMAND make -j 40
    #    WORKING_DIRECTORY lib/ImageMagick
    #)
    
    add_custom_target(
        CPython
        #COMMAND ./configure --enable-shared
        COMMAND make -j 40 # && cp "${CMAKE_CURRENT_SOURCE_DIR}/lib/cpython/Lib" "${CMAKE_CURRENT_SOURCE_DIR}/Lib/"
        WORKING_DIRECTORY lib/cpython
    )

    add_custom_target(
        freealut
        #COMMAND ./configure --enable-shared
        COMMAND make -j 40
        WORKING_DIRECTORY lib/freealut
    )

    add_custom_target(
        lua
        COMMAND make -j 40
        WORKING_DIRECTORY lib/lua
    )


    add_custom_target(
        FFmpeg
        #COMMAND ./configure
        COMMAND make -j 40
        WORKING_DIRECTORY lib/FFmpeg
    )


    set(CUSTOMDEPSB CPython OpenAL zlib lua FFmpeg freealut)
    #set(MAGICKLIBS libMagickWand-7.Q16HDRI.a libMagickCore-7.Q16HDRI.a libMagick++-7.Q16HDRI.a)
    #set(MAGICKDEPS dl Xext gomp freetype png16 z tiff lzma jbig)
ENDIF()

set(FFMPGLIBS libopenal.a libalut.a libavcodec.a libswscale.a libavutil.a libavdevice.a libavformat.a libavfilter.a libswresample.a)
set(CUSTOMLIBS "libEternia.a" "libEterniaGameLogic.a" libpython3.8m.a libz.a liblua.a ${FFMPGLIBS} ) #${MAGICKLIBS} libopenal.so

######################################
###########  Libraries  ##############
######################################
#IF (WIN32)
#	TARGET_LINK_LIBRARIES(${program} C:\Users\Dread\build\EterniaLib\Debug\Eternia.lib)
#ELSE()
#	TARGET_LINK_LIBRARIES(${program} /home/dread/build/EterniaLib/libEternia.a)
#ENDIF()

#set(PROGRAMS oglfirst pointers)
set(CONFIGS_FOLDER .)
#set(SFML_DIR ${CONFIGS_FOLDER})
set(OpenCL_DIR ${CONFIGS_FOLDER})
#set(ALUT_DIR ${CONFIGS_FOLDER})
####set(Eternia_DIR ${CONFIGS_FOLDER})
#set(CEGUI_DIR ${CONFIGS_FOLDER})




IF(WIN32)

ELSE()
    find_package(X11 REQUIRED)
    include_directories(${X11_INCLUDE_DIRS})
    link_directories(${X11_LIBRARY_DIRS})
    add_definitions(${X11_DEFINITIONS})
ENDIF()
#find_package(OpenCL REQUIRED) #use opencl-config.cmake

#find_package(ALUT REQUIRED)
#find_package(Boost COMPONENTS thread chrono system)

#find_package(OpenCL) # not required, but building with it will help

####find_package(Eternia REQUIRED) # << Eternia Library




# built alongside
#find_package(OpenAL REQUIRED)
#find_package(ZLIB REQUIRED) # zlib

#include_directories(${OpenAL_INCLUDE_DIRS})
#link_directories(${OpenAL_LIBRARY_DIRS})
#add_definitions(${OpenAL_DEFINITIONS})

#include_directories(${OPENAL_INCLUDE_DIRS})
#link_directories(${OPENAL_LIBRARY_DIRS})
#add_definitions(${OPENAL_DEFINITIONS})

#include_directories(${ALUT_INCLUDE_DIRS})
#link_directories(${ALUT_LIBRARY_DIRS})
#add_definitions(${ALUT_DEFINITIONS})

#include_directories(${OpenGL_INCLUDE_DIRS})
#link_directories(${OpenGL_LIBRARY_DIRS})
#add_definitions(${OpenGL_DEFINITIONS})

#include_directories(${OpenCL_INCLUDE_DIRS})
#link_directories(${OpenCL_LIBRARY_DIRS})
#add_definitions(${OpenCL_DEFINITIONS})

#include_directories(${GLU_INCLUDE_DIRS})
#link_directories(${GLU_LIBRARY_DIRS})
#add_definitions(${GLU_DEFINITIONS})

#include_directories(${Boost_INCLUDE_DIRS})
#link_directories(${Boost_LIBRARY_DIRS})
#add_definitions(${Boost_DEFINITIONS})

#include_directories(${ZLIB_INCLUDE_DIRS})
#link_directories(${ZLIB_LIBRARY_DIRS})
#add_definitions(${ZLIB_DEFINITIONS})


find_package(GLEW REQUIRED)
find_package(GLUT REQUIRED)
find_package(OpenGL REQUIRED)


include_directories(${OPENGL_INCLUDE_DIRS})
link_directories(${OPENGL_LIBRARY_DIRS})
add_definitions(${OPENGL_DEFINITIONS})

include_directories(${GLEW_INCLUDE_DIRS})
link_directories(${GLEW_LIBRARY_DIRS})
add_definitions(${GLEW_DEFINITIONS})

include_directories(${GLUT_INCLUDE_DIRS})
link_directories(${GLUT_LIBRARY_DIRS})
add_definitions(${GLUT_DEFINITIONS})





# Scripting
#FIND_PACKAGE(Lua51 REQUIRED)
FIND_PACKAGE(Java REQUIRED)
FIND_PACKAGE(JNI REQUIRED)
include_directories(${JAVA_INCLUDE_DIRS})
link_directories(${JAVA_LIBRARY_DIRS})
add_definitions(${JAVA_DEFINITIONS})
#FIND_PACKAGE(JVM REQUIRED)
#FIND_PACKAGE(PythonLibs REQUIRED)
#FIND_PACKAGE(PythonInterp REQUIRED)

#Visuals
FIND_PACKAGE(ImageMagick REQUIRED)
FIND_PACKAGE(ImageMagick COMPONENTS Magick++)
FIND_PACKAGE(ImageMagick COMPONENTS MagickCore)
FIND_PACKAGE(ImageMagick COMPONENTS convert)
FIND_PACKAGE(ImageMagick COMPONENTS Magick++ convert)




#include_directories(${LUA_INCLUDE_DIR})
#link_directories(${LUA_LIBRARIES})
#add_definitions(${LUA_DEFINITIONS})



#include_directories(${PYTHON_INCLUDE_DIR})
#link_directories(${PYTHON_LIBRARY})
#add_definitions(${PYTHON_DEFINITIONS})


#message("Lua: ${LUA_LIBRARY}")
#message("JNI: ${JNI_LIBRARIES}")
#message("OCL: ${OPENCL_LIBRARY}")
#message("GL: ${OPENGL_LIBRARY}")
#message("GLEW: ${GLEW_LIBRARY}")
#message("OpenAL: ${OPENAL_LIBRARY}")
#message("ALUT: ${ALUT_LIBRARY}")


#message("Python Lib: ${PYTHON_LIBRARIES}")
#message("Python inc: ${PYTHON_INCLUDE_DIR}")

#include_directories(${JNI_INCLUDE_DIRS})
#link_directories(${JNI_LIBRARY_DIRS})
#add_definitions(${JNI_DEFINITIONS})

#include_directories(${PYTHONLIBS_INCLUDE_DIRS})
#link_directories(${PYTHONLIBS_LIBRARY_DIRS})
#add_definitions(${PYTHONLIBS_DEFINITIONS})

#Images processing, 2D/3D sprites
include_directories(${ImageMagick_INCLUDE_DIRS})
link_directories(${ImageMagick_LIBRARIES})
add_definitions(${ImageMagick_DEFINITIONS})
include_directories(${ImageMagick_MagickCore_INCLUDE_DIRS})
link_directories(${ImageMagick_MagickCore_LIBRARY})
add_definitions(${ImageMagick_MagickCore_DEFINITIONS})
include_directories(${ImageMagick_Magick++_INCLUDE_DIRS})
link_directories(${ImageMagick_Magick++_LIBRARY})
add_definitions(${ImageMagick_Magick++_DEFINITIONS})

#message("ImageMagick: ${ImageMagick_LIBRARY}")
message("ImageMagickCore: ${ImageMagick_MagickCore_LIBRARY}")
message("ImageMagick++: ${ImageMagick_Magick++_LIBRARY}")

include_directories("/usr/lib/jvm/java-8-openjdk-amd64/include")
include_directories("/usr/lib/jvm/java-8-openjdk-amd64/include/linux")





#${OPENCL_LIBRARY}
set(CORELIBS ${OPENGL_LIBRARY} ${X11_LIBRARY} ${OPENCL_LIBRARY} ${GLUT_LIBRARY} ${GLEW_LIBRARY} ${Boost_LIBRARIES} ${LUA_LIBRARY} ${JAVA_LIBRARY} ${JNI_LIBRARIES} ${PYTHONLIBS_LIBRARY} ${ImageMagick_Magick++_LIBRARY} ${ImageMagick_MagickCore_LIBRARY} ${CMAKE_THREAD_LIBS_INIT}) 
# ${ALUT_LIBRARY} ${ZLIB_LIBRARY} ${OPENAL_LIBRARY}
# 
message("LIBS: ${CORELIBS}")
message("THREADSLIB: ${CMAKE_THREAD_LIBS_INIT}")
message("CUSTOMLIBS: ${CUSTOMLIBS}")
#message("MAGICK_DEP_LIBS: ${MAGICKDEPS}")


SET(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)
ADD_EXECUTABLE(${program} ${CC_src2})
#target_link_libraries(${program} dl)
target_link_libraries(${program} ${CORELIBS} X11 ${CUSTOMLIBS} ${CMAKE_THREAD_LIBS_INIT} dl sndio) # ${MAGICKDEPS}

#ExternalProject_Add(PATH=${CMAKE_CURRENT_BINARY_DIR}/EterniaLib)
add_dependencies(${program} ${CUSTOMDEPSA} ${CUSTOMDEPSB})



######################################
############### Install! #############
######################################
INSTALL_FILES(/include src/*.h)
INSTALL_FILES(/include src/*/*.h)
INSTALL_FILES(/include src/*/*/*.h)
INSTALL_FILES(/include src/*/*/*/*.h)
INSTALL_FILES(/include src/*/*/*/*/*.h)
INSTALL_FILES(/include src/*/*/*/*/*/*/*.h)

#INSTALL_PROGRAMS(${program} FILES scr1 ${CMAKE_CURRENT_BINARY_DIR}/scr2)


INSTALL(TARGETS ${program}
  RUNTIME DESTINATION bin
)

