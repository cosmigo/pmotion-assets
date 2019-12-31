#!/bin/bash

# "docs_src/build.sh"                                      | v1.0.0 | 2019/12/31
# ------------------------------------------------------------------------------
# By Tristano Ajmone, released into the public domain via the Unlicense.
# ------------------------------------------------------------------------------
# Converts every "*.asciidoc" file in the repository to an HTML document in the
# "/docs/" target folder.
# ------------------------------------------------------------------------------
# This script requires installation of the following applications:
#
#     Asciidoctor (Ruby gem):
#     https://asciidoctor.org
#
#     Highlight >= 3.51:
#     http://www.andre-simon.de
# ------------------------------------------------------------------------------

# Settings
# ========
assetsDir=../_assets
outDir=../docs
imgDir=img
HamlDir=$assetsDir/haml
docinfoDir=$assetsDir/adoc
HLTreeProcessor=$assetsDir/adoc/highlight-treeprocessor_mod.rb

# Highlight Set-up
# ================
# We need to override Highlight default settings and langDefs with our custom
# versions, and make visible any other custom scripts inside ../_assets/hl/.
export HIGHLIGHT_DATADIR="$(pwd)/$assetsDir/hl"

. ${assetsDir}/sh/_print-funcs.sh

# Show Build Banner and Info
# ==========================
printBanner "Building Project Documents from AsciiDoc to HTML"

# Get Dependencies Version Info
# -----------------------------
vHighlight=$(highlight --version | grep -o -m1 -E '[0-9]\.[0-9][0-9]')
vAsciidoctor=$(asciidoctor --version | grep -o -m1 -E '[0-9]\.[0-9]+\.[0-9]+')
vRuby=$(ruby --version | grep -o -m1 -E '[0-9]\.[0-9]+\.[0-9]+')

echo -e "\n\033[37;1mDependencies version info:"
echo -e "\033[31;1m *\033[35m Ruby v$vRuby"
echo -e "\033[31;1m *\033[35m Asciidoctor v$vAsciidoctor"
echo -e "\033[31;1m *\033[35m Highlight v$vHighlight"

# 1. Build HTML Document
# ======================
printHeading1 "Build HTML Documents"
echo -e "\033[37;1mConverting AsciiDoc sources to HTML document in: \033[33;1m$outDir/\033[0m"
echo -e "\033[31;1m *\033[0m Custom Haml HTML5 templates."
echo -e "\033[31;1m *\033[0m Syntax highlighting via Highlight (no JS dependencies)."

# The conversion script must "flatten out" all relative paths to other project
# documents, for in the "docs/" folder the original subfolders structure is
# flattened out. Documents use custom attributes to define relative path to
# other project folders; this is the full list of these attributes, which must
# be overridden to empty strings via CLI options:
#
# 	* `path_plugins`

tmpLog=$(mktemp)
for doc in $(find ../ -name '*.asciidoc'); do
	printHeading2 "Converting: \033[33;1m$doc\033[0m"
	asciidoctor \
		--failure-level WARN \
		--timings \
		--verbose \
		--safe-mode unsafe \
		-a experimental \
		-a icons=font \
		-a sectanchors \
		-a toc=left \
		-a reproducible \
		-a docinfo=shared-head \
		-a docinfodir=$docinfoDir \
		-a source-highlighter=highlight \
		-a path_plugins \
		-a imagesdir=$imgDir \
		--require      		$HLTreeProcessor \
		--template-dir 		$HamlDir \
		--destination-dir 	$outDir \
		--base-dir ./ \
			$doc > $tmpLog 2>&1 || {
				echo -en "\033[31;1m"
				cat $tmpLog
				printBuildFailed
				rm $tmpLog
				exit 1
				}
	echo -en "\033[30;1m"
	cat $tmpLog
	printSeparator
	echo -e "\033[32;1m/// conversion succeeded ///\033[0m"
done
rm $tmpLog

printBuildPassed
exit

# EOF #
