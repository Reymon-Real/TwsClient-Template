###############################
### Autor: Reymon Dev       ###
### Datum: 09. August. 2026 ###
### Aktua: 09. August. 2026 ###
### Lizenz: MIT             ###
###############################

######################
### Shell Settings ###
######################

include ./config/make/$(SYSTEM)/$(ARCH)/shell.mk

############################
### Environment Settings ###
############################

include ./config/make/$(SYSTEM)/$(ARCH)/environment.mk

########################
### Project Settings ###
########################

include ./config/make/$(SYSTEM)/$(ARCH)/project.mk

#################
### Functions ###
#################

include ./config/make/$(SYSTEM)/$(ARCH)/function.mk

###################
### Directories ###
###################

include ./config/make/$(SYSTEM)/$(ARCH)/folder.mk

#############
### Files ###
#############

include ./config/make/$(SYSTEM)/$(ARCH)/file.mk
include ./config/make/$(SYSTEM)/$(ARCH)/find.mk

#####################
### Tool Settings ###
#####################

include ./config/make/$(SYSTEM)/$(ARCH)/tool.mk
include ./config/make/$(SYSTEM)/$(ARCH)/flag.mk

#############
### Rules ###
#############

include ./config/make/$(SYSTEM)/$(ARCH)/phony.mk
include ./config/make/$(SYSTEM)/$(ARCH)/rule.mk
include ./config/make/$(SYSTEM)/$(ARCH)/compile.mk
include ./config/make/$(SYSTEM)/$(ARCH)/pattern.mk