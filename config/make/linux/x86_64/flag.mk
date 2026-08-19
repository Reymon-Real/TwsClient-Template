###############################
### Autor: Reymon Dev       ###
### Datum: 12. August. 2026 ###
### Aktua: 12. August. 2026 ###
### Lizenz: MIT             ###
###############################

#################
### Gnu Utils ###
#################

ARFLAGS := rcs

#####################
### Gnu Compilers ###
#####################

CFLAGS   := -Wall -Wextra -Wpedantic -Wno-switch -Wno-unused-parameter -Wno-unused-function -std=c99 -MD
CXXFLAGS := -Wall -Wextra -Wpedantic -Wno-switch -Wno-unused-parameter -Wno-unused-function -std=c++20 -MD

# ***********************
# *** Buildtype Flags ***
# ***********************

ifeq ($(BUILDTYPE), debug)

CFLAGS   += -g -Og
CXXFLAGS += -g -Og

else ifeq ($(BUILDTYPE), release)

CFLAGS   += -O3
CXXFLAGS += -O3

endif

###################
### Gnu Linkers ###
###################

CCLDFLAGS  := -Wl,--warn-once -Wl,-flto -Wl,-m elf_x86_64
CXXLDFLAGS := -Wl,--warn-once -Wl,-flto -Wl,-m elf_x86_64

# ***********************
# *** Buildtype Flags ***
# ***********************

ifeq ($(BUILDTYPE), release)

CCLDFLAGS  += -Wl,--strip-debug -Wl,--discard-all
CXXLDFLAGS += -Wl,--strip-debug -Wl,--discard-all

endif