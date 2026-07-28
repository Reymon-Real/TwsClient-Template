#!/bin/bash
# *****************************
# *** Autor: Reymon Dev     ***
# *** Datum: 26. Juli. 2026 ***
# *** Aktua: 26. Juli. 2026 ***
# *** Lizenz: MIT           ***
# *****************************

# *****************
# *** Variables ***
# *****************

SYSTEM="$1"
ARCH="$2"
TOOL="$3"
PREFIX="/usr/local"

# *************
# *** Logic ***
# *************

case "$TOOL" in

	--make)
		BUILDDIR="./build/make"
		;;

	--cmake-make)
		BUILDDIR="./build/cmake/make"
		NATIVEDIR="./config/cmake"
		;;

	--cmake-ninja)
		BUILDDIR="./build/cmake/ninja"
		NATIVEDIR="./config/cmake"
		;;

	--meson)
		BUILDDIR="./build/meson"
		NATIVEDIR="./config/meson"
		;;

	*)
		echo "Build system $TOOL don't supported"
		echo "Supported build systems:"
		echo "    --make"
		echo "    --cmake-make"
		echo "    --cmake-ninja"
		echo "    --ninja"
		exit 0
		;;

esac

case "$SYSTEM" in

	--linux)
		BUILDDIR="$BUILDDIR/linux"
		NATIVEDIR="$NATIVEDIR/linux"
		;;

	--darwin)
		BUILDDIR="$BUILDDIR/darwin"
		NATIVEDIR="$NATIVEDIR/darwin"
		;;

	--windows)
		BUILDDIR="$BUILDDIR/windows"
		NATIVEDIR="$NATIVEDIR/windows"
		;;

	*)
		echo "System $SYSTEM don't supported"
		echo "Supported systems:"
		echo "    --linux"
		echo "    --darwin"
		echo "    --windows"
		exit 0
		;;
esac

case "$ARCH" in

	--x86_64)
		BUILDDIR="$BUILDDIR/x86_64"
		NATIVE_FILE="$NATIVEDIR/x86_64"
		;;

	--aarch64)
		BUILDDIR="$BUILDDIR/aarch64"
		NATIVE_FILE="$NATIVEDIR/aarch64"
		;;

	*)
		echo "Architecture $ARCH don't supported"
		echo "Architecture supported:"
		echo "    --x86_64"
		echo "    --aarch64"
		exit 0
		;;

esac

shift 3

case "$TOOL" in

	--make)
		make setup $@ TGT="$ARCH"
		;;

	--cmake-make)
		cmake -S . -B "$BUILDDIR" $@ -DCMAKE_TOOLCHAIN_FILE="$NATIVE_FILE.cmake"
		;;

	--cmake-ninja)
		cmake -S . -B "$BUILDDIR" $@ -DCMAKE_TOOLCHAIN_FILE="$NATIVE_FILE.cmake" -G Ninja
		;;

	--meson)
		meson setup "$BUILDDIR" $@ --prefix="$PREFIX" --native-file "$NATIVE_FILE.meson"
		;;

esac