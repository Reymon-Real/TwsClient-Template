# *****************************
# *** Autor: Reymon Dev     ***
# *** Datum: 27. Juli. 2026 ***
# *** Aktua: 27. Juli. 2026 ***
# *** Lizenz: MIT           ***
# *****************************

# *******************
# *** Environment ***
# *******************

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

# *************
# *** Tools ***
# *************

set(CMAKE_C_COMPILER   x86_64-linux-gnu-gcc)
set(CMAKE_CXX_COMPILER x86_64-linux-gnu-g++)

# *************************
# *** Sysroot Plataform ***
# *************************

set(CMAKE_SYSROOT /)

# ********************
# *** Search Paths ***
# ********************

set(CMAKE_FIND_ROOT_PATH /usr)
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)