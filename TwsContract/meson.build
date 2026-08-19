###############################
### Autor: Reymon Dev       ###
### Datum: 08. August. 2026 ###
### Aktua: 08. August. 2026 ###
### Lizenz: MIT             ###
###############################

#################
### Variables ###
#################

source_files_twscontract = []

####################
### Source Files ###
####################

source_files_twscontract_root = files(
	'Create.cpp'
)

#####################################
### Control Source Files Addition ###
#####################################

source_files_twscontract += source_files_twscontract_root

#################
### Libraries ###
#################

libTwsContract_static = static_library(
	'TwsContract',

	source_files_twscontract,

	dependencies: dependencies,
	include_directories: inc,

	pic: true,
	build_subdir: meson_output_lib,

	install: true,
	install_dir: meson_install_libdir
)

libTwsContract_shared = shared_library(
	'TwsContract',

	source_files_twscontract,

	dependencies: dependencies,
	include_directories: inc,

	version:   twscontract_version,
	soversion: twscontract_soversion,
	
	build_rpath:   twscontract_build_rpath,
	install_rpath: twscontract_install_rpath,

	build_subdir: meson_output_lib,

	install: true,
	install_dir: meson_install_libdir
)

####################
### Dependencies ###
####################

libTwsContract_static_dep = declare_dependency(
	version: twscontract_version,
	link_with: libTwsContract_static
)

libTwsContract_shared_dep = declare_dependency(
	version: twscontract_version,
	link_with: libTwsContract_shared
)

dependencies += libTwsContract_static_dep