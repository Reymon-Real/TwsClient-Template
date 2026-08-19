###############################
### Autor: Reymon Dev       ###
### Datum: 12. August. 2026 ###
### Aktua: 12. August. 2026 ###
### Lizenz: MIT             ###
###############################

#################
### Gnu Utils ###
#################

ifeq ($(AR), ar)
AR := x86_64-linux-gnu-ar
endif

ifndef GDB
GDB := x86_64-linux-gnu-gdb
endif

#####################
### Gnu Compilers ###
#####################

ifeq ($(CC), cc)
CC  := x86_64-linux-gnu-gcc
endif

ifeq ($(CXX), g++)
CXX := x86_64-linux-gnu-g++
endif

###################
### Gnu Linkers ###
###################

ifndef CCLD
CCLD  := x86_64-linux-gnu-gcc
endif

ifndef CXXLD
CXXLD := x86_64-linux-gnu-g++
endif