# *****************************
# *** Autor: Reymon Dev     ***
# *** Datum: 26. Juli. 2026 ***
# *** Aktua: 26. Juli. 2026 ***
# *** Lizenz: MIT           ***
# *****************************

project(
	'TwsClient',
	[ 'c', 'cpp' ],

	version: '1.0.0',
	meson_version: '>=1.11.0',

	default_options: [
		'c_std=c99',
		'cpp_std=c++20'
	]
)

# *****************************
# *** Environment Variables ***
# *****************************

system = host_machine.system()

# *************************
# *** Project Arguments ***
# *************************

if system == 'windows'

add_project_arguments(
	'-DUSE_WIN_DLL=1',

	language: [ 'c', 'cpp' ]
)

endif

add_project_arguments(
	'-Wno-switch',
	'-Wno-unused-parameter',
	'-Wno-unused-function',

	language: [ 'c', 'cpp' ]
)

add_project_link_arguments(
	'-llib/IBKR',
	'-lTwsSocketClient',

	language: [ 'c', 'cpp' ]
)

# *******************
# *** Directories ***
# *******************

if system == 'linux' or system == 'darwin'

inc = include_directories(
	'include',
	'include/IBKR/TwsSocketClient/protobufUnix'
)

elif system == 'windows'

inc = include_directories(
	'include'
)

endif

# **********************
# *** Subdirectories ***
# **********************

subdir('TwsClient')

# *******************
# *** Executables ***
# *******************

exec = executable(
	'MyProgram',

	'main.cpp',
	SOURCE_FILES_TWSCLIENT,

	include_directories: inc,

	build_subdir: 'bin',
	build_by_default: true,

	install: true
)

# *******************
# *** Run Targets ***
# *******************

run_target('run', command: [ exec ])