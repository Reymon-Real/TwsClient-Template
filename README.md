# TwsClient Template

# Legal notice

No proprietary files belonging to IBKR are distributed.

No warranty of any kind is provided regarding its operation.

# Project Concepto

A basic template for using `C++` with `TwsScoketClient` without having to write everything manually or use the monolithic `TestCppClient.cpp` file 

# Compilation

## Binaries

This project assumes that the default path for `libTwsSocketClient.so` is `/usr/local/lib` or `/usr/lib` on Unix Systems

On windows assumes that default path for `libTwsSocketClient.dll` or `TwsSocketClient.dll` is `.\lib\IBKR`

## Headers

This project assumes that default path for `TwsSocketClient` Headers is `include/IBKR/TwsSocketClient` or `include\IBKR\TwsSocketClient` in windows

## Build Systems

This project support `meson`, `cmake` and `GnuMake`

### Meson

For use meson use scripts of `bash`, `cmd` or `powershell`

### CMake

For use cmake use scripts of `bash`, `cmd` or `powershell`

### GnuMake

For use make use scripts of `bash`, `cmd` or `powershell`

## Scripts

The form is `./project.sh --<type of operation> --<system> --<architecture> --<build system> <flags for the build system to use>`

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
- The build system `GnuMake` in development  

# License

The source code for this software is licensed under the MIT licence. This does not apply to proprietary tools or files belonging to IBKR.