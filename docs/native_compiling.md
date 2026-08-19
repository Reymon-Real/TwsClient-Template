# Native Compiling

## Meson and CMake

For meson and cmake use the script. That script manage native compiling.

Example

`./project.<ext> --setup --system=linux --arch=aarch64 --buildsys=meson --buildtype=debug`

## Make

For native compiling with make, use the options.

The option `ARCH` is for select the architecture.

### Example 1

```
ARCH      := x86_64
SYSTEM    := linux # Native system
BUILDTYPE := debug
```

### Example 2

```
ARCH      := aarch64
SYSTEM    := darwin # Native system
BUILDTYPE := debug
```

### Example 3

```
ARCH      := x86_64
SYSTEM    := windows # Native system
BUILDTYPE := debug
```