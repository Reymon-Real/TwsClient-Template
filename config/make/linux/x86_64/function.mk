###############################
### Autor: Reymon Dev       ###
### Datum: 12. August. 2026 ###
### Aktua: 12. August. 2026 ###
### Lizenz: MIT             ###
###############################

#######################
### Search Function ###
#######################

define find
$(shell find "$(1)" -type f -name '*.$(2)')
endef