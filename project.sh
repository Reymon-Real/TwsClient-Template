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

TYPE="$1"
shift

# *************
# *** Logic ***
# *************

case "$TYPE" in

	--setup)
		./script/bash/setup.sh $@
		;;

	--compile)
		./script/bash/compile.sh $@
		;;

	--install)
		./script/bash/install.sh $@
		;;

	--help)
		echo "./project.sh --<operation> --<system> --<architecture> --<build system> [build system flags]"
		echo "--help Display this information"
		echo "--help={operation|system|architecture|buildsystem}"
		exit 0
		;;

	--help=operation)
		echo "Supported operations:"
		echo "    --setup"
		echo "    --compile"
		echo "    --install"
		exit 0
		;;

	--help=system)
		echo "Supported systems:"
		echo "    --linux"
		echo "    --darwin"
		echo "    --windows"
		exit 0
		;;

	--help=architecture)
		echo "Architectures supported:"
		echo "    --x86_64"
		echo "    --aarch64"
		exit 0
		;;

	--help=buildsystem)
		echo "Supported build systems:"
		echo "    --make"
		echo "    --cmake-make"
		echo "    --cmake-ninja"
		echo "    --meson"
		exit 0
		;;

	*)
		echo "./project.sh --<operation> --<system> --<architecture> --<build system> [build system flags]"
		echo "--help Display this information"
		echo "--help={operation|system|architecture|buildsystem}"
		exit 0
		;;
esac