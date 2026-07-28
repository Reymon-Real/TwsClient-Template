# *****************************
# *** Autor: Reymon Dev     ***
# *** Datum: 26. Juli. 2026 ***
# *** Aktua: 26. Juli. 2026 ***
# *** Lizenz: MIT           ***
# *****************************

cmake_minimum_required(VERSION 4.0.0 FATAL_ERROR)
project(
	TwsClient
	VERSION 1.0.0
	LANGUAGES CXX C
)

# *****************************
# *** Environment Variables ***
# *****************************

set(PROJECT_SYSTEM ${CMAKE_SYSTEM_NAME})

set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# *******************
# *** Directories ***
# *******************

set(TWSCLIENT_DIR ${CMAKE_SOURCE_DIR}/TwsClient)

if (PROJECT_SYSTEM STREQUAL "Linux" OR PROJECT_SYSTEM STREQUAL "Darwin")

set(
	PROJECT_GLOBAL_INCLUDE_DIR
	${CMAKE_SOURCE_DIR}/include
	${CMAKE_SOURCE_DIR}/include/IBKR/TwsSocketClient/protobufUnix
)

elseif (PROJECT_SYSTEM STREQUAL "Windows")

set(
	PROJECT_GLOBAL_INCLUDE_DIR
	${CMAKE_SOURCE_DIR}/include
)

endif()

# *************
# *** Files ***
# *************

file(GLOB SOURCES_FILE_MAIN ${CMAKE_SOURCE_DIR}/main.cpp)

file(
	GLOB SOURCES_FILES_TWSCLIENT
	${TWSCLIENT_DIR}/account/*.cpp
	${TWSCLIENT_DIR}/advisor/*.cpp
	${TWSCLIENT_DIR}/analysis/*.cpp
	${TWSCLIENT_DIR}/bond/*.cpp
	${TWSCLIENT_DIR}/codes/*.cpp
	${TWSCLIENT_DIR}/connection/*.cpp
	${TWSCLIENT_DIR}/contract/*.cpp
	${TWSCLIENT_DIR}/error/*.cpp
	${TWSCLIENT_DIR}/historical/*.cpp
	${TWSCLIENT_DIR}/id/*.cpp
	${TWSCLIENT_DIR}/market/*.cpp
	${TWSCLIENT_DIR}/miscellaneous/*.cpp
	${TWSCLIENT_DIR}/news/*.cpp
	${TWSCLIENT_DIR}/options/*.cpp
	${TWSCLIENT_DIR}/other/*.cpp
	${TWSCLIENT_DIR}/pnl/*.cpp
	${TWSCLIENT_DIR}/portfolio/*.cpp
	${TWSCLIENT_DIR}/price/*.cpp
	${TWSCLIENT_DIR}/protobuf/*.cpp
	${TWSCLIENT_DIR}/scanner/*.cpp
	${TWSCLIENT_DIR}/system/*.cpp
	${TWSCLIENT_DIR}/test/*.cpp
	${TWSCLIENT_DIR}/ticker/*.cpp
	${TWSCLIENT_DIR}/time/*.cpp
)

# *****************
# *** Libraries ***
# *****************

add_library(
	TwsClient_static
	STATIC
	${SOURCES_FILES_TWSCLIENT}
)

add_library(
	TwsClient_shared
	SHARED
	${SOURCES_FILES_TWSCLIENT}
)

# *******************
# *** Executables ***
# *******************

add_executable(
	MyProgram
	${SOURCES_FILE_MAIN}
)

# ***********************
# *** Target Includes ***
# ***********************

target_include_directories(
	TwsClient_static
	PRIVATE
	${PROJECT_GLOBAL_INCLUDE_DIR}
)

target_include_directories(
	TwsClient_shared
	PRIVATE
	${PROJECT_GLOBAL_INCLUDE_DIR}
)

target_include_directories(
	MyProgram
	PRIVATE
	${PROJECT_GLOBAL_INCLUDE_DIR}
)

# ********************
# *** Targets Link ***
# ********************

target_link_libraries(
	MyProgram
	TwsClient_static
)

# **********************
# *** Set Properties ***
# **********************

set_target_properties(
	TwsClient_static
	PROPERTIES
	OUTPUT_NAME "TwsClient"
	ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
)

if (PROJECT_SYSTEM STREQUAL "Windows")

set_target_properties(
	TwsClient_shared
	PROPERTIES
	OUTPUT_NAME "TwsClient"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
)

elseif (PROJECT_SYSTEM STREQUAL "Linux")

set_target_properties(
	TwsClient_shared
	PROPERTIES
	OUTPUT_NAME "TwsClient"
	VERSION 1.0.0
	SOVERSION 1.0
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
)

elseif (PROJECT_SYSTEM STREQUAL "Darwin")

set_target_properties(
	TwsClient_shared
	PROPERTIES
	OUTPUT_NAME "TwsClient"
	VERSION 1.0.0
	SOVERSION 1.0
	MACHO_COMPATIBILITY_VERSION 1.0.0
    MACHO_CURRENT_VERSION 1.0
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib"
)

endif()