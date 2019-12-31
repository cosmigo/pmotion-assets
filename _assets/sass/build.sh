#!/bin/bash

# "build.sh"                                               | v1.0.0 | 2019/12/31
# ------------------------------------------------------------------------------
# This script requires installation of the following applications:
# - Dart Sass:
#   https://github.com/sass/dart-sass
# ------------------------------------------------------------------------------

srcSCSS=styles.scss
outCSS=../../docs/css/styles.css

. ../sh/_print-funcs.sh

printBanner "Building CSS stylesheet from SCSS"

echo -e "source: \033[33;1m$srcSCSS\033[37;1m"
echo -e "output: \033[33;1m$outCSS\033[37;1m"

tmpLog=$(mktemp)
sass $srcSCSS $outCSS > $tmpLog 2>&1 || {
	printSeparator
	echo -en "\033[31;1m"
	cat $tmpLog
	printBuildFailed
	rm $tmpLog
	exit 1
}
rm $tmpLog
printBuildPassed

# EOF #
