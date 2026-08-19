# The Make Option File (Options.mk)

This file define the fundamental variables for compiling the project with make

---
## ARCH

`ARCH` is for select the architecture. For more infor, see [Cross Compiling](cross_compiling.md) and [Native Compiling](native_compiling.md)

---

---
## SYSTEM

`SYSTEM` is only the host machine or native system

---

---
## BUILDTYPE

`BUILDTYPE` select if the project compile for debugin or release

---

---

## MAKE_BUILD_PREFIX

This is a build directory and `MAKE_BUILD_BINDIR` with `MAKE_BUILD_LIBDIR` is the output folder for executables and libraries

---

---
## MAKE_INSTALL_PREFIX

Is same `MAKE_BUILD_PREFIX` but for install the software in the system

---

---
## LINKER_SEARCH_DIRECTORIES

This option tells the linker where to look for libraries at link time

---

---
## BINARY_EXECUTABLE_RPATH_MYPROGRAM

This option tells `make` the `rpath` to use when linking the dynamic library on Linux and Darwin; on Windows, it has no effect.

---

These options tell `make` the relative path to the linker for linking the dynamic libraries. 

## BINARY_LIBRARY_SHARED_RPATH_TWSORDER
## BINARY_LIBRARY_SHARED_RPATH_TWSCLIENT
## BINARY_LIBRARY_SHARED_RPATH_TWSCONTRACT

---

The following set of options tells `make` which dependencies to link statically or dynamically. If they are not defined, or are defined with a value other than `true`, static library linking will be used by default.

## TWSORDER_SHARED_LINAKGE
## TWSCLIENT_SHARED_LINAKGE
## TWSCONTRACT_SHARED_LINAKGE

## LIBBID_SHARED_LINKAGE
## TWSAPI_SHARED_LINKAGE