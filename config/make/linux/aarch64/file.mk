###############################
### Autor: Reymon Dev       ###
### Datum: 12. August. 2026 ###
### Aktua: 12. August. 2026 ###
### Lizenz: MIT             ###
###############################

#########################
### Source Main Files ###
#########################

SOURCE_FILE_MAIN := ./main.cpp

#########################
### Object Main Files ###
#########################

OBJECT_FILE_MAIN := $(BUILDDIR)/object/main.cpp.o

########################
### Static Libraries ###
########################

BINARY_LIBRARY_STATIC_TWSORDER    := $(BINARY_FOLDER_LIB)/libTwsOrder.a
BINARY_LIBRARY_STATIC_TWSCLIENT   := $(BINARY_FOLDER_LIB)/libTwsClient.a
BINARY_LIBRARY_STATIC_TWSCONTRACT := $(BINARY_FOLDER_LIB)/libTwsContract.a

########################
### Shared Libraries ###
########################

BINARY_LIBRARY_SHARED_TWSORDER    := $(BINARY_FOLDER_LIB)/libTwsOrder.so.$(VERSION_TWSORDER)
BINARY_LIBRARY_SHARED_TWSCLIENT   := $(BINARY_FOLDER_LIB)/libTwsClient.so.$(VERSION_TWSCLIENT)
BINARY_LIBRARY_SHARED_TWSCONTRACT := $(BINARY_FOLDER_LIB)/libTwsContract.so.$(VERSION_TWSCONTRACT)

######################
### Symbolic Links ###
######################

SYMLINK_LIBRARY_SHARED_TWSORDER    := $(BINARY_FOLDER_LIB)/libTwsOrder.so
SYMLINK_LIBRARY_SHARED_TWSCLIENT   := $(BINARY_FOLDER_LIB)/libTwsClient.so
SYMLINK_LIBRARY_SHARED_TWSCONTRACT := $(BINARY_FOLDER_LIB)/libTwsContract.so

SYMLINK_LIBRARY_SHARED_SOVERSION_TWSORDER    := $(BINARY_FOLDER_LIB)/libTwsOrder.so.$(SOVERSION_TWSORDER)
SYMLINK_LIBRARY_SHARED_SOVERSION_TWSCLIENT   := $(BINARY_FOLDER_LIB)/libTwsClient.so.$(SOVERSION_TWSCLIENT)
SYMLINK_LIBRARY_SHARED_SOVERSION_TWSCONTRACT := $(BINARY_FOLDER_LIB)/libTwsClient.so.$(SOVERSION_TWSCONTRACT)

########################
### Executable Files ###
########################

BINARY_EXECUTABLE_MYPROGRAM := $(BINARY_FOLDER_BIN)/MyProgram

##########################################
### External Files of the Dependencies ###
##########################################

ifeq ($(LIBBID_SHARED_LINKAGE), true)
BINARY_LIBRARY_BID := libbid.so
else
BINARY_LIBRARY_BID := libbid.a
endif

ifeq ($(TWSAPI_SHARED_LINKAGE), true)
BINARY_LIBRARY_TWSSOCKETCLIENT := libTwsSocketClient.so
else
BINARY_LIBRARY_TWSSOCKETCLIENT := libTwsSocketClient.a
endif