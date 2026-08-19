###############################
### Autor: Reymon Dev       ###
### Datum: 08. August. 2026 ###
### Aktua: 08. August. 2026 ###
### Lizenz: MIT             ###
###############################

#################
### Variables ###
#################

source_files_twsorder = []

####################
### Source Files ###
####################

source_files_twsorder_root = files(
	'Limit.cpp'
)

#####################################
### Control Source Files Addition ###
#####################################

source_files_twsorder += source_files_twsorder_root

#################
### Libraries ###
#################

libTwsOrder_static = static_library(
	'TwsOrder',

	source_files_twsorder,

	dependencies: dependencies,
	include_directories: inc,

	pic: true,
	build_subdir: meson_output_lib,

	install: true,
	install_dir: meson_install_libdir
)

libTwsOrder_shared = shared_library(
	'TwsOrder',

	source_files_twsorder,

	dependencies: dependencies,
	include_directories: inc,

	version:   twsorder_version,
	soversion: twsorder_soversion,
	
	build_rpath:   twsorder_build_rpath,
	install_rpath: twsorder_install_rpath,

	build_subdir: meson_output_lib,

	install: true,
	install_dir: meson_install_libdir
)

####################
### Dependencies ###
####################

libTwsOrder_static_dep = declare_dependency(
	version: twsorder_version,
	link_with: libTwsOrder_static
)

libTwsOrder_shared_dep = declare_dependency(
	version: twsorder_version,
	link_with: libTwsOrder_shared
)

dependencies += libTwsOrder_static_dep