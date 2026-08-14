###############################
### Autor: Reymon Dev       ###
### Datum: 08. August. 2026 ###
### Aktua: 08. August. 2026 ###
### Lizenz: AGPL-3-or-later ###
###############################

#################
### Variables ###
#################

source_files_twsorder = []

####################
### Source Files ###
####################

source_files_twsorder_root = files(
	'LimitOrder.cpp'
)

#####################################
### Control Addition Source Files ###
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
	
	build_rpath: twsorder_build_rpath,
	build_subdir: meson_output_lib,

	install: true,
	install_dir: meson_install_libdir,
	install_rpath: twsorder_install_rpath,
)

####################
### Dependencies ###
####################

libTwsOrder_static_dep = declare_dependency(
	link_args: [
		'-L' + meson.current_build_dir() + '/' + meson_output_lib,
		'-l:libTwsOrder.a'
	]
)

libTwsOrder_shared_dep = declare_dependency(
	link_args: [
		'-L' + meson.current_build_dir() + '/' + meson_output_lib,
		'-llibTwsOrder'
	]
)