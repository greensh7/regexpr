#!/bin/bash
#
# jlregexpr.jl
# Regex replacer 1.0
#
# Uncopyright (u)2019-2024, Shaun Green
#

#=
exec julia --color=yes --startup-file=no -e 'include(popfirst!(ARGS))' \
    "${BASH_SOURCE[0]}" "$@"
=#

#@show ARGS  # put any Julia code here
#run(pipeline(`ls`, "files.txt"))

argc = length(ARGS)
if argc<2 || argc>4
	println("Jlregexp Replacer 1.0")
	println("Replaces text using a regular expression pattern and replace text (optional)")
	println("")
	println("Usage: ./jlregexpr.jl \"regexp\" \"text\" [replace text] [-m]")
	exit()
end

re = Regex(ARGS[1])
text = ARGS[2]
Replace = ""
if argc >= 3
	global Replace = ARGS[3]
end
#println(re, " ", text, " ", Replace)

if argc >= 3 && ARGS[3] == "-m"
	global Replace = "-m"
end

if Replace == "-m"
	if occursin(re, text)
		println(match(re, text).match)
	end
else
	println(replace(text, re => Replace))
end

exit()
