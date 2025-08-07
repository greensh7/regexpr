#!/bin/bash
########################################################################################
# $Id: Regexpr Tester  ver 1.8a
#
# USAGE:
# ./regexpr-test.sh
#
# Displays the results of removing a deinterlace video filter from various filter chain
# examples using one simple regular expression featuring grouping, alternation, etc.
#
# The Inputs section can be modified to demonstrate any unique results from
# the languages, thereby helping to write a language neutral regexp.
#
# 2023/02/01: Added Python3, Go, and Rust (std dynamic req GLIBC 2.28, 2.32-2.34), so
#             added autodetect and inform if dynamic is an option).
# 2023/02/02: Corrected the video filters to be actual; added new regex.
#             Documented lack of PCRE in Go, e.g. look-aheads, back refs, etc.
#             'BBB(((?!BBB).)*)EEE' converted to 'BBB([^B]*)EEE'
#             Added dlclark/regexp2 C# translated PCRE lib to Go.
# 2023/02/16: Added Julia which has PCRE Regex and captures.
# 2023/08/08: Changed/updated exits in language detectors to variables.
# 2024/02/13: Added the regexp2 into the Go output.
# 2024/02/25: Added the Qt/C++ lib versions to the Qt/C++ output.
# 2024/05/15: Changed the dependency check for the compiled java class to use the
#             source Luke (.java file :) Updated java source to be run in subshell for
#             java versions that don't support path to class (src/jregexpr/jregexpr).
# 2024/09/26: Reverted the java dependency check back to the class, since src no longer
#             working on RHEL8. Moved C++17 down; regex still doesn't support lookarounds.
# 2024/12/11: Bumped Qt ver to 6.8.1, moved Go dir to gregexpr2, and changed python
#             module from "re" to more advanced "regex". Updated JS to work for the
#             updated nodejs versions.
# 2025/08/06: Bumped Qt ver to 6.9.1, fixed C++, Java ver reporting
#
# Uncopyright (u)2019-2025, Shaun Green
########################################################################################

# Required for using regex alternation in BASH
shopt -s extglob

systool=`realpath "${BASH_SOURCE[0]}"`
ospath="${systool%/*}"
ver=`stat $systool | grep -Po '^Mod\D*\K[\d-]+'`
title=$(grep -Pio '\$Id:\s+\K.+' $systool)

# Usage
if [ -n "$1" ]; then
	echo "$title $ver"
	echo
	echo "Usage: regexpr-test.sh"
	echo "Launch from directory containing (gq)regexpr, etc."
	exit 0
fi

# Requirements

golang=gregexpr2
if ! command -v ./$golang >/dev/null 2>&1; then
	echo
	echo "\"$golang\" Go Regexp2 Replacer not found"
	golang=${golang%2}
	if ! command -v ./$golang >/dev/null 2>&1; then
		echo
		echo "\"$golang\" Go Regexp Replacer not found"
		golang=""
	fi
fi
Qt="Qt "
Qt+=`grep -Po '(\d+\.){2}\d+' <<< $(qmake --version)`
if ! command -v ./qregexpr >/dev/null 2>&1; then
	echo
	echo "\"qregexpr\" Qt Regexp Replacer not found"
	Qt=""
fi
Cpp=`grep -Po '\d+\.\d+\.\d+(?=[\s-])' <<< $(cc --version)`
# Check Cpp version is >= 4.9.0, the min for C++11 regex
Cpp+=$'\n'4.9.0
CppMin=`sort -r <<< "$Cpp" | head -n1`
if [ "$CppMin" != "4.9.0" ]; then
	echo "C++ regex req GCC >= 4.9.0 with min C++11 enabled"
	Cpp=""
else
	Cpp="C++ ${Cpp%%$'\n'*}"
fi
if ! command -v ./cregexpr >/dev/null 2>&1; then
	echo
	echo "\"cregexpr\" C++ Regexp Replacer not found"
	Cpp=""
fi
if ! command -v ./pregexpr.py >/dev/null 2>&1; then
	echo
	echo "\"pregexpr.py\" Python Regexp Replacer not found"
else
	# Detect which python cmd is available
	# May not be needed if this cmd is used:
	#sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 0
	if command -v python3 >/dev/null 2>&1; then
		py=`command -v python3`
	elif command -v python >/dev/null 2>&1; then
		py=`command -v python`
	else
		echo
		echo "\"python3\" or \"python\" Python package dependency not met"
	fi
fi
if ! command -v ./jlregexpr.jl >/dev/null 2>&1; then
	echo
	echo "\"jlregexpr.jl\" Julia Regexp Replacer not found"
else
	# Detect which Julia version is available
	if command -v julia >/dev/null 2>&1; then
		jl="grep -Pom1 '^\D+\K\S+' <<< `julia --version`"
	else
		echo
		echo "\"julia\" Julia package dependency not met"
	fi
fi
# Detect which javascript command is available
if command -v nodejs >/dev/null 2>&1; then
	JS=`command -v nodejs`
elif command -v node >/dev/null 2>&1; then
	JS=`command -v node`
else
	echo
	echo "\"nodejs\" or \"node\" Javascript package dependency not met"
fi
if [ -n "$JS" ] && ! command -v ./jsregexpr.js >/dev/null 2>&1; then
		echo
		echo "\"jsregexpr.js\" Javascript Regexp Replacer not found"
		JS=""
fi
if ! command -v sed >/dev/null 2>&1; then
	echo
	echo "\"sed\" Stream Editor package dependency not met"
	exit 0
fi
if ! command -v awk >/dev/null 2>&1; then
	echo
	echo "\"awk\" (GNU) AWK package dependency not met"
	exit 0
fi
Perl=perl
if ! command -v perl >/dev/null 2>&1; then
	echo
	echo "\"perl\" Perl package dependency not met"
	Perl=""
fi
Ruby=ruby
if ! command -v ruby >/dev/null 2>&1; then
	echo
	echo "\"ruby\" Ruby package dependency not met"
	Ruby=""
fi
Rust=rust
if ! command -v ./rregexpr >/dev/null 2>&1; then
	echo
	echo "\"rregexpr\" Rust Regexp Replacer not found"
	Rust=""
else
	# Detect GLIBC ver and show warning
	glibsys=`ldd --version | grep -Pom1 '^.+\s\K[\d.]+'`
	if (( `echo "2.28 >= $glibsys" | bc -l` )); then
		echo
		echo "Older GLIBC version detected; recompile a static \"rregexpr\""
	fi
fi
if ! command -v java >/dev/null 2>&1; then
	echo
	echo "\"default-jre\" OpenJDK JRE or other JRE package dependency not met"
elif java --version &> /dev/null; then
	Java=`grep -Pom1 '\d+\.[\d._b]+' <<< $(java --version)`
elif java -version &> /dev/null; then
	Java=java
fi
if [ -n "$Java" ]; then
	Java="Java ${Java%%$'\n'*}"
fi
if [ -n "$Java" ] && [ ! -s ./jregexpr.class ]; then
	echo
	echo "\"jregexpr.class\" Java Regexp Replacer not found"
	Java=""
fi


# Filters
vf[1]='vf=pp=fd:c/hb/vb/fd/c'
vf[2]='vf=pp=hb/fd:c/vb'
vf[3]='vf=pp=hb/vb/fd:c'
vf[4]='vf=pp=hb/vb/fd:c,crop'
vf[5]='vf=crop,pp=fd:c/hb/vb'
vf[6]='vf=pp=fd:c,crop'
vf[7]='vf=hue,pp=fd:c,crop'
vf[8]='vf=crop,pp=fd:c'
vf[9]='vf=pp=fd:c'
# Basic regex using alternation
rx='pp=fd:c,|\/fd:c|fd:c\/|(\/|,?(vf=)?pp=)fd:c$'
# Rust version regex (no support for escaped "/")
#rrx='pp=fd:c,|/fd:c|fd:c/|(/|,?(vf=)?pp=)fd:c$'
# Regex with positive look behind/ahead
#rx='(?<=vf=)pp=fd:c(,|\/)?|(,|\/)?(vf=)?(pp=)?fd:c(?=,|\/|$)'
#rx='(\/|,?pp=)fd:c$|pp=fd:c,|fd:c\/|\/fd:c'
#rx=',?pp=fd:c($|[^\/,])|pp=fd:c,|fd:c\/|\/fd:c'

# Filters with "\" instead of "/"
#vf[1]='vf=pp=fd:c\hb\vb\fd\c'
#vf[2]='vf=pp=hb\fd:c\vb'
#vf[3]='vf=pp=hb\vb\fd:c'
#vf[4]='vf=pp=hb\vb\fd:c,crop'
#vf[5]='vf=crop,pp=fd:c\hb\vb'
#vf[6]='vf=pp=fd:c,crop'
#vf[7]='vf=hue,pp=fd:c,crop'
#vf[8]='vf=crop,pp=fd:c'
#vf[9]='vf=pp=fd:c'
#rx='pp=fd:c,|\\fd:c|fd:c\\|(\\|,?(vf=)?pp=)fd:c$'


f=""
count=1
for f in "${vf[@]}"; do
	# vf index/filter chain
	echo
	echo "vf$count:           $f"
	#
	# vf deint filter to be removed
	#
	fr=`grep -Pom1 "$rx" <<< "$f"`
	echo "Removed:       $fr"
	#echo "Filter removed:"`./gregexpr2 "$rx" "$f" -m`
	#echo "Filter removed:"`./qregexpr -m -n "$rx" "$f"`
	#echo "Filter removed:"`./regexpr "$rx" "$f" -m`
	#echo "Filter removed: $(perl -pe "(\$_)=/($rx)/" <<< "$f")"
	# This only needs to be here for mcedit BASH code syntax if previous perl statement is used
	# The Perl match syntax seems difficult, so added a -m switch to do same.
	echo
	#
	# vf deint filter removals
	#
	# For BASH parameter expansion all "\" must be escaped in the replacement string
	fr="${fr//\\/\\\\}"
	echo "BASH ParEx:    ${f//$fr}"
	# Binary should work on most modern 64-bit Linux distros
	[ -n "$Qt" ] && echo "$Qt:      "`./qregexpr -n "$rx" "$f"`
	# Cannot handle \K (keep out of match) in regex and backticks "`" in text
	[ -n "$golang" ] && b="${golang//pr/p}" && echo "Go ${b#g}:    "`./$golang "$rx" "$f"`
	[ -n "$py" ] && echo "Python regex:  "`./pregexpr.py "$rx" "$f"`
	#echo "Python re:  "`$py -c "import re; print(re.sub(r'$rx','','$f'))"`
	[ -n "$jl" ] && echo "Julia:         "`./jlregexpr.jl "$rx" "$f"`
	[ -n "$JS" ] && echo "Javascript:    "`$JS ./jsregexpr.js "$rx" "$f"`
	[ -n "$Perl" ] && echo "Perl:          "`perl -pe "s/$rx//" <<< "$f"`
	[ -n "$Ruby" ] && echo "Ruby:          "`ruby -e "puts '$f'.gsub /$rx/, ''"`
	# Comment 3 that don't support PCRE; lookahead/behind
	[ -n "$Cpp" ] && echo "$Cpp:    "`./cregexpr "$rx" "$f"`
	echo "Sed:           "`sed -r "s/$rx//" <<< "$f"`
	echo "Awk:           "`awk '{sub(/'$rx'/,"")}; 1' <<< "$f"`
	# Comment 2 that may not support back references in the regex, e.g. '(\d)(\1+)?'
	# but also note that the references may not be \1 and use $1 instead
	[ -n "$Java" ] && echo "$Java:   "`( cd src/jregexpr; java jregexpr "$rx" "$f" )`
	[ -n "$Rust" ] && echo "Rust:          "`./rregexpr "$rx" "$f"`

	((++count))
done

exit 0
