# TwsClient Template

# Legal notice

No proprietary files belonging to IBKR are distributed.

No warranty of any kind is provided regarding its operation.

# Project Concepto

A basic template for using `C++` with `TwsScoketClient` without having to write everything manually or use the monolithic `TestCppClient.cpp` file 

# Compilation

## Options

This project use a option files for config projetc

## Build Systems

This project support `meson`, `cmake` and `GnuMake`

### Meson

For use meson use scripts of `bash`, `cmd` or `powershell`

### CMake

For use cmake use scripts of `bash`, `cmd` or `powershell`

### GnuMake

For use make use scripts of `bash`, `cmd` or `powershell`

## Scripts

The form is `./project.<extension> --<type of operation> --system=<system> --arch=<architecture> --buildsys=<build system> --buildtype=<debug or release> <flags for the build system to use>`

### Examples

`./project.sh --setup --system=linux --arch=x86_64 --buildsys=make --buildtype=debug`
`./project.sh --compile --system=linux --arch=x86_64 --buildsys=make --buildtype=debug -j4`
`./project.sh --install --system=linux --arch=x86_64 --buildsys=make --buildtype=debug`

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
- The build system `GnuMake` in development for windows, darwin and linux aarch64

# Project Settings

The project uses options files for configuration, but this isn’t actually compulsory.
What I recommend is modifying the build systems to suit your needs, rather than just sticking with the base template, which is only there so you don’t have to rewrite everything from scratch.

# License

The source code for this software is licensed under the MIT licence. This does not apply to proprietary tools or files belonging to IBKR.