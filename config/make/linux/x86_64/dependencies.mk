###############################
### Autor: Reymon Dev       ###
### Datum: 18. August. 2026 ###
### Aktua: 18. August. 2026 ###
### Lizenz: MIT             ###
###############################

####################
### Dependencies ###
####################

DEPENDENCIES_COMMON_C   := -Wl,--start-group -lm -pthread -Wl,--end-group

DEPENDENCIES_COMMON_CXX := -Wl,--start-group
DEPENDENCIES_COMMON_CXX += $(addprefix -l:,$(BINARY_LIBRARY_BID) $(BINARY_LIBRARY_TWSSOCKETCLIENT))
DEPENDENCIES_COMMON_CXX += -Wl,--end-group

# *********************************
# **** My Program Dependencies ****
# *********************************

DEPENDENCIES_MYPROGRAM := $(addprefix -L,$(LINKER_SEARCH_DIRECTORIES))

ifeq ($(TWSORDER_SHARED_LINKAGE), true)
DEPENDENCIES_MYPROGRAM += -l:$(SYMLINK_LIBRARY_SHARED_TWSORDER)
else
DEPENDENCIES_MYPROGRAM += -l:$(BINARY_LIBRARY_STATIC_TWSORDER)
endif

ifeq ($(TWSCLIENT_SHARED_LINKAGE), true)
DEPENDENCIES_MYPROGRAM += -l:$(SYMLINK_LIBRARY_SHARED_TWSCLIENT)
else
DEPENDENCIES_MYPROGRAM += -l:$(BINARY_LIBRARY_STATIC_TWSCLIENT)
endif

ifeq ($(TWSCONTRACT_SHARED_LINKAGE), true)
DEPENDENCIES_MYPROGRAM += -l:$(SYMLINK_LIBRARY_SHARED_TWSCONTRACT)
else
DEPENDENCIES_MYPROGRAM += -l:$(BINARY_LIBRARY_STATIC_TWSCONTRACT)
endif

######################
### Relative Paths ###
######################

CXX_RPATH_MYPROGRAM   := -Wl,-rpath=$(BINARY_EXECUTABLE_RPATH_MYPROGRAM)
CXX_RPATH_TWSORDER    := -Wl,-rpath=$(BINARY_LIBRARY_SHARED_RPATH_TWSORDER)
CXX_RPATH_TWSCLIENT   := -Wl,-rpath=$(BINARY_LIBRARY_SHARED_RPATH_TWSCLIENT)
CXX_RPATH_TWSCONTRACT := -Wl,-rpath=$(BINARY_LIBRARY_SHARED_RPATH_TWSCONTRACT)