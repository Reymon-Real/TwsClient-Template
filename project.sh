#!/bin/bash
#############################
### Autor: Reymon Dev     ###
### Datum: 26. Juli. 2026 ###
### Aktua: 26. Juli. 2026 ###
### Lizenz: MIT           ###
#############################

###################
### Environment ###
###################

shopt -s extglob

#################
### Variables ###
#################

ARCH=""
FLAGS=""
CROSS="false"
SYSTEM=""
BUILDSYS=""
BUILDDIR=""
SOURCEDIR="."
BUILDTYPE=""
OPERATION=""
OPTIMIZATION=""

######################
### Argument Error ###
######################

if [[ $# -eq 0 ]]; then

	echo ""
	echo "Example:"
	echo "    ./project --setup --system=linux --arch=x86_64 --buildsys=meson --buildtype=debug"
	echo ""
	echo "--setup                   Generate project"
	echo "--compile                 Compile project"
	echo "--clean                   Clean project"
	echo "--sourcedir=<path>        Enter the source directory (only for cmake)"
	echo "--system=<system>         Select the system"
	echo "--arch=<architecture>     Select objetive architecture to compile"
	echo "--buildsys=<build system> Select meson, cmake or make"
	echo "--buildtype=<type>        Select release or debug"
	echo "--optimization=<level>    Select optimization level"
	echo "--cross=<boolean>         If true is cross compile. By default is false"
	echo ""
	echo "Any flag not included in this group is, by default, considered a build system flag"
	echo ""
	exit 0
fi

#########################
### Process arguments ###
#########################

while [[ $# -gt 0 ]]; do

	case "$1" in

		--@(setup|compile|clean))
			OPERATION="${1#--}"
		;;

		--sourcedir=*)
			SOURCEDIR="${1#--sourcedir=}"
		;;

		--system=@(windows|linux|darwin))
			SYSTEM="${1#--system=}"
		;;

		--arch=@(x86_64|aarch64))
			ARCH="${1#--arch=}"
		;;

		--buildsys=@(make|meson|cmake-make|cmake-ninja))
			BUILDSYS="${1#--buildsys=}"
		;;

		--buildtype=@(debug|release))
			BUILDTYPE="${1#--buildtype=}"
		;;

		--optimization=@(debug|release))
			OPTIMIZATION="${1#--optimization=}"
		;;

		--cross=@(true|false))
			CROSS="${1#--cross=}"
		;;

		*)
			FLAGS="$FLAGS $1"
		;;
	esac

	shift 1

done

#######################
### Create Builddir ###
#######################

BUILDDIR="./build/$BUILDTYPE/$SYSTEM/$ARCH/${BUILDSYS//-/\/}"

####################
### Optimization ###
####################

if [ "$OPTIMIZATION" = "" ]; then

	if [ "$BUILDSYS" = "meson" ]; then

		case "$BUILDTYPE" in

			debug)
				OPTIMIZATION="g"
			;;

			release)
				OPTIMIZATION="3"
			;;

		esac
	
	elif [ "${BUILDSYS%-*}" = "cmake" ]; then

		case "$BUILDTYPE" in

			debug)
				OPTIMIZATION="-Og"
			;;

			release)
				OPTIMIZATION="-O3"
			;;

		esac

	fi

fi

############################
### Normalize Build type ###
############################

if [ "${BUILDSYS%-*}" = "cmake" ]; then

	case "$BUILDTYPE" in

		debug)
			BUILDTYPE="Debug"
		;;

		release)
			BUILDTYPE="Release"
		;;

	esac

fi

#########################
### Select Cross file ###
#########################

if [ "$CROSS" = "true" ]; then

	case "$BUILDSYS" in

		meson)
			CROSS="--cross-file ./config/$BUILDSYS/$ARCH/$SYSTEM.meson"
		;;

		cmake-*)
			CROSS="-DCMAKE_TOOLCHAIN_FILE=./config/${BUILDSYS%-*}/$ARCH/$SYSTEM.cmake"
		;;

	esac

elif [ "$CROSS" = "false" ]; then

		case "$BUILDSYS" in

		meson)
			CROSS="--native-file ./config/$BUILDSYS/$ARCH/$SYSTEM.meson"
		;;

		cmake-*)
			CROSS="-DCMAKE_TOOLCHAIN_FILE=./config/${BUILDSYS%-*}/$ARCH/$SYSTEM.cmake"
		;;

	esac

fi

##################
### Operations ###
##################

if [[ "$OPERATION" == "setup" ]]; then

	case "$BUILDSYS" in

		make)
			make setup $FLAGS BUILDDIR="$BUILDDIR" SYSTEM="$SYSTEM" ARCH="$ARCH" BUILDTYPE="$BUILDTYPE" OPTIMIZATION="$OPTIMIZATION" 
		;;

		meson)
			meson setup "$BUILDDIR" $FLAGS --buildtype "$BUILDTYPE" --optimization "$OPTIMIZATION" $CROSS
		;;
		
		cmake-make)
			cmake -S "$SOURCEDIR" -B "$BUILDDIR" $FLAGS -DCMAKE_BUILD_TYPE="$BUILDTYPE" -DCMAKE_C_FLAGS="$OPTIMIZATION" -DCMAKE_CXX_FLAGS="$OPTIMIZATION" $CROSS
		;;
		
		cmake-ninja)
			cmake -S "$SOURCEDIR" -B "$BUILDDIR" $FLAGS -DCMAKE_BUILD_TYPE="$BUILDTYPE" -DCMAKE_C_FLAGS="$OPTIMIZATION" -DCMAKE_CXX_FLAGS="$OPTIMIZATION" $CROSS
		;;
	esac

elif [[ "$OPERATION" == "compile" ]]; then

	case "$BUILDSYS" in
		make)
			make $FLAGS BUILDDIR="$BUILDDIR" SYSTEM="$SYSTEM" ARCH="$ARCH" BUILDTYPE="$BUILDTYPE" OPTIMIZATION="$OPTIMIZATION" 
		;;

		meson)
			ninja -v -C "$BUILDDIR" $FLAGS
		;;
		
		cmake-make)
			make -C "$BUILDDIR" $FLAGS
		;;
		
		cmake-ninja)
			ninja -v -C "$BUILDDIR" $FLAGS
		;;
	esac

elif [[ "$OPERATION" == "clean" ]]; then

	case "$BUILDSYS" in
		make)
			make clean $FLAGS BUILDDIR="$BUILDDIR" SYSTEM="$SYSTEM" ARCH="$ARCH" BUILDTYPE="$BUILDTYPE" OPTIMIZATION="$OPTIMIZATION" 
		;;

		meson)
			ninja -v -C "$BUILDDIR" $FLAGS -t clean
		;;
		
		cmake-make)
			make -C clean "$BUILDDIR" $FLAGS
		;;
		
		cmake-ninja)
			ninja -v -C "$BUILDDIR" $FLAGS -t clean
		;;
	esac

fi