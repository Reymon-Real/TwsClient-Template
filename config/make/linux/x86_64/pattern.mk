###############################
### Autor: Reymon Dev       ###
### Datum: 12. August. 2026 ###
### Aktua: 12. August. 2026 ###
### Lizenz: MIT             ###
###############################

#########################
### TwsOrder Patterns ###
#########################

$(OBJECT_FOLDER_TWSORDER)/%.cpp.o: $(SOURCE_FOLDER_TWSORDER)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -fPIC -c $< -o $@

##########################
### TwsClient Patterns ###
##########################

$(OBJECT_FOLDER_TWSCLIENT)/%.cpp.o: $(SOURCE_FOLDER_TWSCLIENT)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -fPIC -c $< -o $@

############################
### TwsContract Patterns ###
############################

$(OBJECT_FOLDER_TWSCONTRACT)/%.cpp.o: $(SOURCE_FOLDER_TWSCONTRACT)/%.cpp
	@mkdir -p $(dir $@)
	$(CXX) $(CXXFLAGS) -fPIC -c $< -o $@

###########################
### Include Directories ###
###########################

-include $(wildcard $(BUILDDIR)/*.d)
-include $(wildcard $(BUILDDIR)/**/*.d)
-include $(wildcard $(BUILDDIR)/**/**/*.d)
-include $(wildcard $(BUILDDIR)/**/**/**/*.d)
-include $(wildcard $(BUILDDIR)/**/**/**/**/*.d)