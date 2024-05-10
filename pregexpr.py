#!/usr/bin/python3

"""
pregexpr.py
Regex replacer


"""

import sys
import re

def main():
	argc = len(sys.argv)
	#print(str(sys.argv))
	if argc<3 or argc>5:
		print('PRegex Replacer 1.0')
		print('Replaces text using a regular expression pattern and replace text (optional)')
		print('')
		print('Usage: ./pregexpr.py \"regexp\" \"text\" [replace text] [-m]')
		return

	regex = re.compile(sys.argv[1])
	text = sys.argv[2]
	replace = ''
	if argc>=4:
		replace = sys.argv[3]
	#print(regex.pattern, text, replace)

	if argc>=5 and sys.argv[4]=='-m':
		replace = '-m'
		#print(replace)

	if replace == '-m':
		match = regex.search(text)
		if match:
			print(match.group())
	else:
		print(regex.sub(replace, text))

	return

# Run the main program
main()
