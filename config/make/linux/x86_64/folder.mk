###############################
### Autor: Reymon Dev       ###
### Datum: 12. August. 2026 ###
### Aktua: 12. August. 2026 ###
### Lizenz: MIT             ###
###############################

###############################
### Aliases for compability ###
###############################

BUILDDIR := $(MAKE_BUILD_PREFIX)

##########################
### Source Directories ###
##########################

SOURCE_FOLDER_TWSORDER    := ./TwsOrder
SOURCE_FOLDER_TWSCLIENT   := ./TwsClient
SOURCE_FOLDER_TWSCONTRACT := ./TwsContract

##########################
### Object Directories ###
##########################

OBJECT_FOLDER_TWSORDER    := $(BUILDDIR)/object/TwsOrder
OBJECT_FOLDER_TWSCLIENT   := $(BUILDDIR)/object/TwsClient
OBJECT_FOLDER_TWSCONTRACT := $(BUILDDIR)/object/TwsContract

##########################
### Binary Directories ###
##########################

BINARY_FOLDER_BIN := $(BUILDDIR)/bin
BINARY_FOLDER_LIB := $(BUILDDIR)/lib