# TwsClient Template

# Legal notice

No proprietary files belonging to IBKR are distributed.

No warranty of any kind is provided regarding its operation.

# Project Concepto

A basic template for using `C++` with `TwsScoketClient` without having to write everything manually or use the monolithic `TestCppClient.cpp` file 

# Compilation

## TwsApi Compatible Version

- 10.45.01

## Options

This project use a option files for config projetc

## Build Systems

This project support `meson`, `cmake` and `GnuMake`

### Meson

For use meson use scripts of `bash`, `cmd` or `powershell`

### CMake

For use cmake use scripts of `bash`, `cmd` or `powershell`

### GnuMake

For use make use `Options.mk`

#### Project Options

- ARCH: This option tells `make` which architecture the library is to be compiled for. If you are cross-compiling to a system other than `SYSTEM`, you must specify `<system name>_<architecture>`

- SYSTEM: This option tells `make` on which operating system the library is to be compiled

- BUILDTYPE: This option tells `make` whether to compile for debugging or for release

#### Make Options

The following options affect the entire project and use the prefix `MAKE_` for the sake of familiarity with CMake and Meson

- MAKE_BUILD_PREFIX: This option specifies the directory where `make` will compile the project and which it uses as a prefix for everything related to the build directory

- MAKE_BUILD_BINDIR and MAKE_BUILD_LIBDIR: These options tell `make` where to generate the binary files, such as executables or libraries

- MAKE_INSTALL_PREFIX: This option tells `make` the directory where `make` will install the programmes and libraries

- MAKE_INSTALL_BINDIR And MAKE_INSTALL_LIBDIR: These options are similar to MAKE_BUILD_BINDIR and MAKE_BUILD_LIBDIR, except that they apply to the installation directories

#### Compilation options

- LINKER_SEARCH_DIRECTORIES: This option tells the linker where to look for libraries at link time
- BINARY_EXECUTABLE_RPATH_MYPROGRAM: This option tells `make` the `rpath` to use when linking the dynamic library on Linux and Darwin; on Windows, it has no effect.

These options tell `make` the relative path to the linker for linking the dynamic libraries. 

- BINARY_LIBRARY_SHARED_RPATH_TWSORDER
- BINARY_LIBRARY_SHARED_RPATH_TWSCLIENT
- BINARY_LIBRARY_SHARED_RPATH_TWSCONTRACT

The following set of options tells `make` which dependencies to link statically or dynamically. If they are not defined, or are defined with a value other than `true`, static library linking will be used by default.

- TWSORDER_SHARED_LINAKGE
- TWSCLIENT_SHARED_LINAKGE
- TWSCONTRACT_SHARED_LINAKGE

- LIBBID_SHARED_LINKAGE
- TWSAPI_SHARED_LINKAGE

## Scripts

The form is `./project.<extension> --<type of operation> --system=<system> --arch=<architecture> --buildsys=<build system> --buildtype=<debug or release> <flags for the build system to use>`

### Examples

`./project.sh --setup --system=linux --arch=x86_64 --buildsys=meson --buildtype=debug --wipe`
`./project.sh --compile --system=linux --arch=x86_64 --buildsys=meson --buildtype=debug -j4`
`./project.sh --install --system=linux --arch=x86_64 --buildsys=meson --buildtype=debug`

`./project.sh --setup --system=linux --arch=x86_64 --buildsys=cmake-make --buildtype=debug`
`./project.sh --compile --system=linux --arch=x86_64 --buildsys=cmake-make --buildtype=debug -j4`
`./project.sh --install --system=linux --arch=x86_64 --buildsys=cmake-make --buildtype=debug`

`./project.sh --setup --system=linux --arch=x86_64 --buildsys=cmake-ninja --buildtype=debug`
`./project.sh --compile --system=linux --arch=x86_64 --buildsys=cmake-ninja --buildtype=debug -j4`
`./project.sh --install --system=linux --arch=x86_64 --buildsys=cmake-ninja --buildtype=debug`

Apply equal to `powershell` and `cmd`

## Considerations

- Scripts for `cmd` and `powershell` in development
- The build system `GnuMake` in development for windows, darwin and cross compiling

# Project Settings

The project uses options files for configuration, but this isn’t actually compulsory.
What I recommend is modifying the build systems to suit your needs, rather than just sticking with the base template, which is only there so you don’t have to rewrite everything from scratch.

# License

The source code for this software is licensed under the MIT licence. This does not apply to proprietary tools or files belonging to IBKR.