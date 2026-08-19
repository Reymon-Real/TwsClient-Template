# Cross Compiling

## Meson and CMake

For meson and cmake use the script. That script manage cross compiling.

Example

`./project.<ext> --setup --cross --system=linux --arch=aarch64 --buildsys=meson --buildtype=debug`

## Make

For cross compiling with make, use the options.

The option `ARCH` is for select the architecture.

The cross compiling on make is a architecture.

### Example 1

```
ARCH      := windows_x86_64
SYSTEM    := linux # Native system
BUILDTYPE := debug
```

### Example 2

```
ARCH      := linux_x86_64
SYSTEM    := darwin # Native system
BUILDTYPE := debug
```