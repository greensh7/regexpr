#!/usr/bin/python3

"""
pregexpr.py
Regex replacer 1.1

Uncopyright (u)2019-2025, Shaun Green

"""

import sys
#import re
# To use the better regex module, on Ubuntu install python3-regex
# The key features are noted on rexegg.com.
import regex

def main():
	argc = len(sys.argv)
	#print(str(sys.argv))
	if argc<3 or argc>5:
		print('PRegex Replacer 1.1')
		print('Replaces text using a regular expression pattern and replace text (optional)')
		print('')
		print('Usage: ./pregexpr.py \"regexp\" \"text\" [replace text] [-m]')
		return

	re = regex.compile(sys.argv[1])
	text = sys.argv[2]
	replace = ''
	if argc>=4:
		replace = sys.argv[3]
	#print(re.pattern, text, replace)

	if argc>=5 and sys.argv[4]=='-m':
		replace = '-m'
		#print(replace)

	if replace == '-m':
		match = re.search(text)
		if match:
			print(match.group())
	else:
		print(re.sub(replace, text))

	return

# Run the main program
main()
