###############################
### Autor: Reymon Dev       ###
### Datum: 17. August. 2026 ###
### Aktua: 17. August. 2026 ###
### Lizenz: MIT             ###
###############################

###############
### Warning ###
###############

# For aarch64 on linux, the compiler is cc
# please, define the compiler for use that target

# For cross compiling, ARCH use the format <system>_<arch>
# Example: windows_x86_64, linux_x86_64, windows_aarch64
# Lern docs for more information

#######################
### Project Options ###
#######################

ARCH      := x86_64
SYSTEM    := linux
BUILDTYPE := debug

####################
### Make Options ###
####################

MAKE_BUILD_PREFIX := ./build/$(BUILDTYPE)/$(SYSTEM)/$(ARCH)/make
MAKE_BUILD_BINDIR := $(MAKE_BUILD_PREFIX)/bin
MAKE_BUILD_LIBDIR := $(MAKE_BUILD_PREFIX)/lib

MAKE_INSTALL_PREFIX := /usr/local
MAKE_INSTALL_BINDIR := $(MAKE_INSTALL_PREFIX)/bin
MAKE_INSTALL_LIBDIR := $(MAKE_INSTALL_PREFIX)/lib

###########################
### Compilation Options ###
###########################

#TWSORDER_SHARED_LINAKGE    := true
#TWSCLIENT_SHARED_LINAKGE   := true
#TWSCONTRACT_SHARED_LINAKGE := true

#LIBBID_SHARED_LINKAGE := true # Intel Library
#TWSAPI_SHARED_LINKAGE := true # TwsSocketClient Library

LINKER_SEARCH_DIRECTORIES := /usr/local/lib lib lib/IBKR $(MAKE_BUILD_PREFIX)/lib # List of directories to search in linkage time

BINARY_EXECUTABLE_RPATH_MYPROGRAM := '$$ORIGIN:$$ORIGIN/lib:$$ORIGIN/../lib'

BINARY_LIBRARY_SHARED_RPATH_TWSORDER    := '$$ORIGIN'
BINARY_LIBRARY_SHARED_RPATH_TWSCLIENT   := '$$ORIGIN'
BINARY_LIBRARY_SHARED_RPATH_TWSCONTRACT := '$$ORIGIN'