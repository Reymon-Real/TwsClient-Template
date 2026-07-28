# *****************************
# *** Autor: Reymon Dev     ***
# *** Datum: 26. Juli. 2026 ***
# *** Aktua: 27. Juli. 2026 ***
# *** Lizenz: MIT           ***
# *****************************

# **********************
# *** Subdirectories ***
# **********************

subdir('other')
subdir('market')
subdir('historical')
subdir('codes')
subdir('analysis')
subdir('pnl')
subdir('time')
subdir('news')
subdir('price')
subdir('scanner')
subdir('id')
subdir('options')
subdir('account')
subdir('client')
subdir('advisor')
subdir('connection')
subdir('portfolio')
subdir('ticker')
subdir('contract')
subdir('test')
subdir('orders')
subdir('system')
subdir('bond')
subdir('error')
subdir('miscellaneous')

if system == 'linux' or system == 'darwin'

subdir('protobuf')

elif system == 'windows'

SOURCE_FILES_TWSCLIENT_PROTOBUF = []

endif

# ********************
# *** Source Files ***
# ********************

SOURCE_FILES_TWSCLIENT = [
	SOURCE_FILES_TWSCLIENT_ACCOUNT,
	SOURCE_FILES_TWSCLIENT_ADVISOR,
	SOURCE_FILES_TWSCLIENT_ANALYSIS,
	SOURCE_FILES_TWSCLIENT_BOND,
	SOURCE_FILES_TWSCLIENT_CLIENT,

	SOURCE_FILES_TWSCLIENT_CODES,
	SOURCE_FILES_TWSCLIENT_CONNECTION,
	SOURCE_FILES_TWSCLIENT_CONTRACT,
	SOURCE_FILES_TWSCLIENT_ERROR,
	SOURCE_FILES_TWSCLIENT_HISTORICAL,
	
	SOURCE_FILES_TWSCLIENT_ID,
	SOURCE_FILES_TWSCLIENT_MARKET,
	SOURCE_FILES_TWSCLIENT_MISCELLANEOUS,
	SOURCE_FILES_TWSCLIENT_NEWS,
	SOURCE_FILES_TWSCLIENT_OPTIONS,

	SOURCE_FILES_TWSCLIENT_ORDERS,
	SOURCE_FILES_TWSCLIENT_OTHER,
	SOURCE_FILES_TWSCLIENT_PNL,
	SOURCE_FILES_TWSCLIENT_PORTFOLIO,
	SOURCE_FILES_TWSCLIENT_PRICE,
	SOURCE_FILES_TWSCLIENT_PROTOBUF,

	SOURCE_FILES_TWSCLIENT_SCANNER,
	SOURCE_FILES_TWSCLIENT_SYSTEM,
	SOURCE_FILES_TWSCLIENT_TEST,
	SOURCE_FILES_TWSCLIENT_TICKER,
	SOURCE_FILES_TWSCLIENT_TIME
]

# *****************
# *** Libraries ***
# *****************

libTwsClient_static = static_library(
	'TwsClient',

	SOURCE_FILES_TWSCLIENT,

	include_directories: inc,

	pic: true,
	build_subdir: 'lib',
	build_by_default: true,

	install: true
)

libTwsClient_shared = shared_library(
	'sxmm_client',

	SOURCE_FILES_TWSCLIENT,

	include_directories: inc,

	version: '0.1.0',
	soversion: '0.1',

	build_subdir: 'lib',
	build_by_default: true,

	install: true
)