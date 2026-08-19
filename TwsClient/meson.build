###############################
### Autor: Reymon Dev       ###
### Datum: 03/04/2026       ###
### Aktua: 14. August. 2026 ###
### Lizenz: AGPL-3-or-later ###
###############################

#################
### Variables ###
#################

source_files_twsclient = []

######################
### Subdirectories ###
######################

subdir('account')
subdir('advisor')
subdir('analysis')
subdir('bond')
subdir('client')
subdir('codes')
subdir('connection')
subdir('contract')
subdir('error')
subdir('historical')
subdir('id')
subdir('market')
subdir('miscellaneous')
subdir('news')
subdir('options')
subdir('orders')
subdir('other')
subdir('pnl')
subdir('portfolio')
subdir('price')
subdir('protobuf')
subdir('scanner')
subdir('system')
subdir('test')
subdir('ticker')
subdir('time')

# *****************
# *** Libraries ***
# *****************

libTwsClient_static = static_library(
	'TwsClient',

	source_files_twsclient,

	dependencies: dependencies,
	include_directories: inc,

	pic: true,
	build_subdir: meson_output_lib,

	install: true,
	install_dir: meson_install_libdir
)

libTwsClient_shared = shared_library(
	'TwsClient',

	source_files_twsclient,

	dependencies: dependencies,
	include_directories: inc,

	version:   twsclient_version,
	soversion: twsclient_soversion,
	
	build_rpath: twsclient_build_rpath,
	build_subdir: meson_output_lib,

	install: true,
	install_dir: meson_install_libdir,
	install_rpath: twsclient_install_rpath,
)

##################################
### Export Static Dependencies ###
##################################

libTwsClient_static_dep = declare_dependency(
	version: twsclient_version,
	link_with: libTwsClient_static
)

libTwsClient_shared_dep = declare_dependency(
	version: twsclient_version,
	link_with: libTwsClient_shared
)