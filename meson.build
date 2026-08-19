#############################
### Autor: Reymon Dev     ###
### Datum: 26. Juli. 2026 ###
### Aktua: 26. Juli. 2026 ###
### Lizenz: MIT           ###
#############################

project(
	'TwsClient',
	[ 'c', 'cpp' ],

	version: '1.1.5',
	meson_version: '>=1.11.0',

	default_options: [
		'c_std=c99',
		'cpp_std=c++20'
	]
)

#############################
### Environment Variables ###
#############################

system = host_machine.system()

twsclient_version   = meson.project_version()
twsclient_soversion = '1.1'

twsorder_version   = '0.1.0'
twsorder_soversion = '0.1'

twscontract_version   = '0.1.0'
twscontract_soversion = '0.1.0'

meson_source_root_dir = meson.current_source_dir()

#####################
### Meson Options ###
#####################

meson_output_bin = get_option('meson_output_bin')
meson_output_lib = get_option('meson_output_lib')

meson_install_bindir = get_option('meson_install_bindir')
meson_install_libdir = get_option('meson_install_libdir')

#######################
### Project Options ###
#######################

project_global_include_dir = get_option('project_global_include_dir')

###############################
### Project Targets Options ###
###############################

exec_build_rpath   = get_option('exec_build_rpath')
exec_install_rpath = get_option('exec_install_rpath')

twsclient_build_rpath   = get_option('twsclient_build_rpath')
twsclient_install_rpath = get_option('twsclient_install_rpath')

twsorder_build_rpath   = get_option('twsorder_build_rpath')
twsorder_install_rpath = get_option('twsorder_install_rpath')

twscontract_build_rpath   = get_option('twscontract_build_rpath')
twscontract_install_rpath = get_option('twscontract_install_rpath')

############################
### Dependencies Options ###
############################

ibkr_dir_linkage_root = get_option('ibkr_dir_linkage_root')

ibkr_dir_include_twssocketclient          = get_option('ibkr_dir_include_twssocketclient')
ibkr_dir_include_twssocketclient_protobuf = get_option('ibkr_dir_include_twssocketclient_protobuf')

#########################
### Project Variables ###
#########################

dependencies = []

#########################
### Project Arguments ###
#########################

add_project_arguments(
	'-Wno-switch',
	'-Wno-unused-parameter',
	'-Wno-unused-function',

	language: [ 'c', 'cpp' ]
)

if system == 'windows'

add_project_arguments(
	'-DUSE_WIN_DLL=1',

	language: [ 'c', 'cpp' ]
)

endif

##############################
### Project Link Arguments ###
##############################

if system != 'windows'

add_project_link_arguments(
	'-lm',
	'-pthread',

	language: [ 'c', 'cpp' ]
)

endif

############################
### Project Dependencies ###
############################

libTwsSocketClient_static = declare_dependency(

	link_args: [
		'-L' + meson_source_root_dir + '/' + ibkr_dir_linkage_root,
		'-l:libTwsSocketClient.a',
		'-l:libbid.a',
		'-l:libprotobuf.so.23'
	],

	include_directories: include_directories(
		ibkr_dir_include_twssocketclient,
		ibkr_dir_include_twssocketclient_protobuf
	)

)

libTwsSocketClient_shared = declare_dependency(

	link_args: [
		'-L' + meson_source_root_dir + '/' + ibkr_dir_linkage_root,
		'-lTwsSocketClient',
		'-l:libbid.a',
		'-l:libprotobuf.so.23'
	],

	include_directories: include_directories(
		ibkr_dir_include_twssocketclient,
		ibkr_dir_include_twssocketclient_protobuf
	)

)

dependencies += [ libTwsSocketClient_static ]

###################
### Directories ###
###################

inc = include_directories(
	project_global_include_dir
)

####################
### Source Files ###
####################

source_files_root = files(
	meson_source_root_dir + '/main.cpp'
)

######################
### Subdirectories ###
######################

subdir('TwsOrder')
subdir('TwsContract')
subdir('TwsClient')

####################
### Dependencies ###
####################

dependencies += [ libTwsClient_static_dep, libTwsOrder_static_dep, libTwsContract_static_dep ]

###################
### Executables ###
###################

exec = executable(
	'MyProgram',

	source_files_root,

	dependencies: [ dependencies ],

	include_directories: inc,

	build_rpath: exec_build_rpath,
	build_subdir: meson_output_bin,

	install: true,
	install_dir: meson_install_bindir,
	install_rpath: exec_install_rpath
)

###################
### Run Targets ###
###################

run_target('run', command: [ exec ])