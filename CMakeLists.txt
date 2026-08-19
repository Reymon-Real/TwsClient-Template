###############################
### Autor: Reymon Dev       ###
### Datum: 26. Juli. 2026   ###
### Aktua: 09. August. 2026 ###
### Lizenz: MIT             ###
###############################

cmake_minimum_required(VERSION 4.0.0 FATAL_ERROR)
project(
	TwsClient
	VERSION 1.1.5
	LANGUAGES C CXX
)

#############################
### Environment Variables ###
#############################

string(TOLOWER "${CMAKE_SYSTEM_NAME}" PROJECT_SYSTEM)

#########################
### Project Variables ###
#########################

set(TWSORDER_VERSION    0.1.0)
set(TWSCONTRACT_VERSION 0.1.0)

set(TWSORDER_SOVERSION    0.1)
set(TWSCONTRACT_SOVERSION 0.1)

###############
### Options ###
###############

include(Options.cmake)

##########################
### Local Dependencies ###
##########################

add_library(libprotobuf SHARED IMPORTED)

add_library(libbid_static STATIC IMPORTED)
add_library(libbid_shared STATIC IMPORTED)
add_library(TwsSocketClient_static STATIC IMPORTED)
add_library(TwsSocketClient_shared SHARED IMPORTED)

###################
### Directories ###
###################

set(TWSORDER_DIR    "${CMAKE_SOURCE_DIR}/TwsOrder")
set(TWSCLIENT_DIR   "${CMAKE_SOURCE_DIR}/TwsClient")
set(TWSCONTRACT_DIR "${CMAKE_SOURCE_DIR}/TwsContract")

#############
### Files ###
#############

file(GLOB SOURCE_FILE_MAIN "${CMAKE_SOURCE_DIR}/main.cpp")

file(
	GLOB SOURCE_FILES_TWSORDER
	"${TWSORDER_DIR}/*.cpp"
)

file(
	GLOB SOURCE_FILES_TWSCLIENT
	"${TWSCLIENT_DIR}/account/*.cpp"
	"${TWSCLIENT_DIR}/advisor/*.cpp"
	"${TWSCLIENT_DIR}/analysis/*.cpp"
	"${TWSCLIENT_DIR}/bond/*.cpp"
	"${TWSCLIENT_DIR}/client/*.cpp"
	"${TWSCLIENT_DIR}/codes/*.cpp"
	"${TWSCLIENT_DIR}/connection/*.cpp"
	"${TWSCLIENT_DIR}/contract/*.cpp"
	"${TWSCLIENT_DIR}/error/*.cpp"
	"${TWSCLIENT_DIR}/historical/*.cpp"
	"${TWSCLIENT_DIR}/id/*.cpp"
	"${TWSCLIENT_DIR}/market/*.cpp"
	"${TWSCLIENT_DIR}/miscellaneous/*.cpp"
	"${TWSCLIENT_DIR}/news/*.cpp"
	"${TWSCLIENT_DIR}/options/*.cpp"
	"${TWSCLIENT_DIR}/orders/*.cpp"
	"${TWSCLIENT_DIR}/other/*.cpp"
	"${TWSCLIENT_DIR}/pnl/*.cpp"
	"${TWSCLIENT_DIR}/portfolio/*.cpp"
	"${TWSCLIENT_DIR}/price/*.cpp"
	"${TWSCLIENT_DIR}/protobuf/*.cpp"
	"${TWSCLIENT_DIR}/scanner/*.cpp"
	"${TWSCLIENT_DIR}/system/*.cpp"
	"${TWSCLIENT_DIR}/test/*.cpp"
	"${TWSCLIENT_DIR}/ticker/*.cpp"
	"${TWSCLIENT_DIR}/time/*.cpp"
)

file(
	GLOB SOURCE_FILES_TWSCONTRACT
	"${TWSCONTRACT_DIR}/*.cpp"
)

########################
### Static Libraries ###
########################

add_library(
	TwsOrder_static
	STATIC
	"${SOURCE_FILES_TWSORDER}"
)

add_library(
	TwsClient_static
	STATIC
	"${SOURCE_FILES_TWSCLIENT}"
)

add_library(
	TwsContract_static
	STATIC
	"${SOURCE_FILES_TWSCONTRACT}"
)

########################
### Shared Libraries ###
########################

add_library(
	TwsOrder_shared
	SHARED
	"${SOURCE_FILES_TWSORDER}"
)

add_library(
	TwsClient_shared
	SHARED
	"${SOURCE_FILES_TWSCLIENT}"
)

add_library(
	TwsContract_shared
	SHARED
	"${SOURCE_FILES_TWSCONTRACT}"
)

###################
### Executables ###
###################

add_executable(
	MyProgram
	"${SOURCE_FILE_MAIN}"
)

#######################
### Target Includes ###
#######################

target_include_directories(
	TwsOrder_static
	PRIVATE
	"${PROJECT_GLOBAL_INCLUDE_DIR}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT_PROTOBUF}"
)

target_include_directories(
	TwsOrder_shared
	PRIVATE
	"${PROJECT_GLOBAL_INCLUDE_DIR}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT_PROTOBUF}"
)


target_include_directories(
	TwsClient_static
	PRIVATE
	"${PROJECT_GLOBAL_INCLUDE_DIR}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT_PROTOBUF}"
)

target_include_directories(
	TwsClient_shared
	PRIVATE
	"${PROJECT_GLOBAL_INCLUDE_DIR}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT_PROTOBUF}"
)


target_include_directories(
	TwsContract_static
	PRIVATE
	"${PROJECT_GLOBAL_INCLUDE_DIR}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT_PROTOBUF}"
)

target_include_directories(
	TwsContract_shared
	PRIVATE
	"${PROJECT_GLOBAL_INCLUDE_DIR}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT_PROTOBUF}"
)


target_include_directories(
	MyProgram
	PRIVATE
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT}"
	"${IBKR_DIR_INCLUDE_TWSSOCKETCLIENT_PROTOBUF}"
)

####################
### Targets Link ###
####################

# TODO: implement dynamic selection for linkage

target_link_libraries(
	TwsOrder_shared
	TwsSocketClient_static
	libbid_static
	libprotobuf
)

target_link_libraries(
	TwsClient_shared
	TwsSocketClient_static
	libbid_static
	libprotobuf
)

target_link_libraries(
	TwsContract_shared
	TwsSocketClient_static
	libbid_static
	libprotobuf
)

target_link_libraries(
	MyProgram
	TwsOrder_static
	TwsClient_static
	TwsContract_static
	TwsSocketClient_static
	libbid_static
	libprotobuf
)

##############################################
### Set Propoerties for Local Dependencies ###
##############################################

set_target_properties(
	libbid_static
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libbid.a"
)

set_target_properties(
	TwsSocketClient_static
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libTwsSocketClient.a"
)

if (PROJECT_SYSTEM STREQUAL "windows")

set_target_properties(
	libprotobuf
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libprotobuf.dll"
)

set_target_properties(
	libbid_shared
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libbid.dll"
)

set_target_properties(
	TwsSocketClient_shared
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libTwsSocketClient.dll"
)

elseif (PROJECT_SYSTEM STREQUAL "linux")

set_target_properties(
	libprotobuf
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libprotobuf.so"
)

set_target_properties(
	libbid_shared
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libbid.so"
)

set_target_properties(
	TwsSocketClient_shared
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libTwsSocketClient.so"
)

elseif (PROJECT_SYSTEM STREQUAL "darwin")

set_target_properties(
	libprotobuf
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libprotobuf.dylib"
)

set_target_properties(
	libbid_shared
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libbid.dylib"
)

set_target_properties(
	TwsSocketClient_shared
	PROPERTIES
	IMPORTED_LOCATION "${IBKR_DIR_LINKAGE_ROOT}/libTwsSocketClient.dylib"
)

endif()

######################
### Set Properties ###
######################

set_target_properties(
	MyProgram
	PROPERTIES
	OUTPUT_NAME "MyProgram"
	RUNTIME_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_BIN}"
)

set_target_properties(
	TwsOrder_static
	PROPERTIES
	OUTPUT_NAME "TwsOrder"
	ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

set_target_properties(
	TwsClient_static
	PROPERTIES
	OUTPUT_NAME "TwsClient"
	ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

set_target_properties(
	TwsContract_static
	PROPERTIES
	OUTPUT_NAME "TwsContract"
	ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

if (PROJECT_SYSTEM STREQUAL "windows")

set_target_properties(
	TwsOrder_shared
	PROPERTIES
	OUTPUT_NAME "TwsOrder"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

set_target_properties(
	TwsClient_shared
	PROPERTIES
	OUTPUT_NAME "TwsClient"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

set_target_properties(
	TwsContract_shared
	PROPERTIES
	OUTPUT_NAME "TwsContract"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

elseif (PROJECT_SYSTEM STREQUAL "linux")

set_target_properties(
	TwsOrder_shared
	PROPERTIES
	OUTPUT_NAME "TwsOrder"
	VERSION   "${TWSORDER_VERSION}"
	SOVERSION "${TWSORDER_SOVERSION}"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

set_target_properties(
	TwsClient_shared
	PROPERTIES
	OUTPUT_NAME "TwsClient"
	VERSION   "${CMAKE_PROJECT_VERSION}"
	SOVERSION "${CMAKE_PROJECT_VERSION_MAJOR}.${CMAKE_PROJECT_VERSION_MINOR}"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

set_target_properties(
	TwsContract_shared
	PROPERTIES
	OUTPUT_NAME "TwsContract"
	VERSION   "${TWSCONTRACT_VERSION}"
	SOVERSION "${TWSCONTRACT_SOVERSION}"
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

elseif (PROJECT_SYSTEM STREQUAL "darwin")

set_target_properties(
	TwsOrder_shared
	PROPERTIES
	OUTPUT_NAME "TwsOrder"
	VERSION   "${TWSORDER_VERSION}"
	SOVERSION "${TWSORDER_SOVERSION}"
	MACHO_COMPATIBILITY_VERSION 1.0.0
    MACHO_CURRENT_VERSION 1.0
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

set_target_properties(
	TwsClient_shared
	PROPERTIES
	OUTPUT_NAME "TwsClient"
	VERSION   "${CMAKE_PROJECT_VERSION}"
	SOVERSION "${CMAKE_PROJECT_VERSION_MAJOR}.${CMAKE_PROJECT_VERSION_MINOR}"
	MACHO_COMPATIBILITY_VERSION 1.0.0
    MACHO_CURRENT_VERSION 1.0
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

set_target_properties(
	TwsContract_shared
	PROPERTIES
	OUTPUT_NAME "TwsContract"
	VERSION   "${TWSCONTRACT_VERSION}"
	SOVERSION "${TWSCONTRACT_SOVERSION}"
	MACHO_COMPATIBILITY_VERSION 1.0.0
    MACHO_CURRENT_VERSION 1.0
	LIBRARY_OUTPUT_DIRECTORY "${CMAKE_OUTPUT_LIB}"
)

endif()