###############################
### Autor: Reymon Dev       ###
### Datum: 12. August. 2026 ###
### Aktua: 12. August. 2026 ###
### Lizenz: MIT             ###
###############################

######################
### Compiler Flags ###
######################

export C_INCLUDE_PATH     := include
export CPLUS_INCLUDE_PATH := $(C_INCLUDE_PATH):include/IBKR:include/IBKR/TwsSocketClient/protobufUnix

####################
### Dependencies ###
####################

C_DEPENDENCIES   := -Wl,--start-group -lm -pthread -Wl,--end-group
CXX_DEPENDENCIES := -Wl,--start-group -lTwsSocketClient -Wl,--end-group

######################
### Relative Paths ###
######################

CXX_MYPROGRAM_RPATH := -Wl,-rpath='$$ORIGIN:$$ORIGIN/..:$$ORIGIN/../lib'