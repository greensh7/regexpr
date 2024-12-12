# regexpr

## Contains the sources for CLI regular expression tools supporting find/replace/match in all the major languages.

### Description

Welcome aboard fellow regexp developers, padawans and regexperts alike! This is where you will find scripts which you are free to contribute to.
You can contribute by enhancing the existing sources (several need the "-m" arg for match) or simply submitting your own scripts in tests/ written in any language old or new, which you think would be amazing for other people to see.

### Instructions

- Compile each of the src/* directories that can be built, skipping all the scripts, e.g. Python pregexpr.py, JS jsregexpr, Java jregexpr.java, etc.
- Move each one in turn to the main path (../..) or setup symlinks like the scripts.
- Launch regexpr-test.sh and the output should report any missing tools or dependencies for scripts.

### Notes

Each of these regexpr tools can be used independently, and were written to accept identical regular expressions.
Several languages don't have full PCRE2 compliant regex support for lookarounds, e.g. C++ STL (see the tests/HelloWorld.sh example).
Additionally, several languages use $1 instead of \1 for first (and all) backreferences, e.g. Go, Java, etc:
```
cd src/gregexpr2
go run gregexpr2.go '(\S+)\s(\S+)' 'Hello World' '$2 $1'
```
prints:
```
World Hello
```

Regex is a powerful text processing language and often replaces using several conditionals when developing typical input validation and text parsing functions.
As seasoned regexperts know, there is no good replacements for regex negative lookbehinds and lookaheads.

My sincere hope is that these tools help coders develop code more efficiently that's clearer to read and understand in their primary language of choice.
At the very least, maybe this can serve as a simple how-to CLI code in a new language since these go far beyond simple Hello World examples.

### Contribution Guidelines

Additions should be added to the regexpr-test.sh BASH script to fully test it.
Please also add the dependency check so the script can gracefully skip the addition if a missing dependency and report why.
