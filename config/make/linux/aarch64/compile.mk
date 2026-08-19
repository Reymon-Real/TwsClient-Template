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

$(BINARY_LIBRARY_STATIC_TWSORDER): $(OBJECT_FILES_TWSORDER_CPP)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) $@ $^

$(BINARY_LIBRARY_STATIC_TWSCLIENT): $(OBJECT_FILES_TWSCLIENT_CPP)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) $@ $^

$(BINARY_LIBRARY_STATIC_TWSCONTRACT): $(OBJECT_FILES_TWSCONTRACT_CPP)
	@mkdir -p $(dir $@)
	$(AR) $(ARFLAGS) $@ $^

###############################
### Create Shared Libraries ###
###############################

# *******************
# *** libTwsOrder ***
# *******************

$(BINARY_LIBRARY_SHARED_TWSORDER): $(OBJECT_FILES_TWSORDER_CPP)
	@mkdir -p $(dir $@)
	$(CXXLD) $(CXXLDFLAGS) -Wl,-soname=$(notdir $@) -shared -o $@ $^ $(DEPENDENCIES_COMMON_CXX) $(CXX_RPATH_TWSORDER)

$(SYMLINK_LIBRARY_SHARED_SOVERSION_TWSORDER): $(BINARY_LIBRARY_SHARED_TWSORDER)
	@mkdir -p $(dir $@)
	ln -sf $(notdir $<) $@

$(SYMLINK_LIBRARY_SHARED_TWSORDER): $(SYMLINK_LIBRARY_SHARED_SOVERSION_TWSORDER)
	@mkdir -p $(dir $@)
	ln -sf $(notdir $<) $@

# ********************
# *** libTwsClient ***
# ********************

$(BINARY_LIBRARY_SHARED_TWSCLIENT): $(OBJECT_FILES_TWSCLIENT_CPP)
	@mkdir -p $(dir $@)
	$(CXXLD) $(CXXLDFLAGS) -Wl,-soname=$(notdir $@) -shared -o $@ $^ $(DEPENDENCIES_COMMON_CXX) $(CXX_RPATH_TWSCLIENT)

$(SYMLINK_LIBRARY_SHARED_SOVERSION_TWSCLIENT): $(BINARY_LIBRARY_SHARED_TWSCLIENT)
	@mkdir -p $(dir $@)
	ln -sf $(notdir $<) $@

$(SYMLINK_LIBRARY_SHARED_TWSCLIENT): $(SYMLINK_LIBRARY_SHARED_SOVERSION_TWSCLIENT)
	@mkdir -p $(dir $@)
	ln -sf $(notdir $<) $@

# ***********************
# *** libTwsContract ****
# ***********************

$(BINARY_LIBRARY_SHARED_TWSCONTRACT): $(OBJECT_FILES_TWSCONTRACT_CPP)
	@mkdir -p $(dir $@)
	$(CXXLD) $(CXXLDFLAGS) -Wl,-soname=$(notdir $@) -shared -o $@ $^ $(DEPENDENCIES_COMMON_CXX) $(CXX_RPATH_TWSCONTRACT)

$(SYMLINK_LIBRARY_SHARED_SOVERSION_TWSCONTRACT): $(BINARY_LIBRARY_SHARED_TWSCONTRACT)
	@mkdir -p $(dir $@)
	ln -sf $(notdir $<) $@

$(SYMLINK_LIBRARY_SHARED_TWSCONTRACT): $(SYMLINK_LIBRARY_SHARED_SOVERSION_TWSCONTRACT)
	@mkdir -p $(dir $@)
	ln -sf $(notdir $<) $@

#########################
### Create Executable ###
#########################

$(BINARY_EXECUTABLE_MYPROGRAM): $(OBJECT_FILE_MAIN) | $(SYMLINK_LIBRARY_SHARED_TWSORDER) $(SYMLINK_LIBRARY_SHARED_TWSCLIENT) $(SYMLINK_LIBRARY_SHARED_TWSCONTRACT)
	@mkdir -p $(dir $@)
	$(CXXLD) $(CXXLDFLAGS) -o $@ $^ $(DEPENDENCIES_MYPROGRAM) $(DEPENDENCIES_COMMON_CXX) $(CXX_MYPROGRAM_RPATH)