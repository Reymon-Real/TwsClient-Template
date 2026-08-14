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

LIBRARY_STATIC_TWSORDER  := $(BINARY_FOLDER_LIB)/libTwsOrder.a
LIBRARY_STATIC_TWSCLIENT := $(BINARY_FOLDER_LIB)/libTwsClient.a

########################
### Shared Libraries ###
########################

LIBRARY_SHARED_VERSION_TWSORDER   := $(BINARY_FOLDER_LIB)/libTwsOrder.so.$(TWSORDER_VERSION)
LIBRARY_SHARED_SOVERSION_TWSORDER := $(BINARY_FOLDER_LIB)/libTwsOrder.so.$(TWSORDER_SOVERSION)
LIBRARY_SHARED_SYMLINK_TWSORDER   := $(BINARY_FOLDER_LIB)/libTwsOrder.so

LIBRARY_SHARED_VERSION_TWSCLIENT   := $(BINARY_FOLDER_LIB)/libTwsClient.so.$(TWSCLIENT_VERSION)
LIBRARY_SHARED_SOVERSION_TWSCLIENT := $(BINARY_FOLDER_LIB)/libTwsClient.so.$(TWSCLIENT_SOVERSION)
LIBRARY_SHARED_SYMLINK_TWSCLIENT   := $(BINARY_FOLDER_LIB)/libTwsClient.so

########################
### Executable Files ###
########################

BINARY_EXECUTABLE_MYPROGRAM := $(BINARY_FOLDER_BIN)/MyProgram