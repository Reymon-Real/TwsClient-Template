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

The form is `./project.<extension> --<type of operation> --<system> --<architecture> --<build system> <flags for the build system to use>`

### Examples

`./project.sh --setup --linux --x86_64 --make`
`./project.sh --compile --linux --x86_64 --make -j4`
`./project.sh --install --linux --x86_64 --make`

`./project.sh --setup --linux --x86_64 --cmake-make`
`./project.sh --compile --linux --x86_64 --cmake-make -j4`
`./project.sh --install --linux --x86_64 --cmake-make`

`./project.sh --setup --linux --x86_64 --cmake-ninja`
`./project.sh --compile --linux --x86_64 --cmake-ninja -j4`
`./project.sh --install --linux --x86_64 --cmake-ninja`

`./project.sh --setup --linux --x86_64 --meson --wipe`
`./project.sh --compile --linux --x86_64 --meson -j4`
`./project.sh --install --linux --x86_64 --meson`

Apply equal to `powershell` and `cmd`

## Considerations

- Scripts for `cmd` and `powershell` in development
- The build system `GnuMake` in development for windows, darwin and linux aarch64

# Project Settings

The project uses options files for configuration, but this isn’t actually compulsory.
What I recommend is modifying the build systems to suit your needs, rather than just sticking with the base template, which is only there so you don’t have to rewrite everything from scratch.

# License

The source code for this software is licensed under the MIT licence. This does not apply to proprietary tools or files belonging to IBKR.