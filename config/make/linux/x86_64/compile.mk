###############################
### Autor: Reymon Dev       ###
### Datum: 12. August. 2026 ###
### Aktua: 12. August. 2026 ###
### Lizenz: MIT             ###
###############################

################################
### Create Object Main Files ###
################################

$(OBJECT_FILE_MAIN): $(SOURCE_FILE_MAIN)
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -c $< -o $@

###############################
### Create Static Libraries ###
###############################

$(LIBRARY_STATIC_TWSORDER): $(OBJECT_FILES_TWSORDER_CPP)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) $@ $^

$(LIBRARY_STATIC_TWSCLIENT): $(OBJECT_FILES_TWSCLIENT_CPP)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) $@ $^

###############################
### Create Shared Libraries ###
###############################

# *******************
# *** libTwsOrder ***
# *******************

$(LIBRARY_SHARED_VERSION_TWSORDER): $(OBJECT_FILES_TWSORDER_CPP)
	@mkdir -p $(dir $@)
	$(CXXLD) $(CXXLDFLAGS) -Wl,-soname=$(notdir $@) -shared -o $@ $^ $(CXX_DEPENDENCIES)

$(LIBRARY_SHARED_SOVERSION_TWSORDER): $(LIBRARY_SHARED_VERSION_TWSORDER)
	@mkdir -p $(dir $@)
	ln -sf $(notdir $<) $@

$(LIBRARY_SHARED_SYMLINK_TWSORDER): $(LIBRARY_SHARED_SOVERSION_TWSORDER)
	@mkdir -p $(dir $@)
	ln -sf $(notdir $<) $@

# ********************
# *** libTwsClient ***
# ********************

$(LIBRARY_SHARED_VERSION_TWSCLIENT): $(OBJECT_FILES_TWSCLIENT_CPP)
	@mkdir -p $(dir $@)
	$(CXXLD) $(CXXLDFLAGS) -Wl,-soname=$(notdir $@) -shared -o $@ $^ $(CXX_DEPENDENCIES)

$(LIBRARY_SHARED_SOVERSION_TWSCLIENT): $(LIBRARY_SHARED_VERSION_TWSCLIENT)
	@mkdir -p $(dir $@)
	ln -sf $(notdir $<) $@

$(LIBRARY_SHARED_SYMLINK_TWSCLIENT): $(LIBRARY_SHARED_SOVERSION_TWSCLIENT)
	@mkdir -p $(dir $@)
	ln -sf $(notdir $<) $@

#########################
### Create Executable ###
#########################

$(BINARY_EXECUTABLE_MYPROGRAM): $(OBJECT_FILE_MAIN) | $(LIBRARY_SHARED_SYMLINK_TWSORDER) $(LIBRARY_SHARED_SYMLINK_TWSCLIENT)
	@mkdir -p $(dir $@)
	$(CXXLD) $(CXXLDFLAGS) -o $@ $^ -L$(BINARY_FOLDER_LIB) -l:$(notdir $(LIBRARY_SHARED_VERSION_TWSCLIENT)) -l:$(notdir $(LIBRARY_SHARED_VERSION_TWSORDER)) $(CXX_DEPENDENCIES) $(CXX_MYPROGRAM_RPATH)