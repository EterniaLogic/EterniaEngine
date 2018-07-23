cmake_minimum_required(VERSION 2.8)
include(ExternalProject)
#include(Hg)
#include(CVS)
SET(program Engine)

set (CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")

PROJECT(EterniaEngine)

#build for windows under linux
#set(WIN32 0)
IF(WIN32)
    message("NOTE: Building for Windows!")
	# the name of the target operating system
	SET(CMAKE_SYSTEM_NAME Windows)

	# which compilers to use for C and C++
	SET(CMAKE_C_COMPILER x86_64-w64-mingw32-gcc)
	SET(CMAKE_CXX_COMPILER x86_64-w64-mingw32-g++)
	SET(CMAKE_RC_COMPILER x86_64-w64-mingw32-windres)

	# here is the target environment located
	SET(CMAKE_FIND_ROOT_PATH  /usr/x86_64-w64-mingw32 )

	# adjust the default behaviour of the FIND_XXX() commands:
	# search headers and libraries in the target environment, search
	# programs in the host environment
	set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
	set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
	set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

	#rename resultant compiled object to .exe because the compiler is still thinking in linux extensions.
	add_custom_command(TARGET EterniaEngine
                    POST_BUILD
                    COMMAND mv ${CMAKE_BINARY_DIR}/${program} ${CMAKE_BINARY_DIR}/${program}.exe)
    ADD_DEFINITIONS(-w) #cygwin throws a LOT of errors.
    link_libraries(opengl32)

    set(GLEW_ARGS SYSTEM=linux-mingw64)
    set(WIN32_CARGS -DWINDOWS=1 -DWIN32=1 )
ENDIF()

set(CMAKE_BUILD_TYPE Debug)
#set(CMAKE_CXX_FLAGS "-Wall -pedantic -Wextra")
#set(CMAKE_CXX_FLAGS " -pedantic -pipe -DDEBUG -std=c++0x")

#set(CMAKE_CXX_FLAGS " -pipe -DDEBUG -std=c++0x -g3 -w -ldl -static")
#set(CMAKE_C_FLAGS " -pipe -DDEBUG -std=c++0x -g3 -w -ldl -static")

set(CMAKE_CXX_FLAGS " -DDEBUG -std=c++0x -g3 -w")
set(CMAKE_C_FLAGS " -DDEBUG -std=c++0x -g3 -w")


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
    "*.h"
    "*.c"
    "*.cpp"
    "*.hpp"
)



#FBX
include_directories("dep/FBX/include")
#link_directories(dep/FBX/lib/gcc4/x64/release/libfbxsdk.a)
#TARGET_LINK_LIBRARIES("dep/FBX/lib/gcc4/x64/release/libfbxsdk.a")

#EterniaLib
include_directories("../EterniaLib/include")
add_definitions(${EterniaLibrary_DEFINITIONS})
#link_directories("../EterniaLib/libEternia.a")
#add_subdirectory("../EterniaLib/" "../EterniaLib/")

ADD_EXECUTABLE(${program} ${CC_src2})
target_link_libraries(${program} Eternia)
#ExternalProject_Add(PATH=${CMAKE_CURRENT_BINARY_DIR}/EterniaLib)

######################################
####### Mainstream Libraries #########
######################################


# list all of the direct download dependencies here.
#set(PROGRAMz SFML SFGUI)#openal rapidxml tinyxml ogre pcre libsndfile libjpeg libfreetype2 OIS)
#set(glewDDIR GIT_REPOSITORY "git://glew.git.sourceforge.net/gitroot/glew/glew")
#set(SFGUIDDIR GIT_REPOSITORY "git://boxbox.org/SFGUI.git")
#set(SFMLDDIR GIT_REPOSITORY "https://github.com/LaurentGomila/SFML.git")

#foreach(programz ${PROGRAMz})
#    ExternalProject_Add(${programz}
#      PREFIX "${CMAKE_CURRENT_BINARY_DIR}/dep/${programz}"
#      ${${programz}DDIR}
#      INSTALL_DIR "${CMAKE_CURRENT_BINARY_DIR}/dep/${programz}"
#      CMAKE_ARGS "-DCMAKE_INSTALL_PREFIX=${CMAKE_CURRENT_BINARY_DIR}/dep/${programz}"
#    )

#    ExternalProject_Get_Property(${programz} install_dir)
#    include_directories(${install_dir}/include)

#    add_dependencies(${program} ${programz})
#    file(GLOB p_src
        #"${install_dir}/lib/*.a"
#        "${install_dir}/lib/*.so"
#    )

#    set(${programz}_DIR .)
#    MESSAGE( STATUS "BB: " ${p_src} )


#    find_package(${programz} REQUIRED)

#    link_directories(${install_dir}/lib)
#    target_link_libraries(${program} ${p_src})
#endforeach(programz)



## GLEW
#add_custom_target(
#   glew
#   COMMAND make all ${GLEW_ARGS}
#   WORKING_DIRECTORY "${CMAKE_BINARY_DIR}/dep/glew/src/glew/"
#)
#include_directories(${CMAKE_BINARY_DIR}/dep/glew/src/glew/include)
#link_directories(${CMAKE_BINARY_DIR}/dep/glew/src/lib)
#IF(WIN32)
#    link_libraries(${CMAKE_BINARY_DIR}/dep/glew/lib/glew32.dll)
#    link_libraries(${CMAKE_BINARY_DIR}/dep/glew/lib/glew32mx.dll)
#ELSE()
#    target_link_libraries(${program} GLEW)
#ENDIF()
#add_dependencies(${program} glew)


# set interlinking dependencies
#add_dependencies(SFML glew)
#add_dependencies(SFGUI SFML)
#add_dependencies(SFGUI glew)


## Add my library
#add_custom_target(EterniaLib
#   COMMAND make all
#   WORKING_DIRECTORY "${CMAKE_BINARY_DIR}/EterniaLib/"
#)

#include_directories("EterniaLib/src")
#link_directories(${CMAKE_BINARY_DIR})
#link_libraries(Eternia)

#add_dependencies(${program} EterniaLib)

#add_custom_command(TARGET EterniaLib
#                    POST_BUILD
#                    COMMAND cp ${CMAKE_BINARY_DIR}/EterniaLib/libEternia.a ${CMAKE_BINARY_DIR}/ )




######################################
########## My Libraries ##############
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
set(ALUT_DIR ${CONFIGS_FOLDER})
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
find_package(OpenAL REQUIRED)
find_package(ALUT REQUIRED)
find_package(Boost COMPONENTS thread chrono system)
find_package(GLEW REQUIRED)
find_package(GLUT REQUIRED)
find_package(OpenGL REQUIRED)
#find_package(OpenCL) # not required, but building with it will help
find_package(ZLIB REQUIRED) # zlib
####find_package(Eternia REQUIRED) # << Eternia Library
FIND_PACKAGE(Threads REQUIRED)

# Scripting
FIND_PACKAGE(Lua51 REQUIRED)
FIND_PACKAGE(Java REQUIRED)
FIND_PACKAGE(JNI REQUIRED)
#FIND_PACKAGE(JVM REQUIRED)
FIND_PACKAGE(PythonLibs REQUIRED)

#Visuals
FIND_PACKAGE(ImageMagick REQUIRED)
FIND_PACKAGE(ImageMagick COMPONENTS Magick++)
FIND_PACKAGE(ImageMagick COMPONENTS MagickCore)
FIND_PACKAGE(ImageMagick COMPONENTS convert)
FIND_PACKAGE(ImageMagick COMPONENTS Magick++ convert)


#include_directories(${OpenAL_INCLUDE_DIRS})
#link_directories(${OpenAL_LIBRARY_DIRS})
#add_definitions(${OpenAL_DEFINITIONS})

include_directories(${OPENAL_INCLUDE_DIRS})
link_directories(${OPENAL_LIBRARY_DIRS})
add_definitions(${OPENAL_DEFINITIONS})

include_directories(${ALUT_INCLUDE_DIRS})
link_directories(${ALUT_LIBRARY_DIRS})
add_definitions(${ALUT_DEFINITIONS})

#include_directories(${OpenGL_INCLUDE_DIRS})
#link_directories(${OpenGL_LIBRARY_DIRS})
#add_definitions(${OpenGL_DEFINITIONS})

include_directories(${OPENGL_INCLUDE_DIRS})
link_directories(${OPENGL_LIBRARY_DIRS})
add_definitions(${OPENGL_DEFINITIONS})

#include_directories(${OpenCL_INCLUDE_DIRS})
#link_directories(${OpenCL_LIBRARY_DIRS})
#add_definitions(${OpenCL_DEFINITIONS})

include_directories(${GLEW_INCLUDE_DIRS})
link_directories(${GLEW_LIBRARY_DIRS})
add_definitions(${GLEW_DEFINITIONS})

include_directories(${GLUT_INCLUDE_DIRS})
link_directories(${GLUT_LIBRARY_DIRS})
add_definitions(${GLUT_DEFINITIONS})

#include_directories(${GLU_INCLUDE_DIRS})
#link_directories(${GLU_LIBRARY_DIRS})
#add_definitions(${GLU_DEFINITIONS})

#include_directories(${Boost_INCLUDE_DIRS})
#link_directories(${Boost_LIBRARY_DIRS})
#add_definitions(${Boost_DEFINITIONS})

include_directories(${ZLIB_INCLUDE_DIRS})
link_directories(${ZLIB_LIBRARY_DIRS})
add_definitions(${ZLIB_DEFINITIONS})

include_directories(${LUA_INCLUDE_DIR})
link_directories(${LUA_LIBRARIES})
add_definitions(${LUA_DEFINITIONS})

include_directories(${JAVA_INCLUDE_DIRS})
link_directories(${JAVA_LIBRARY_DIRS})
add_definitions(${JAVA_DEFINITIONS})


message("Lua: ${LUA_LIBRARY}")
message("JNI: ${JNI_LIBRARIES}")
message("OCL: ${OPENCL_LIBRARY}")
message("GL: ${OPENGL_LIBRARY}")
message("GLEW: ${GLEW_LIBRARY}")
message("OpenAL: ${OPENAL_LIBRARY}")
message("ALUT: ${ALUT_LIBRARY}")

#include_directories(${JNI_INCLUDE_DIRS})
#link_directories(${JNI_LIBRARY_DIRS})
#add_definitions(${JNI_DEFINITIONS})

include_directories(${PYTHONLIBS_INCLUDE_DIRS})
link_directories(${PYTHONLIBS_LIBRARY_DIRS})
add_definitions(${PYTHONLIBS_DEFINITIONS})

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
#message("ImageMagickCore: ${ImageMagick_MagickCore_LIBRARY}")
#message("ImageMagick++: ${ImageMagick_Magick++_LIBRARY}")

include_directories("/usr/lib/jvm/java-8-openjdk-amd64/include")
include_directories("/usr/lib/jvm/java-8-openjdk-amd64/include/linux")

####include_directories(${Eternia_INCLUDE_DIRS})
####link_directories(${Eternia_LIBRARY_DIRS})
####add_definitions(${Eternia_DEFINITIONS})




#${OPENCL_LIBRARY}
set(CORELIBS ${OPENGL_LIBRARY} ${X11_LIBRARY} ${OPENAL_LIBRARY} ${OPENCL_LIBRARY} ${ALUT_LIBRARY} ${GLUT_LIBRARY} ${GLEW_LIBRARY} ${Boost_LIBRARIES} ${ZLIB_LIBRARY} ${CMAKE_THREAD_LIBS_INIT} ${LUA_LIBRARY} ${JAVA_LIBRARY} ${JNI_LIBRARIES} ${PYTHONLIBS_LIBRARY} ${ImageMagick_Magick++_LIBRARY} ${ImageMagick_MagickCore_LIBRARY} )
#message("LIBS: ${CORELIBS}")


target_link_libraries(${program} ${CORELIBS} X11)

#add_custom_command(TARGET EterniaLibrary
#    POST_BUILD
#    COMMAND cp ${CMAKE_BINARY_DIR}/EterniaLib/libEternia.a ${CMAKE_BINARY_DIR}/)

# Merge all of the dependency libraries (?)
#add_custom_command(TARGET EterniaEngine
#    POST_BUILD
#    COMMAND cp ${CMAKE_BINARY_DIR}/EterniaLib/libEternia.a ${CMAKE_BINARY_DIR}/)
#######################
#######################
#######################



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


FOREACH(subdir ${SUBDIRS})
    #ADD_SUBDIRECTORY(${subdir})
	file(GLOB ${subdir}_files
		"*.h"
		"*.c"
		"*.cpp"
		"*.hpp"
	)
	SOURCE_GROUP(${subdir} FILES ${subdir}_files)
ENDFOREACH()
