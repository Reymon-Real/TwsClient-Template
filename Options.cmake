# *******************************
# *** Autor: Reymon Dev       ***
# *** Datum: 26. Juli. 2026   ***
# *** Aktua: 09. August. 2026 ***
# *** Lizenz: MIT             ***
# *******************************

###############################
### Autor: Reymon Dev       ###
### Datum: 09. Juli. 2026   ###
### Aktua: 09. August. 2026 ###
### Lizenz: MIT             ###
###############################

#####################
### Meson Options ###
#####################

set(CMAKE_OUTPUT_BIN "${CMAKE_BINARY_DIR}/bin")

set(CMAKE_OUTPUT_LIB "${CMAKE_BINARY_DIR}/lib")

set(CMAKE_INSTALL_BINDIR "/usr/bin")

set(CMAKE_INSTALL_LIBDIR "/usr/lib")

##############################
### Project Global Options ###
##############################

set(PROJECT_GLOBAL_INCLUDE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/include")

##############################
### Project Target Options ###
##############################

set(PROJECT_EXEC_BUILD_RPATH "$ORIGIN:$ORIGIN/lib:$ORIGIN/../lib")

set(PROJECT_EXEC_INSTALL_RPATH "$ORIGIN:$ORIGIN/lib:$ORIGIN/../lib")

####################
### IBKR Options ###
####################

set(IBKR_DIR_LINKAGE_ROOT
	"/usr/local/lib"
)

set(IBKR_DIR_INCLUDE_TWSSOCKETCLIENT
	"${CMAKE_CURRENT_SOURCE_DIR}/include"
	"${CMAKE_CURRENT_SOURCE_DIR}/include/IBKR/TwsSocketClient"
)

set(IBKR_DIR_INCLUDE_TWSSOCKETCLIENT_PROTOBUF
	"${CMAKE_CURRENT_SOURCE_DIR}/include/IBKR/TwsSocketClient/protobufUnix"
)