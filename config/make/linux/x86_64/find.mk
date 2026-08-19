###############################
### Autor: Reymon Dev       ###
### Datum: 12. August. 2026 ###
### Aktua: 12. August. 2026 ###
### Lizenz: MIT             ###
###############################

###########################
### Search Source Files ###
###########################

SOURCE_FILES_TWSORDER_CPP    := $(call find,$(SOURCE_FOLDER_TWSORDER),cpp)
SOURCE_FILES_TWSCLIENT_CPP   := $(call find,$(SOURCE_FOLDER_TWSCLIENT),cpp)
SOURCE_FILES_TWSCONTRACT_CPP := $(call find,$(SOURCE_FOLDER_TWSCONTRACT),cpp)

###########################
### Search Object Files ###
###########################

OBJECT_FILES_TWSORDER_CPP    := $(patsubst $(SOURCE_FOLDER_TWSORDER)/%.cpp, $(OBJECT_FOLDER_TWSORDER)/%.cpp.o, $(SOURCE_FILES_TWSORDER_CPP))
OBJECT_FILES_TWSCLIENT_CPP   := $(patsubst $(SOURCE_FOLDER_TWSCLIENT)/%.cpp, $(OBJECT_FOLDER_TWSCLIENT)/%.cpp.o, $(SOURCE_FILES_TWSCLIENT_CPP))
OBJECT_FILES_TWSCONTRACT_CPP := $(patsubst $(SOURCE_FOLDER_TWSCONTRACT)/%.cpp, $(OBJECT_FOLDER_TWSCONTRACT)/%.cpp.o, $(SOURCE_FILES_TWSCONTRACT_CPP))